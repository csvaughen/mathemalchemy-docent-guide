---
tags: [docent]
---
# Calculus

Part of [[Docent Program/Curriculum/index|Curriculum Connections]]. Where the ideas of a
first-year calculus sequence — and especially the infinite series unit of Calculus 2 —
show up in the exhibit.

## Why this trip counts

The series unit is where calculus stops being about slopes and areas and starts being
about infinity, and it is where students most reliably lose their footing. The
sticking point is almost always the same: they believe that if the terms of a sum shrink
to nothing, the sum must be finite. It is false, every textbook says so, and the counter­
example on the page never quite lands because it is just more symbols.

The [[Ball Arches]] are that counterexample built out of wool and hung from a ceiling. Two
arches of thread-wrapped balls spring from a single shared sphere. On both, the balls
shrink toward nothing. One of them tops out at a height it will never exceed; the other
would run out of the building, out of the solar system, out of the galaxy. Nothing about
any individual ball tells you which arch you are looking at. A student who has stood in
front of those two arches has somewhere to put the idea.

The rest of the exhibit supplies limits, geometric series and improper integrals besides.
No preparation is needed — but a class that has already met series will get more out of
the arches than one that has not.

## Where your topics show up

| Concept | Scene | What to point out |
|---|---|---|
| **Sequences and limits** | [[Ball Arches]] · [[Tess the Tortoise]] | Ball diameters form a sequence tending to 0. Zeno's Path is a sequence of steps whose lengths halve — the tortoise's whole journey is a limit taken in public. |
| **Convergent vs divergent series** | [[Ball Arches]] | The short arch converges; the long arch diverges. Both are made of balls shrinking to nothing. This is the single best object in the exhibit for a calculus class. |
| **The nth-term test, and its converse failing** | [[Ball Arches]] | Terms going to zero is *necessary but not sufficient*. The two arches differ in exactly this way and in no visible way at all. |
| **Geometric series** | [[Ball Arches]] · [[Tess the Tortoise]] | The short arch is geometric with ratio (4/5)^(2/3) ≈ 0.862, so its total is d₁/(1−r) ≈ 7.235 first-ball diameters. Zeno's ½ + ¼ + ⅛ + ⋯ = 1 is the classroom favourite, walked daily by a tortoise. |
| **p-series and the integral test** | [[Ball Arches]] | The long arch's diameters go as (n+3)^(−2/3): a p-series with p = 2/3 ≤ 1. The integral test also gives the growth rate, about 3·4^(2/3)·N^(1/3), so doubling the arch takes eight times the balls. |
| **The ratio test, including when it fails** | [[Ball Arches]] | Decisive on the short arch (L ≈ 0.862 < 1); **inconclusive** on the long arch, where L = 1. Two objects, one test, one answer and one shrug. |
| **Comparison tests** | [[Ball Arches]] | The long arch's balls are term-by-term larger than the harmonic series, so it diverges because the harmonic series does. |
| **Improper integrals; finite volume, infinite extent** | [[Ball Arches]] | The long arch is infinitely long, yet the material in it converges — the Gabriel's horn paradox, with the Basel sum π²/6 sitting three terms in. See the caution below before using this one. |
| **Fractals and self-similarity** | [[The Cavalcade]] · [[Mandelbrot Bakery]] | Koch snowflakes and the Mandelbrot set: infinite perimeter bounding finite area, the same paradox in a different costume → [[Fractals and Self-Similarity]]. |

## The derivation, standing in front of the object

The official text for the arches makes the geometric-series argument **as a picture**, and
it is worth stealing for class. Lay the first 30 balls of the short arch out in a row and
call the total length L₃₀. Now draw that same row again, every circle scaled by the ratio
r, and slide the copy right by one first-ball diameter.

Because scaling a ball by r turns it into the next ball, the copy is balls 2 through 31.
So the copy is the original **with the first disk removed and one tiny disk added at the
far end**. Both rows finish at the same place, which is an equation:

    d₁ + r·L₃₀ = L₃₀ + d₃₁

Collect terms and you have the finite geometric sum:

    L₃₀ = (d₁ − d₃₁) / (1 − r)

That is the familiar "multiply by r and subtract" derivation of

    Sₙ = a(1 − rⁿ)/(1 − r)

with the subtraction done by sliding one picture along another. Then let the number of
balls grow: the leftover sliver d₃₁ shrinks to nothing, and L climbs to d₁/(1−r) without
ever reaching past it. Students who have only ever seen the algebraic version tend to find
the sliding-picture version clarifying, because the term that "cancels" is a disk they can
point at.

## Two cautions before you use this in class

**The exhibit is not a proof.** The arches show finitely many balls — 100 on the long arch
and a couple of dozen on the short one. They illustrate a limit; they do not establish one.
That distinction is itself worth raising with students, since "I can see it" is exactly the
move analysis exists to discipline.

**Do not compute the thread.** The balls are styrofoam cores wrapped in yarn and thread,
not solid wool, so the tempting "infinite length, finite volume" calculation does not
describe the physical object. The Gabriel's horn idea is sound and the arch is a fine
prompt for it, but keep the paradox about the mathematics rather than claiming a number
for how much thread is on the arch.

## Ready-made activities

The arches do not currently have a gallery activity in the [[Activities Index]] — the
scene rewards standing and arguing rather than working a worksheet. If you want something
in hand, the strongest classroom follow-up is to have students derive the 7.235 figure
themselves from the ratio, then check it against the shape of the arch in front of them.

## But let them wander

This is a map of where *your* topics live, not a route to march through. Point out the
two arches and the one shared ball at their base, ask which one has a top, and then let
students loose. The best conversation about convergence is usually the argument they have
with each other before anyone tells them the answer.
