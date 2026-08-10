---
tags: [scene]
math: [frieze-groups, symmetry]
verified-against-official-site: false
---
# Frieze Tables

**Math:** [[Frieze Groups]] · [[Tessellations and Wallpaper Groups]] (2D cousin)
**Official page:** https://mathemalchemy.org/2024/05/14/frieze-tables-mathematical-connections/

## What it is
Tables whose border designs demonstrate **frieze patterns** — designs that repeat infinitely along a strip. In one color there are exactly **seven** ways to do it (the seven frieze groups). Let the motif swap between two colors and the count rises to **seventeen**, and it's those seventeen the tables show, worked in a **mouse motif**: the Symmetry Mice reproducing themselves in black and white down the border, so that a reflection or rotation can also flip the color.

**Not the famous seventeen.** The 17 **wallpaper groups** are a different result that happens to share the number: they count the ways a pattern can repeat across a whole **plane**, in one color. A frieze repeats in **one** direction, wallpaper in **two**. The installation shows both, and the Symmetry Mice appear in each role — as borders here, and as wallpaper on the knitted walls of [[Mandelbrot Bakery]] and the mats on [[The Terrace]]. The counts to hold onto are **7 for a strip and 17 for a plane** → [[Tessellations and Wallpaper Groups]].

## Conway's silly walks
**[John H. Conway](https://en.wikipedia.org/wiki/John_Horton_Conway)** — the mathematician behind the exhibit's [[The Curio Shop|Conway's Curios]] scene — named the seven one-color [frieze groups](https://en.wikipedia.org/wiki/Frieze_group) after kinds of walking, and the official page draws each one as a track of footprints. Its wording is his register exactly: labels taken from *"varieties of silly walk: hopping, stepping, sidling, jumping, and so forth."*

The point of the names is that you can perform them. Every border that repeats along a strip is one of these seven, so a walk you can do with your own feet is also a complete catalogue of the possibilities.

## The catalogue of seven

| Walk | Do this | What the motif does | Symmetry beyond sliding | Notation |
|---|---|---|---|---|
| **Hop** | Hop along on one foot | slides along unchanged | none | p1 |
| **Step** | Walk normally — left, right, left | glide reflection | glide | p11g |
| **Sidle** | Face the wall, move sideways | mirrors across a line cutting the strip | vertical mirrors | p1m1 |
| **Jump** | Both feet together, straddling the line of travel | mirrors across the line of travel | horizontal mirror | p11m |
| **Spinning hop** | Hop, half-turning between landings | rotates 180° | rotation | p2 |
| **Spinning sidle** | Sidle, half-turning between placements | glide plus vertical mirrors | rotation and vertical mirrors | p2mg |
| **Spinning jump** | Jump, half-turning between landings | vertical and horizontal mirrors together | rotation and both mirrors | p2mm |

The last column is the standard crystallographic naming for the seven groups. It appears nowhere on the tables and is there only so the groups can be looked up elsewhere.

**Why there is no "spinning step."** Four base walks and one "spinning" modifier ought to give eight names, and Conway's list has seven. Try to build the missing one: walk an ordinary left-right-left, but half-turn between placements, and look at the track you have drawn. A glide reflection combined with a half-turn forces mirror lines across the strip into existence whether you wanted them or not — so the spinning step *is* the spinning sidle. The eighth walk isn't missing; it cannot be built.

**Which of the seven is your own walk down the hallway?**

Footprint diagrams and the two-color mouse patterns are on the official page linked above.

## Key vocabulary
- **Frieze group** — classification of patterns repeating in exactly one direction; there are exactly 7 → [[Frieze Groups]].
- **Translation** — slide along the line without rotating or flipping.
- **Reflection** — flip across a line (mirror). Across a line *cutting* the strip gives a sidle; across the strip's own centre line gives a jump.
- **[Glide reflection](https://en.wikipedia.org/wiki/Glide_reflection)** — slide and flip together, neither one alone. Ordinary walking: your left footprint is your right footprint moved forward and mirrored.

