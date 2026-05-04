---
reference: Craig Mod
url: https://craigmod.com/
inspected: 2026-05-04
status: confirmed_anchor
confirmed_by: Claude Code review delegated by operator on 2026-05-04
---

# Craig Mod

## Why this reference matters

Mod writes long-form essays with a craft-first sensibility — substance over decoration — directly matching the operator's functional-over-ornamental value. The site treats typography and whitespace as the primary design medium, with photography serving content rather than ornamentation. His membership-supported publishing model aligns with an evidence-based, anti-hype editorial stance.

## Visual signals

- **Typography:** No declared custom webfonts visible in metadata; site uses a clean sans-serif stack. Essay pages use a generous measure (estimated 60–70 ch). Essay index: date (month/year) + linked title + italicised one-line subtitle as the three-element listing unit. Footnotes use numbered superscripts anchoring to a notes section at page foot.
- **Colour:** Near-pure black text on white. Blue hyperlinks. Zero accent colours in UI chrome. Photography provides all chromatic interest.
- **Layout:** Single-column throughout. Primary nav: About / Books / Essays / Membership. Sections separated by whitespace alone. Popular Essays sidebar appears in the essays index. Article footer: `* * *` horizontal rule, author headshot + short bio, newsletter subscribe.
- **Motion:** Absent. A zoom lightbox pattern exists in the DOM (zoom-spin GIF assets) but is the only JavaScript-dependent element.
- **Imagery:** Documentary photography (Japan walks, book production). Images anchor major sections; they document rather than decorate.

## Voice signals

- Opens directly on a concrete claim: "I love _fast_ software."
- No hedging in prose; qualifications routed to numbered footnotes.
- First person throughout; personal anecdote grounds analytical claims.
- Parenthetical dry humour without undermining argument register.

## Specific elements worth borrowing

1. **Three-element essay listing:** date + linked title + italicised subtitle — low noise, high scannability; replicable in any list context.
2. **Numbered footnote discipline:** superscript anchors in prose, full notes at page foot — preserves reading flow while retaining citation depth.
3. **`* * *` section break:** horizontal rule between major essay sections with no heading overhead; clean typographic cadence for long-form content.
4. **Author colophon pattern:** small headshot + two-sentence bio + newsletter CTA placed after final section break — closes the reading contract without a heavy footer.
5. **Hugo as generator:** lightweight, no-CMS publishing model visible in meta (`generator: Hugo 0.149.0`); aligns with restrained-stack preference.

## What NOT to borrow

1. The JavaScript zoom lightbox — adds dependency weight; conflicts with restrained-motion value.
2. `fb:admins` meta tag — legacy Facebook tracking artefact; not needed.
3. `viewport` lacks `initial-scale=1` — worth correcting in the operator's implementation.

## Snippet

> "Fastness in software is like great margins in a book — makes you smile without necessarily knowing why."

*From "Fast Software, the Best Software" — one sentence binds a functional claim to a typographic analogy, demonstrating Mod's method of grounding abstract ideas in craft.*
