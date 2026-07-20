---
tags: [docent, activity, cryptography, puzzle]
scene: "[[Cryptography Quilt]]"
---
# Activity: Decode the Ring

Circling the [[Cryptography Quilt]]'s padlock is a ring of colored squares — three shades of blue, standing in for a number system most visitors have never used: **ternary (base 3)**. It hides a genuine message, and the exhibit's own official worksheet walks you through cracking it. *(No spoilers on this page — the message is not printed anywhere on this site.)*

## The hook (docent script)
> "Our number system has a ones place, a tens place, a hundreds place. This code only has three digits total — 0, 1, 2 — so instead of a tens place, it has a *threes* place. Ready to build a whole new number system from scratch?"

## How the code works
- **Ternary (base 3):** instead of ones/tens/hundreds, ternary has a ones place, a **threes** place, a **nines** place, and a **27s** place. Example: ternary `201` = 2×9 + 0×3 + 1×1 = 19 in decimal.
- **The alphabet key:** A = 1, B = 2, … Z = 26 — every letter becomes a decimal number, then a 3-digit ternary number. 000 through 222 covers 27 possible combinations, just enough for the whole alphabet.
- **The colors:** three shades of blue stand for the ternary digits — light = 0, medium = 1, dark = 2.
- **Spaces:** white squares mark the gaps between words.

## Classroom activity (20–30 min) — official worksheet
Materials: the official **[Decoding the Ternary Message worksheet](https://mathemalchemy.org/wp-content/uploads/2025/07/Decoding-the-Ternary-Message-Worksheet.pdf)** (mathemalchemy.org), pencils.
1. **Build the number system** (5 min): work the ternary/decimal conversion example together on the board.
2. **Build the decoder dictionary** (10 min): fill in the worksheet's A–Z table — decimal, ternary, and the matching 3-color pattern for each letter. (The sheet pre-fills a few rows as a check.)
3. **Read the ring** (10–15 min): using the finished dictionary, decode the message circling the padlock, square by square, starting at the top. White squares mark spaces between words.
4. **Debrief:** what made ternary harder or easier than binary? (Fewer digits to choose from than decimal, but more digits needed per number than binary.)

## Why this activity earns its spot
Almost everyone has an intuition for binary once they've seen it, but almost nobody has built a base-3 number system from scratch — this activity makes visitors invent an entire alphabet before they can read a single word. → [[Decode the Padlock]] hides a second message on the same object, in the base you already know.

## Materials
Official worksheet (linked above). Answer key available from the docent coordinator.

