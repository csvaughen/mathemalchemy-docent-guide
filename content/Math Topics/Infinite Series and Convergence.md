---
tags: [math-topic]
---
# Infinite Series and Convergence

**In the exhibit:** [[Ball Arches]] (two arches, one convergent and one divergent) ·
[[Tess the Tortoise]] (Zeno's geometric series along the path)

A **series** adds up the terms of an infinite sequence. It **converges** when the running
totals settle toward a finite limit, and **diverges** when they don't. The geometric
series is the friendly case: Σ rⁿ converges to 1/(1−r) whenever |r| < 1, and that formula
is exact, not an approximation.

## The trap, and the exhibit's answer to it
The natural guess is that a sum must be finite whenever its terms shrink to nothing. It is
false, and the **[[Ball Arches]]** are built to show it. Both arches are made of balls
shrinking toward zero. One reaches a finite height it never exceeds; the other would climb
forever if there were room. Nothing you can see about an individual ball tells you which
arch you are looking at — you have to add them up.

Terms shrinking to zero is **necessary** for convergence but nowhere near **sufficient**.

The standard counterexample is the **harmonic series**,

    1 + 1/2 + 1/3 + 1/4 + 1/5 + ⋯

whose terms plainly go to zero and whose total has no ceiling whatsoever. It passes any
number you name, eventually. "Eventually" is doing a great deal of work here: it takes
12,367 terms for the total to pass 10, and roughly 44 trillion to pass 32. Divergence
promises the total gets there. It promises nothing whatever about when.

## Convergence is a property of the tail
Changing, adding, or deleting finitely many terms at the front of a series can move the
total but can never change whether it converges. Only the infinite tail decides. This is
why a series can be "entered" anywhere convenient without affecting its fate — a useful
thing to know when a physical object has to start somewhere.

**One-liner for tours:** "Both of these arches are made of balls shrinking to nothing.
Only one of them has a top."
