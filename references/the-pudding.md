---
reference: The Pudding
url: https://pudding.cool/
inspected: 2026-05-04
status: candidate
---

# The Pudding

## Why this reference matters

The Pudding is the reference for scroll-driven data storytelling that is evidence-first rather than effect-first. Every feature is grounded in a primary dataset with inline methodology disclosure. Motion is entirely functional — scroll position maps to narrative time; it is the argument, not decoration. The writing voice is first-person, precise, and emotionally honest without losing rigour.

## Visual signals

- **Typography:** Homepage story cards: `<h3>` titles + tagline body copy. Feature articles: large display type for section headers; reading body ~60–65 ch estimated measure. Dual SVG assets per chart (`chart.svg` + `chart_mobile.svg`) — purpose-built responsive data graphics, not scaled-down single files.
- **Colour:** Restrained base palette in UI chrome; accent colours within features carry data meaning (e.g., bright purple encodes the "friends and family" category in the loneliness feature). Homepage thumbnails carry all chromatic variety. No decorative colour in navigation.
- **Layout:** Story index: modular card grid — issue number + date + thumbnail + h3 title + one-line tagline. Features: full-width scroll canvas; SVG charts embedded inline; text narration interleaved with visualisation. Explicit scroll prompts: "Scroll down," "Keep scrolling."
- **Motion:** Scroll-triggered reveals are the core interaction model. Time-keyed scroll (24-hour timeline advances as user scrolls in "Invisible Epidemic") — motion is the narrative mechanism. No decorative animation observed.
- **Imagery:** Custom SVG data visualisations. Bespoke story thumbnails. No stock photography.

## Voice signals

- First-person researcher-as-narrator: "When I analyzed how much time Americans spend with other people, I found some alarming trends."
- Methodology disclosed inline: "¹ According to facial recognition research by Rob Jenkins at the University of York."
- Emotional register earned through evidential build-up — personal turn comes only after data is established.
- Direct reader address without condescension: "Where are you on this ladder?"

## Specific elements worth borrowing

1. **Dual SVG per chart** (`chart.svg` + `chart_mobile.svg`): purpose-built responsive data graphics ensure legibility at all viewport sizes without scaling artefacts.
2. **Colour-as-data-encoding:** accent colour introduced with explicit narration ("I've highlighted our friends and family with this bright purple") — colour earns its place by carrying meaning, not decoration.
3. **Inline methodology footnotes:** superscript numbered citations within paragraphs, linking primary sources — transparent evidence presentation without academic apparatus weight.
4. **Story card taxonomy:** issue number + date + thumbnail + h3 title + tagline — low-chrome, high-density index format; scalable to hundreds of entries.
5. **Author tip link at article end:** plain `donate.stripe.com` link after the final section — low-pressure, functionally placed, no popup or interstitial.

## What NOT to borrow

1. Scroll-triggered time-keyed animation requires significant JavaScript investment; not appropriate for text-primary pages without a data narrative driving it.
2. The "THIS SITE REQUIRES FLASH — just kidding, this is a 404" copy is brand-specific to The Pudding; adopting it reads as borrowed rather than native.
3. Feature-level JavaScript dependency is high; restrained-motion value means adopting the visual language (dual SVG, colour-as-data) without the scroll-animation overhead for non-data content.

## Snippet

> "Talking about loneliness feels so deeply personal. It makes us so vulnerable because it means telling someone that you're hurting on a primal level. So we don't talk about it. The epidemic becomes invisible."

*Closing passage of "24 hours in an invisible epidemic" — the emotional turn arrives after 24 hours of evidenced setup. Demonstrates how to earn register.*
