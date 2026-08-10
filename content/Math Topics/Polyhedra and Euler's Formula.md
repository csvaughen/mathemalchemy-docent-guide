---
tags: [math-topic]
---
# Polyhedra and Euler's Formula

**In the exhibit:** [[The Curio Shop]] (the display cabinet) · [[The Garden and Reef]] (100+ of them, as flowers and sea creatures) · [[The Lighthouse]] (a stained-glass dodecahedron) · [[The Terrace]] (three Johnson solids as poufs) · [[Ball Arches]] (Catalan solids, embroidered on the decorated balls)

A **[polyhedron](https://en.wikipedia.org/wiki/Polyhedron)** (plural *polyhedra*) is a solid whose surface is made entirely of flat polygon **faces**, meeting along straight **edges**, which meet in turn at corners called **vertices**. A cube is the familiar one: 6 faces, 12 edges, 8 vertices.

A polyhedron is **convex** if it has no dents — take any two points on it and the straight line between them stays inside the solid. Shrink-wrap a convex solid and the wrapping touches it everywhere; a shape with a cave, a notch, or a pushed-in vertex would leave a gap.

Three families of convex polyhedra have names, ordered by how strict the rules are:

**[Platonic solids](https://en.wikipedia.org/wiki/Platonic_solid) — 5 of them.** Every face is the same regular polygon, *and* the same number of faces meet at every vertex. Those two demands together are so restrictive that only five shapes in existence satisfy them: tetrahedron, cube, octahedron, dodecahedron, icosahedron.

**[Archimedean solids](https://en.wikipedia.org/wiki/Archimedean_solid) — 13 of them.** Relax the first rule: faces may now be regular polygons of two or more different kinds, so long as every vertex is still surrounded the same way. The truncated icosahedron — pentagons and hexagons, i.e. a classic soccer ball — is the one nearly everyone has held. (Prisms and antiprisms technically qualify too, but they come in endless families, so they're counted separately.)

**[Johnson solids](https://en.wikipedia.org/wiki/Johnson_solid) — exactly 92.** Relax the second rule as well: every face is still a regular polygon, but the vertices no longer have to match each other, and the solid must be strictly convex. That leaves everything not already covered above — Norman Johnson listed all 92 in 1966, and Victor Zalgaller proved in 1969 that none had been missed.

**[Catalan solids](https://en.wikipedia.org/wiki/Catalan_solid) — 13 of them.** These come at the problem from the other side. Take an Archimedean solid and swap its faces for its corners: put a new vertex at the centre of every old face, and join two new vertices whenever the old faces shared an edge. What you get is the **dual**, and the duals of the 13 Archimedean solids are the 13 Catalan solids. The trade shows in the rules — where an Archimedean solid has *regular faces of mixed kinds*, its Catalan dual has *identical faces that are not regular*. The deltoidal icositetrahedron, all 24 faces the same kite, is the dual of the rhombicuboctahedron.

Dualising is an involution: do it twice and you are back where you started. It also swaps face and vertex counts while leaving the edge count alone, which is why Euler's formula below survives the operation untouched.

**Out in the wild:** [[The Curio Shop]] keeps them behind glass like rare gems — but the family has clearly gotten loose. Over 100 3D-printed polyhedra have taken up residence in [[The Garden and Reef]], blooming as flower stamens and pistils and drifting about as sea creatures: every Platonic, Archimedean, and Johnson solid, the complete set. A stained-glass dodecahedron catches the beam in [[The Lighthouse]], and three Johnson solids have settled in as purple poufs on [[The Terrace]]. The Catalan solids turn up in the least likely place of all — stitched onto the decorated balls of the [[Ball Arches]], where each embroidered sphere takes its geometric design from one of the thirteen. The cabinet has the reputation; the garden has the collection.

**Euler's formula** rules them all: **V − E + F = 2** for any convex polyhedron. It's secretly [[Topology]] — the "2" is the Euler characteristic of the sphere.

**One-liner for tours:** "Every convex polyhedron in the universe must obey one simple rule: corners minus edges plus faces equals two."
