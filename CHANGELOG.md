# CHANGELOG

Version history for the Mitch Hensman Design System.

Format: `YYMMDD | version | change`. Newest first. One-line summary per entry; detail in `decisions/` if material.

## 260423 | v0.1.4 | Session-1 enablement

- `docs/FIRST-SESSION-CHECKLIST.md` — ten-step guide for opening session 1; condenses playbook into an action sheet; cross-references BRIEF §11, SEED CANDIDATE refs, and stopping rules (addresses review I1)
- `sessions/README.md` + `sessions/TEMPLATE.md` — scaffold for per-session notes; captures opening, grounding verification, decisions, drift, stop reason, next-session focus (addresses review G2)
- `decisions/TEMPLATE.md` — standardised ADR template for consistent future decisions (addresses review G3)
- `SEED/VISUAL-FRAMEWORKS.md` — two UNVERIFIED-claim HTML comments added flagging the OPAL "94.3%" and "90% trademark rejection" figures as not-traceable to primary source; claims kept in place (per SEED protocol; do-not-modify-in-place relaxed for safety annotations only); BRIEF §11 tripwire requires verification before any authored tier file cites either number (addresses review C4)
- `docs/intro-for-sharing.md` — "Figma dropped 7%" hedged to "roughly 7% (intraday moves close to 6.9%)" (addresses review C5)

## 260423 | v0.1.3 | Pre-handoff hardening

- `BRIEF.md` §3 adds **Motion** subsection — default-off stance; motion tokens must justify with functional purpose; `prefers-reduced-motion` universal (addresses review G7)
- `BRIEF.md` §11 **Per-tier completeness tests** added — explicit "provisionally complete" bar for each tier file; includes cross-tier contradiction protocol and a source-claim verification rule against AI-inference-laundered SEED numbers (addresses review G1)
- `1-FOUNDATIONS/ACCESSIBILITY.md` scaffold purpose comment expanded to enumerate six coverage areas: contrast, keyboard, screen-reader, cognitive, motion-sensitivity, language (addresses review G9)
- `SEED/DESIGN-SIGNALS.md` §7 admiration references annotated as CANDIDATE with explicit session-1 confirmation step — operator elected to confirm in context rather than ahead of time (addresses review G4)
- `decisions/0002-handoff-model-probe.md` created — records that Phase 1.5 probe is descoped; session 1 serves as the empirical test (addresses review D3)
- Governing plan Status Log receives v6 entry recording the standalone-repo decision and probe descope (addresses review D1)

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
