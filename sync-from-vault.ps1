# sync-from-vault.ps1
# Copies the PUBLIC subset of the Obsidian vault into content/ for Quartz to publish.
# The vault is the single source of truth — edit there, then re-run this script.
#
# What stays private (never copied): Logistics/, Outreach/, Sources/, Home.md,
# and anything in $excludeFiles below.

$vault   = "C:\Users\csvau\OneDrive\Desktop\mathemalchemy"
$site    = $PSScriptRoot
$content = Join-Path $site "content"

$publicFolders = @("About", "Scenes", "Math Topics", "Docent Program")

# Files inside public folders that must NOT be published
$excludeFiles = @(
    "Silhouettes Banner Puzzle.md"   # contains the decoded banner message (spoiler)
)

# Vault notes that exist only privately — wikilinks to them get converted to plain text
$privateNotes = @(
    "Contacts", "MCCC Hosting", "ICM 2026 Philadelphia", "Campus Outreach Ideas",
    "Conference Presentation", "Student Volunteers", "Silhouettes Banner Puzzle",
    "Banner Decoding Activity", "Source - EntreEd Docent Guide", "Source - Mathemalchemy Website",
    "Docent Guide - PDF Pack"
)

if (Test-Path $content) { Remove-Item $content -Recurse -Force }
New-Item -ItemType Directory $content | Out-Null

foreach ($f in $publicFolders) {
    Copy-Item (Join-Path $vault $f) -Destination (Join-Path $content $f) -Recurse
}
foreach ($e in $excludeFiles) {
    Get-ChildItem $content -Recurse -Filter $e | Remove-Item -Force
}

$utf8NoBom = New-Object System.Text.UTF8Encoding($false)
foreach ($file in (Get-ChildItem $content -Recurse -Filter *.md)) {
    $t = [System.IO.File]::ReadAllText($file.FullName)

    # --- strip %%Obsidian comments%% ----------------------------------------
    # Quartz removes these from the rendered HTML, but the raw markdown in this
    # PUBLIC repo would otherwise expose them. Remove here so the source is safe
    # too. (?s) lets . match newlines, so multi-line %% ... %% blocks are caught.
    $t = $t -replace '(?s)%%.*?%%', ''
    # tidy up: drop lines left blank by a removed block; collapse 3+ newlines to 2
    $t = $t -replace "(?m)^[ \t]+$", ''
    $t = $t -replace "(\r?\n){3,}", "`n`n"

    # --- remove personal contact details ------------------------------------
    $t = $t -replace ' \(smpezzimenti@widener\.edu[^)]*\)', ''
    $t = $t -replace ' \(fayeg@ix\.netcom\.com[^)]*\)', ''
    $t = $t -replace ' \*\*In contact; volunteered for MCCC\*\* → \[\[Contacts\]\]\.?', ''

    # --- drop trailing "→ [[private note]]" pointers cleanly ----------------
    foreach ($p in $privateNotes) {
        $pe = [regex]::Escape($p)
        $t = $t -replace " — see \[\[$pe\]\]", ''
        $t = $t -replace " → \[\[$pe\]\](, \[\[$pe\]\])*", ''
        $t = $t -replace "\[\[$pe\]\], ", ''
        $t = $t -replace ", \[\[$pe\]\]", ''
    }

    # --- convert any remaining private wikilinks to plain text --------------
    foreach ($p in $privateNotes) {
        $pe = [regex]::Escape($p)
        $t = $t -replace "\[\[$pe\|([^\]]+)\]\]", '$1'
        $t = $t -replace "\[\[$pe\]\]", $p
    }

    # vault Home.md is private; the site has its own index page
    $t = $t -replace '\[\[Home\|([^\]]+)\]\]', '$1'
    $t = $t -replace '\[\[Home\]\] scene table', 'scene table on the [[index|home page]]'
    $t = $t -replace '\[\[Home\]\]', 'the [[index|home page]]'

    [System.IO.File]::WriteAllText($file.FullName, $t, $utf8NoBom)
}

# Public-only pages maintained in this repo (homepage, credits)
Copy-Item (Join-Path $site "publish-extras\*") -Destination $content -Recurse -Force

# --- safety net: abort if anything that looks like an email survived --------
$leaks = Get-ChildItem $content -Recurse -Filter *.md |
    Select-String -Pattern '[\w.+-]+@[\w.-]+\.[A-Za-z]{2,}'
if ($leaks) {
    $leaks | ForEach-Object { Write-Warning $_.ToString() }
    throw "PRIVATE DATA LEAK: email-like text found in public content. Sync aborted — fix the vault or add a scrub rule."
}

# --- safety net: abort if any %% comment marker survived --------------------
$commentLeaks = Get-ChildItem $content -Recurse -Filter *.md |
    Select-String -Pattern '%%'
if ($commentLeaks) {
    $commentLeaks | ForEach-Object { Write-Warning $_.ToString() }
    throw "PRIVATE DATA LEAK: %% comment marker found in public content. Sync aborted — check the strip rule."
}

$count = (Get-ChildItem $content -Recurse -Filter *.md).Count
Write-Output "Synced $count public pages into content/"
