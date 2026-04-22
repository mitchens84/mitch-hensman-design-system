# CHANGELOG

Version history for the Mitch Hensman Design System.

Format: `YYMMDD | version | change`. Newest first. One-line summary per entry; detail in `decisions/` if material.

## 260422 | v0.1.2 | BRIEF updated to include SEED framework libraries

- `BRIEF.md` §0 reading list expanded from 6 to 8 items (adds `VOICE-FRAMEWORKS.md` + `VISUAL-FRAMEWORKS.md`)
- `BRIEF.md` §6 SEED material guidance expanded to cover the framework libraries — how to scaffold with them without over-academicising
- Correction: framework libraries were added in v0.1.1 but BRIEF wasn't updated to reference them; this commit closes that gap

## 260422 | v0.1.1 | SEED enrichment; CATALOGUE; docs/; first ADR

- `SEED/VOICE-FRAMEWORKS.md` — Minto, BLUF, Pyramid, Trust Triad, Empathic Resonance, SUCCESs, Given-New Contract, cross-cultural code-switching + authors (surfaced from prior `6I-COMMUNICATOR-TUTOR` NotebookLM — existing prior art, don't reinvent)
- `SEED/VISUAL-FRAMEWORKS.md` — OPAL, CIM Architecture, scene graph generation, LLMLingua, EPiC, LPIPS/CLIP validation, compliance baselines (surfaced from `6I-CYBORG-SITRUNA_GRAPHICS_WORKFLOW_ENHANCE` NotebookLM)
- `CATALOGUE.md` — scope, coverage checklist, entry-point map, interface propagation table
- `decisions/0001-scaffold-establishment.md` — first ADR; records plan evolution v1–v5
- `docs/PROMPTING-PLAYBOOK.md` — repo-scoped prompting patterns
- `docs/intro-for-sharing.md` — general-reader introduction
- System-level Claude Design operational standard lives at `00-MASTER/03-STANDARDS/STD-TOOL_CLAUDE_DESIGN.md` (not in this repo — correct routing per operator feedback)

## 260422 | v0.1 | Scaffold established

- Public GitHub repo created (`mitch-hensman-design-system`) under `mitchens84`
- Five-tier scaffold in place: `1-FOUNDATIONS/`, `2-TOKENS/`, `3-PATTERNS/`, `4-CONTEXTS/`, `5-INTERFACES/`
- `SEED/` populated: synthesised design signals, archived 2024 philosophy, brand-identity excerpt, voice constraints, reference CSS (tokens + typography from mitch-hensman.com)
- `BRIEF.md` written for Claude Design authoring sessions
- `INTEGRATION-MAP.md` documents post-handoff integration back into operator's broader system
- MIT license
- `decisions/` directory created for ADR-style records

Status at end of v0.1: scaffold only; no tier content authored yet. Claude Design authoring sessions pending.
