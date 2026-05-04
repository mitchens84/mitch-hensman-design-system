# Mitch Hensman — Design System

A structured, purpose-built design system for Mitch Hensman's personal and professional work. Canonical source for design philosophy, tokens, voice, patterns, and contextual applications across the website, client deliverables, documents, presentations, social channels, AI conversations, and beyond.

## Status

**v0.1.8 — meta-architecture complete; tier content authoring next.** Scaffold established 2026-04-22; through v0.1.8 (2026-05-04) the meta-architecture (BRIEF, CATALOGUE, INTEGRATION-MAP, SEED, decisions/, anti-generic protocol, personal markers, skill adapters, session playbook, dependencies map, asset infrastructure, prompts, fixtures, references) is complete. Substantive Tier-1 to Tier-5 design content is the next authoring wave (Claude Design, starting Tier-2 colour per ADR 0008).

## Where to start

| If you are... | Read first |
|---|---|
| Opening a new authoring session | `SESSION-PLAYBOOK.md` → `BRIEF.md` → `prompts/<tier>.md` |
| Briefing Claude Design | `BRIEF.md` (links into ANTI-GENERIC-PROTOCOL + PERSONAL-MARKERS as required reading) |
| Understanding the system at a glance | `CATALOGUE.md` |
| Looking up a term | `GLOSSARY.md` |
| Checking dependencies before editing | `DEPENDENCIES.md` |

## Repository structure

- `BRIEF.md` — instructions for Claude Design (read first during authoring sessions)
- `SESSION-PLAYBOOK.md` — per-session entry point with current state + sequencing
- `DEPENDENCIES.md` — tier dependency map
- `CATALOGUE.md` — scope, coverage, entry-point map
- `GLOSSARY.md` — terms-of-art used across the system
- `INTEGRATION-MAP.md` — how outputs integrate back into the operator's wider operating system
- `SEED/` — reference material Claude Design consumes as starting context
- `1-FOUNDATIONS/` — philosophy, brand, voice, anti-patterns, accessibility, logo, anti-generic protocol, personal markers
- `2-TOKENS/` — machine-readable tokens: colour, typography, spacing, motion, iconography, radii, elevation, breakpoints
- `3-PATTERNS/` — composable rules: typography hierarchy, layout, dataviz, document structure, interaction, multilingual, imagery, iconography, audio-video
- `4-CONTEXTS/` — per-surface applications (9 contexts) + `GOAL-OVERRIDES/`
- `5-INTERFACES/` — consumer-specific exports: CSS pointer, YAML, skill adapters, CLAUDE-MD derivation, NotebookLM snapshot, prose summary
- `decisions/` — ADR-style decision records (12 to date)
- `references/` — admiration-anchor inspection records (7 sites: Craig Mod, Stripe Press, Frank Chimero, Tufte, The Pudding, Stripe Docs, GOV.UK Design System)
- `prompts/` — reusable Claude Design session prompts per tier
- `fixtures/` — regression-suite fixtures (round-trip validation per INTEGRATION-MAP)
- `examples/` — concrete output specimens per context
- `reviews/` — review protocols (Mai-review packet shape)
- `assets/` — fonts, logos, favicons (binary assets per licensing rule)
- `scripts/` — maintenance scripts (drift detection, etc.)
- `docs/` — supplementary docs (prompting playbook, intro for sharing, tier-2 inheritance log)
- `sessions/` — per-session notes
- `CHANGELOG.md` — version history

## How it's authored

Claude Design (Anthropic's visual design tool at claude.ai/design) reads this repo as its starting context and authors design-judgement content into the tier scaffolds. Operator-side plumbing (skill adapters, anti-generic protocol, personal markers, session playbook, dependencies map, scripts) is authored in Claude Code. The operator drives authoring sessions; integrates outputs back into the broader operating system per `INTEGRATION-MAP.md`.

## A note on this repo's public visibility

This is a public MIT-licensed personal design system. It is **not** a generic design system intended for direct adoption. It is the canonical record of one operator's design choices, shared so others can fork the *structure* (the five-tier architecture, the anti-generic protocol pattern, the citation discipline) without inheriting choices specific to this operator. If you are using this as a starting point for your own design system, expect to discard most of `references/`, `1-FOUNDATIONS/PERSONAL-MARKERS.md`, `SEED/CONNEXUSMINDS-*`, and the brand-specific Tier-2 tokens; keep the architecture.

## License

MIT — see `LICENSE`. Intended as a public-facing personal design system reference; shareable to collaborators and as inspiration for others building their own.
