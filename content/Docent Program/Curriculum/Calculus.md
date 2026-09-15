---
tags: [docent]
---
# Calculus

Part of [[Docent Program/Curriculum/index|Curriculum Connections]]. Where the infinite
series unit of Calculus 2 shows up in the exhibit — first on Tess's path, then in the two
Ball Arches.

## Tess the Tortoise and the geometric series

[[Tess the Tortoise]] walks Zeno's Path every day. Zeno's dichotomy paradox says she can
never finish: to reach the end she must first get halfway, then halfway through what
remains, then halfway through what remains after that — infinitely many tasks, each one
waiting on the last → [[Zeno's Paradoxes and Limits]]. Add the pieces up and the paradox
becomes a sum:

$$
\frac12+\frac14+\frac18+\cdots=1
$$

After $n$ halvings Tess has covered $1-\tfrac{1}{2^n}$ of the path. The distance still to
go is always exactly the length of the step she just took, so it never reaches zero, and
yet every point short of the end is eventually passed. That is what it means for the
infinite sum to *be* 1 — the limit of the partial sums. The creators' own
[page on Tess](https://mathemalchemy.org/2022/01/11/math-connections-tortoise/) makes the
careful distinction: the infinite list of halves is equivalent to the walk
"mathematically (but not philosophically)."

Tess's sum is the simplest geometric series, with first term $a=\tfrac12$ and ratio
$r=\tfrac12$. Every geometric series with $|r|<1$ behaves the same way:

$$
a+ar+ar^2+\cdots=\frac{a}{1-r}
$$

The same page poses a question about the path itself: **can you detect a relationship
between the area of the stones, the length of each cluster of stones, and the location of
the clusters along the path?**

The same arithmetic runs the Koch snowflakes in [[The Cavalcade]], with a twist. Each stage
replaces every edge with four edges a third as long, so the perimeter is multiplied by
$\tfrac43$ at every step and grows without bound. The area added at each step, though, is
only $\tfrac49$ of the area added at the step before — a geometric series with ratio less
than 1 — so the snowflake encloses a finite area, exactly $\tfrac85$ of the triangle it
started from. Infinite boundary, finite inside → [[Fractals and Self-Similarity]]. Keep
that pairing in mind, because the arches do it too.

## The Ball Arches

The [[Ball Arches]] are two arches of thread-wrapped temari balls. They share one physical
sphere as their first ball, their second balls match by design, and from the third ball on
they part ways: the short arch reaches up, and the long arch dives into the bay. On both
arches the balls shrink toward nothing.

**The short arch is Tess's series again, with a different ratio.** Each ball is
$(4/5)^{2/3}\approx0.862$ times the one before, so the balls laid end to end come to

$$
\frac{d_1}{1-(4/5)^{2/3}}\approx7.23\ \text{first-ball diameters}
$$

however many balls there are — infinitely many fit in a finite length.

**The long arch shrinks too slowly to stop.** Its diameters fall off like $1/n^{2/3}$, a
$p$-series with $p=\tfrac23\le1$, so its total length is infinite. Its balls go to zero
just as surely as the short arch's do, and it makes no difference: terms shrinking to
nothing is necessary for a sum to be finite, never sufficient. Nothing about any single
ball tells you which arch it belongs to. You have to add them up.

**Then the volume.** A ball's volume goes as the cube of its diameter, which turns the long
arch's $1/n^{2/3}$ into $1/n^2$ — and $\sum 1/n^2$ converges, to the Basel sum
$\pi^2/6$. So the infinitely long arch holds a finite volume, about 4.54 times the volume
of its first ball, while the short arch holds exactly $\tfrac{25}{9}\approx2.78$ first-ball
volumes. (These are volumes of ideal solid spheres — a statement about the mathematics, not
about how much yarn is on the arch.) The arch that never ends holds only about 1.6 times as
much as the arch that stops. As with the snowflake, two measurements of the same objects
give opposite answers.

The full derivation — the two diameter formulas, both length series, and both volume sums
worked out exactly — is in
**[[Ball Arches and Infinite Series.pdf|Ball Arches and Infinite Series (PDF)]]**.

The exhibit is not a proof. The long arch shows 100 balls and the short one a couple of
dozen; they illustrate a limit rather than establish one. That distinction is itself worth
raising with students, since "I can see it" is exactly the move analysis exists to
discipline.

## But let them wander

This is a map of where *your* topics live, not a route to march through. Point out the
two arches and the one shared ball at their base, ask which one has a top, and then let
students loose. The best conversation about convergence is usually the argument they have
with each other before anyone tells them the answer.
