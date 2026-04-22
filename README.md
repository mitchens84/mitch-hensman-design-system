# Mitch Hensman — Design System

A structured, purpose-built design system for Mitch Hensman's personal and professional work. Canonical source for design philosophy, tokens, voice, patterns, and contextual applications across the website, client deliverables, documents, presentations, social channels, AI conversations, and beyond.

## Status

**v0.1 — scaffold.** Established 2026-04-22 as a structured home for the design system. Content is authored inside Claude Design (claude.ai/design) and committed back here. At initial commit, tier scaffolds are empty; `SEED/` contains the reference material for authoring sessions.

## Repository structure

- `BRIEF.md` — instructions for Claude Design (read first during authoring sessions)
- `INTEGRATION-MAP.md` — how outputs integrate back into the operator's wider operating system
- `SEED/` — reference material Claude Design consumes as starting context (synthesised signals, archived philosophy, brand identity, voice constraints, reference CSS)
- `1-FOUNDATIONS/` — philosophy, brand, voice, anti-patterns, accessibility
- `2-TOKENS/` — machine-readable tokens: colour, typography, spacing, motion
- `3-PATTERNS/` — composable rules: hierarchy, layout, dataviz, interaction, multilingual
- `4-CONTEXTS/` — per-surface applications: website, documents, presentations, social, email, AI conversation, reports, client work, technical; plus `GOAL-OVERRIDES/` for per-LBS variants
- `5-INTERFACES/` — consumer-specific exports: CSS pointer, YAML, skill adapters, NotebookLM snapshot, prose summary
- `decisions/` — ADR-style design decision records accumulated over time
- `CHANGELOG.md` — version history

## How it's authored

Claude Design (Anthropic's visual design tool at claude.ai/design) reads this repo as its starting context and authors content into the tier scaffolds. The human operator drives authoring sessions; integrates outputs back into the broader operating system per `INTEGRATION-MAP.md`.

## License

MIT — see `LICENSE`. Intended as a public-facing personal design system reference; shareable to collaborators and as inspiration for others building their own.
