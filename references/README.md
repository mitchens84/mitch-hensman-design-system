---
title: Design Reference Sites
created: 2026-05-04
status: draft — operator review required
---

# Design Reference Sites

Seven sites operating as visual and structural anchors for the mitch-hensman design system. Six were operator-endorsed; GOV.UK Design System added 2026-05-04 by Claude Code with operator-delegated review authority. All seven status: `confirmed_anchor`. Operator may downgrade to `reject` if any prove unhelpful in practice.

## Sites

| Slug | Site | One-line takeaway |
|------|------|-------------------|
| [craig-mod](./craig-mod.md) | Craig Mod | Three-element essay listing + footnote discipline + `* * *` section breaks as the complete long-form typography system. |
| [stripe-press](./stripe-press.md) | Stripe Press | Zero UI colour — all chromatic interest delegated to cover art; assertive-not-effusive editorial voice at six syllables. |
| [frank-chimero](./frank-chimero.md) | Frank Chimero | `theme-color: #000000` + semantic `<article>` wrapper + conceptual illustration thumbnails over photography. |
| [edward-tufte](./edward-tufte.md) | Edward Tufte | ET Book typeface (MIT, directly adoptable) and tufte-css sidenote pattern are the most immediately usable extractions. |
| [the-pudding](./the-pudding.md) | The Pudding | Scroll-as-narrative and dual-SVG responsive charts; colour earns its place by carrying data meaning, not decoration. |
| [stripe-docs](./stripe-docs.md) | Stripe Docs | Action-verb navigation labels + three-level sidebar + task-oriented page naming — the structural model for design system docs. |
| [govuk-design-system](./govuk-design-system.md) | GOV.UK Design System | Public-sector restraint as a complete design system — evidence-based, plain English, accessibility-first, community co-designed; the model for documenting a design system. |

## Cross-cutting signals

Three patterns appear across three or more sites and are strong candidates for the design system core:

1. **Monochrome chrome, content-sourced colour** — Craig Mod, Stripe Press, Frank Chimero, and Stripe Docs all keep UI chrome black/white and let content imagery carry colour. Directly compatible with the operator's no-gradients value.
2. **Footnote and annotation discipline** — Craig Mod (numbered inline footnotes), Tufte (margin notes via tufte-css), and Stripe Press (attributed praise blocks) all solve the depth-vs-reading-flow tension differently. A unified annotation pattern is warranted for the design system.
3. **Action-verb navigation** — Stripe Docs makes this explicit; Craig Mod's essay titles follow the same pattern. Consistent with evidence-based, functional-over-ornamental voice values.

## Most surprising finding

The Pudding's "Invisible Epidemic" feature ends with `donate.stripe.com` — a Stripe tip link — placed as plain text after the final paragraph, with no popup, modal, or call-to-action styling. The most sophisticated interactive editorial site on the list uses the simplest possible monetisation pattern: one unstyled hyperlink, positioned only after the reader has earned it by scrolling through 24 hours of narrative. Functional-over-ornamental applied to business model.

## Fetch notes

Several secondary pages returned 404 at time of inspection; alternative pages were used:

- `frankchimero.com/blog/2023/a-website-is-a-room/` — 404; used `the-webs-grain/` instead.
- `frankchimero.com/blog/2019/the-new-rules/` — 404.
- `pudding.cool/2024/07/huh/` and `pudding.cool/2022/02/women-in-the-bathroom/` — 404; used `2023/09/invisible-epidemic/` instead.
- `press.stripe.com/the-making-of-prince-of-persia` — 404; homepage data used.
- `edwardtufte.com/tufte/books_vdqi` — 301 redirect; homepage data used.

CSS stylesheets served externally; font and colour values inferred from content and metadata rather than computed styles.

## Status convention

| Value | Meaning |
|-------|---------|
| `confirmed_anchor` | Operator has reviewed and explicitly adopted |
| `candidate` | Fetched and analysed; awaiting operator review |
| `reject` | Operator has decided not to use |
