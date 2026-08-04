---
tags: [math-topic]
---
# Cryptography

**In the exhibit:** [[Cryptography Quilt]] (20 blocks of ciphers, plus two genuinely decodable hidden messages) · [[Quiltlet]] (the small attached panel, diagramming BB84 quantum key distribution)

The mathematics of secret-keeping: transforming information so only the intended recipient can recover it. Spans classical ciphers (Caesar, Vigenère), modern **public-key cryptography** built on modular arithmetic and prime factorization ([[Prime Numbers]]), and **post-quantum cryptography** — classical math designed to stay secure even against a future quantum computer, which the quilt's lattice block already depicts.

A separate problem comes *before* any cipher: how do two people who have never met agree on a secret key, over a channel anyone can listen to? **Key distribution** is what the [[Quiltlet]] is about, and it answers the question with physics rather than arithmetic — its **BB84** scheme sends single photons, so an eavesdropper cannot look without disturbing what she looks at, and gets caught. Note the distinction: BB84 *uses* quantum mechanics; post-quantum cryptography *defends against* it.

The quilt hides two messages: an 8-bit **binary/ASCII** code at the central padlock, and a **ternary (base-3)** code in the ring around it.

**One-liner for tours:** "Math is the invisible shield protecting your texts, your bank, your photos."

