---
tags: [scene]
math: [cryptography, quantum-key-distribution]
verified-against-official-site: true
---
# Quiltlet

**Math:** [[Cryptography]]

**Official page:** https://mathemalchemy.org/2023/11/07/quiltlet-mathematical-connections/

## What it is
A small quilted panel attached to the [[Cryptography Quilt]] — and it is not decoration, it's a **diagram**. It shows, in cartoon form, how two people can build a shared secret code out of single particles of light, and know for certain whether anyone listened in. The scheme is real and famous: **BB84**, published by Charles Bennett and Gilles Brassard in 1984, the first protocol for **quantum key distribution**.

Read it as a story running from one side to the other: a light source, a crystal that sorts the light, the open air in between, a matching crystal, and a row of detectors.

## The cast — what you're actually looking at
| On the quiltlet | What it stands for |
|---|---|
| **Fireflies** | Alice's light source. Each is aimed through a pinhole so it sends a single **photon** — one particle of light — at a time. |
| **The floating "cubes"** | **Calcite crystals**, the measuring device. Calcite splits a light beam in two according to its **polarization** (which way the light wave wiggles). |
| **Half-silvered mirror**, set at 45° | A coin flip. It passes the photon one way half the time and reflects it the other way half the time — this is what makes the choices in BB84 random. |
| **Frogs** | Bob's detectors. Each sits at one exit of a crystal and jumps when it sees a photon. *Which* frog jumps tells Bob which polarization arrived. |
| **Alice, Bob, Eve** | Cryptography's standard cast: two people trying to share a secret, and an eavesdropper. Eve isn't a character on the panel — she's the possibility the whole design defends against. |

Alice and Bob each have two crystals, arranged so their beams cross at 90°. One pair is the **Straight (S)** setup — polarizations horizontal (H) or vertical (V), like + — and the other is the **Diagonal (D)** setup — left or right diagonal, like ×.

## How the secret code gets made
1. **Alice sends.** At times she and Bob agreed on in advance, she sends one photon each time. For each one she picks at random: the S side or the D side, and then at random one of that side's two polarizations. They've agreed beforehand which polarization means **1** (vertical on S, left-diagonal on D) and which means **0** (horizontal on S, right-diagonal on D).
2. **Bob receives.** His half-silvered mirror randomly routes each arriving photon into his S crystal or his D crystal. A frog jumps.
3. **They compare — out loud, in public.** Bob announces which time slots a frog jumped in and whether it was an S frog or a D frog. He never says *which* frog. Alice replies, also publicly, listing the slots where she'd used the same side he did.
4. **The matches are the key.** When Alice and Bob happened to use the same side, Bob's frog reveals exactly the polarization Alice chose. Translate those into 1s and 0s and both now hold the same secret string of bits — without that string ever having been spoken aloud.
5. **They test for Eve.** They sacrifice some of those bits and compare them openly. If the two supposedly identical lists differ, someone was listening.

**Why step 5 works — this is the whole point.** To learn anything, Eve has to measure the photon, and she has to guess whether it's an S photon or a D photon. Guess wrong and her measurement *changes* the photon, scrambling it from S to D or back — about half the time. Those changes show up as mismatches in the sacrificed bits. In quantum physics you cannot look at something without disturbing it, and BB84 turns that inconvenience into a burglar alarm.

## Why the crystals aren't cubes
Look closely: those aren't cubes. A calcite crystal's faces are **rhombuses** — parallelograms — and its corners come in a little off from a cube's square 90° corners. It's a cube pushed sideways, a shape called a **rhombohedron**.

That skew is not a flaw, it's the mechanism. Because calcite's internal structure isn't square, light passing through it travels at two different speeds depending on its polarization, so one incoming beam leaves as **two** — the *ordinary* and *extraordinary* beams, polarized at right angles to each other. The property is called **birefringence** ("double refraction"), and it's why a calcite crystal laid on a printed page shows the text doubled. Everything the quiltlet does depends on it: the crystal is the thing that sorts photons by polarization.

## Why this matters
- **Geometry has consequences.** A parallelogram instead of a rectangle, a few degrees off square — and the material behaves completely differently. The shape of the crystal *is* the reason it can split light. Angles and symmetry aren't bookkeeping; they decide what a thing can do.
- **Randomness is a tool, not a failure.** Alice's choices, Bob's mirror, Eve's guesses — the security comes from things nobody controls. Probability here isn't "we're unsure," it's load-bearing engineering. (Eve guessing wrong half the time is exactly the 50% of a coin flip.)
- **Codes are made, not just used.** Most of the big quilt is about keeping a secret *safe*. This panel is about the harder problem that comes first: how do two people who have never met **agree** on a secret key, over a channel anyone can listen to? That question is running every time a browser connects to a bank. The quilt answers it with arithmetic — **Block O, ℤ/pℤ is cyclic**, the engine inside Diffie–Hellman key exchange. The quiltlet answers the same question with physics. Worth pairing on a tour: same problem, two completely different kinds of solution.
- **It's a proof-style argument.** BB84's guarantee doesn't rest on a code being too hard to crack. It rests on a law of physics: measuring disturbs. That's the difference between "nobody has broken it yet" and "it cannot be broken without leaving a trace" — a genuine taste of what mathematicians mean by proof.

## Quantum vs. post-quantum — the question visitors will ask
The two names sound like the same subject and are not. This panel and the quilt it hangs on are the two halves, inches apart, so it's worth being ready for.

