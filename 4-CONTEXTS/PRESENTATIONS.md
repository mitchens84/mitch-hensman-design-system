---
title: Context — Presentations
status: DRAFT-PENDING-CLAUDE-DESIGN-AUTHORING
authored: 2026-05-07 by content-architect-v5.0-rebuild
---

<!-- Purpose: Slide deck rules, visual hierarchy for decks, PPTX/Keynote templates, audience pacing. -->

# Context — Presentations

## DRAFT-PENDING

> This draft enables content-architect v5.0 to bind. Full authoring belongs in Claude Design (claude.ai/design). Replace this section entirely in the next authoring pass — do not preserve the DRAFT-PENDING header.

### Register and tone

Visual-first. Each slide carries one idea. Formality default: **conversational but precise** — language is simpler than a written report on the same topic; visuals do the analytical heavy lifting. Internal syncs: direct, no ceremony. External/client: professional register, brand-consistent. British English.

### Structural conventions

- Title slide: deck title + date + author/context (e.g. "Mai/Mitch sync — 260514").
- One idea per slide. Slide title = the takeaway (not the topic). Body = evidence or detail.
- Slide count: internal sync ≤10 slides; external/client brief ≤20 slides; workshop ≤30.
- Narrative arc: Situation → Complication → Resolution (SCR) for decide-intent decks. For understand-intent: context → findings → implications.
- Speaker notes: full prose for any slide requiring explanation beyond what's visible.
- No bullet walls: max 4 bullets per slide, max 10 words per bullet. Prefer diagram or chart over bulleted list.

### Visual conventions

- Default renderer: Marp CLI v4 (md → PDF + `--pptx-editable`). Slidev for Mermaid-heavy decks.
- Charts: Vega-Lite → SVG embed (Marp renders SVG natively in HTML mode).
- Diagrams: Mermaid inline fenced blocks (preferred for Marp); pre-render to SVG for PPTX export.
- Images: full-bleed or right-anchored. No clip-art, no stock illustration.
- Typography: heading scale from `3-PATTERNS/TYPOGRAPHY-HIERARCHY.md`; do not override font size per slide.
- Slide aspect: 16:9 default. 4:3 only if client explicitly requires.

### Length expectations

| Sub-type | Slides |
|---|---|
| Internal sync | ≤10 |
| External brief | ≤20 |
| Workshop / training | ≤30 |

### Output form

Paired source + rendered. Source: `.md` (Marp-flavoured). Rendered: `.pdf` (Marp → PDF, default) + `.pptx`-editable (Marp `--pptx-editable`, for client handoff). For Mermaid-heavy decks: Slidev → HTML export + `playwright-pdf` for PDF.

---

*This draft enables content-architect v5.0 to bind. Full authoring belongs in Claude Design.*
