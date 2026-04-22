# Design Decision Records

ADR-style records of significant design decisions made during Claude Design authoring sessions or post-handoff integration.

## Format

Filename: `YYYY-MM-DD-short-title.md` (ISO date for sortability).

Each record should include:
- **Context** — what was being decided, what state existed before
- **Options considered** — at least two, with trade-offs
- **Decision** — what was chosen and by whom
- **Rationale** — why this over alternatives
- **Consequences** — what this commits us to, what it forecloses
- **Related records** — links to prior or future ADRs that relate

## What qualifies as a decision worth recording

- Tier structure changes (e.g., collapsing a tier, adding a sub-tier)
- Token introductions or removals (colour, spacing scale change)
- Context additions (adding a new Tier 4 surface) or goal-overrides
- Resolution of internal contradictions (e.g., the STYLE_GUIDE emoji-anchor contradiction)
- Anti-pattern additions or removals
- Significant voice or brand shifts

Minor refinements and additive changes do not need an ADR; they get a CHANGELOG entry.

## Claude Design and decisions

Claude Design may propose decisions during authoring sessions, but **records here are written by the human operator** (or by Claude Code during post-handoff integration, flagged as AI-authored-on-behalf). Claude Design proposals become records only after explicit operator ratification.