| | **Quantum cryptography** | **Post-quantum cryptography** |
|---|---|---|
| What it is | Uses quantum physics itself as the tool | Ordinary classical math, chosen for being hard even for a quantum computer |
| Runs on | Special hardware — photon sources, detectors, fiber or line-of-sight | The laptop and phone you already own |
| Protects by | Physics: measuring a photon disturbs it, so eavesdropping is detectable | Difficulty: the underlying math problem stays hard |
| On this quilt | **The quiltlet** — BB84 | **Block H, lattice-based cryptography** |

**BB84 is quantum, firmly on the left column.** It uses quantum mechanics; it doesn't defend against it. Note the dates — Bennett and Brassard published in **1984**, ten years *before* anyone knew quantum computers would be a threat to encryption. It wasn't a response to the danger. It was a new capability that happened to arrive first.

**Where the danger came from.** In **1994** Peter Shor found an algorithm that lets a sufficiently large quantum computer factor huge numbers and crack discrete logarithms quickly — the two problems most of today's internet encryption rests on. No such machine exists yet. Everyone is building anyway.

**The quilt quietly tells this whole story, if you know where to look.** Its Tier 4 blocks include the things Shor's algorithm would break — **Block D, elliptic curve cryptography** and **Block O, ℤ/pℤ is cyclic** (the engine inside Diffie–Hellman key exchange), plus **Block L, Pollard's rho**, a factoring method whose slowness is precisely why RSA is safe today. And it includes the survivor: **Block H, lattice-based cryptography**, the family the U.S. standards body NIST selected in 2024 as the new default. **Block G, knapsack cryptography**, is the cautionary tale — Merkle–Hellman, broken decades ago by lattice methods, which is exactly why lattices are trusted now. Present G as history, never as a safe scheme.

**Why anyone hurries.** An adversary can record encrypted traffic today and decrypt it years later once the machine exists — "harvest now, decrypt later." Anything that must stay secret for a decade needs post-quantum protection *now*, which is why this migration is happening ahead of the threat.

So: the quilt's 20 blocks include **post-quantum** cryptography but no **quantum** cryptography. That gap is what the attached panel fills.

## Docent questions
- "Those floating shapes look like cubes, but count the corners — they're leaning. What could a crystal do just by being a little off-square?"
- "Alice and Bob shout most of this conversation out loud, where anyone can hear. So how does a secret survive it?"
- "These frogs are trained to see a single particle of light. That's the joke — except a real frog's eye can do it, and so can yours. So why have you never seen one?"

## Key vocabulary
- **Photon** — a single particle of light; the smallest possible amount.
- **Polarization** — the direction a light wave wiggles. Here: horizontal, vertical, or one of the two diagonals.
- **Birefringence** — a crystal splitting one beam into two, by polarization. Calcite's signature trick.
- **Rhombohedron** — calcite's crystal shape: six rhombus faces, like a cube leaned over.
- **Quantum key distribution (QKD)** — using quantum physics to share a secret key so that eavesdropping is detectable.
- **BB84** — Bennett & Brassard, 1984; the first and best-known QKD protocol, and what this panel diagrams.

## About those frogs
The frogs get the biggest laugh on this panel, and they're the part that turns out to be *half true*. Lead with them.

**The joke:** the quiltlet needs a detector sensitive enough to register a single particle of light, so the team drafted "a very special species" of frog, trained to jump when it sees a photon. Ingrid Daubechies adds the warning on the official page: *"Please don't go out to catch poor unsuspecting fireflies or amphibians to replicate this at home."* Nobody has found a photon-detecting frog in the wild, and getting a firefly to emit exactly one photon at a time is not something you can arrange in a jar.

**The true part:** a frog's eye really can register a single photon. In 2014 a team led by **Leonid Krivitsky** at A\*STAR in Singapore fired individual photons at rod cells taken from frog retinas and measured the cells' electrical response — published in *Physical Review Letters* (vol. 112, no. 21). The rod cells fired about **30% of the time**, a rate that holds its own against manufactured single-photon detectors. Krivitsky's point was that the method is *"both direct and universal"* — earlier claims about photon-scale vision rested on inference, and this measured it outright.

So the frog isn't a detector you can *train*, but the hardware in its eye is genuinely near the physical limit. Your own rod cells are about as good. What none of us has is the wiring to notice one — the signal gets filtered out long before it reaches conscious sight.

**The detail worth saving for last:** to produce single photons, the experimenters shone ultraviolet laser light through a **nonlinear optical crystal**, where roughly one photon in a million splits into two. A crystal splitting one beam of light into two — which is exactly what the calcite crystals on this panel are doing. The whimsical setup and the real laboratory reach for the same trick.

→ The research, in plain language: https://www.sciencedaily.com/releases/2015/01/150120084545.htm

## Learn more
- **The original BB84 paper**, Bennett & Brassard 1984 (reprinted 2020) — https://arxiv.org/pdf/2003.06557.pdf
- **Quantum key distribution** overview — https://en.wikipedia.org/wiki/Quantum_key_distribution
- **Calcite**, including its crystal structure and double refraction — https://en.wikipedia.org/wiki/Calcite
- **Birefringence** — https://en.wikipedia.org/wiki/Birefringence
- **The frog-retina research** behind the single-photon frogs — https://www.sciencedaily.com/releases/2015/01/150120084545.htm
- **Shor's algorithm**, the 1994 result that started the post-quantum scramble — https://en.wikipedia.org/wiki/Shor%27s_algorithm
- **Post-quantum cryptography**, including NIST's 2024 standards — https://en.wikipedia.org/wiki/Post-quantum_cryptography
