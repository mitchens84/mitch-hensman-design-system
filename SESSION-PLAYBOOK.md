---
title: Session Playbook
status: AUTHORED — per-session entry point
last_reviewed: 2026-05-04
---

# Session Playbook

Operator-facing entry point for a new Claude Design (or Claude Code) authoring session. Open this **before** opening BRIEF.md — this file tells you which tier to work on next, given current state.

## 1. Current state

| Layer | Status (260504) |
|---|---|
| Meta-architecture | ✓ complete (BRIEF, CATALOGUE, INTEGRATION-MAP, SEED, decisions/) |
| Tier 1 — Foundations | ○ scaffold only (5 of 6 files empty; LOGO.md added at v0.1.8) |
| Tier 2 — Tokens | ○ scaffold only (10 token-file pairs empty; 4 added at v0.1.8) |
| Tier 3 — Patterns | ○ scaffold only (8 files empty; IMAGERY + ICONOGRAPHY + AUDIO-VIDEO added at v0.1.8) |
| Tier 4 — Contexts | ○ scaffold only (9 contexts empty) |
| Tier 5 — Interfaces | ▶ partial (SKILL-ADAPTERS authored at v0.1.8; 5 others empty) |
| Operator-side plumbing | ✓ complete (PERSONAL-MARKERS, ANTI-GENERIC-PROTOCOL, MAI-REVIEW-PROTOCOL, SKILL-ADAPTERS, this file) |

## 2. Next session (recommended)

Per **ADR 0008** sequencing: Tier 2 colour, both brands. Open `prompts/tier-2-token.md` (when authored) parameterised for `colour` + `hensph` first, then `connexusminds`.

Why colour first: every downstream tier (typography contrast checks, dataviz, document structure colour-coding) depends on colour. Authoring it first prevents rework.

## 3. Sequencing (codified from ADR 0008)

```
Tier 2 — colour (HensPham → ConnexusMinds → shared)
   ↓
Tier 2 — typography (both brands)
   ↓
Tier 2 — spacing
   ↓
Tier 2 — motion (likely: default-off; minimal authoring)
   ↓
Tier 2 — radii + elevation + breakpoints + iconography (in any order)
   ↓
Tier 3 — patterns (start with TYPOGRAPHY-HIERARCHY; then LAYOUT; then DOCUMENT-STRUCTURE)
   ↓
Tier 3 — DATAVIZ + INTERACTION + MULTILINGUAL + IMAGERY + ICONOGRAPHY
   ↓
Tier 4 — contexts (start with AI-CONVERSATION since it has clear upstream constraint from CLAUDE.md §0.3)
   ↓
Tier 4 — DOCUMENTS + REPORTS + EMAIL + WEBSITE + SOCIAL + PRESENTATIONS + CLIENT-DELIVERABLES + TECHNICAL
   ↓
Tier 1 — VOICE.md + ANTI-PATTERNS.md + PHILOSOPHY.md + BRAND.md + ACCESSIBILITY.md (LAST — these emerge from observed downstream patterns)
   ↓
Tier 5 — interfaces other than SKILL-ADAPTERS (CSS-CANONICAL + YAML-EXPORT + CLAUDE-MD-DERIVATION + NOTEBOOKLM-SNAPSHOT + PROSE-SUMMARY)
```

Note: Tier 1 last is deliberate — invariant-layer files are best authored once downstream tiers reveal what's actually invariant. Authoring philosophy first risks generic philosophy disconnected from observed practice.

## 4. Per-session contract

Every session, in order:

1. Open this file. Confirm next tier per §2
2. Open the relevant `prompts/<tier>.md` template (if exists; else use BRIEF directly)
3. Run the per-session ritual from `1-FOUNDATIONS/ANTI-GENERIC-PROTOCOL.md §6`
4. Author tier file(s)
5. End-of-session: write a session note in `sessions/`; advance `CHANGELOG.md`; update this playbook's §1 status row
6. If a structural decision was made: write an ADR in `decisions/`
7. Commit + push

## 5. Stop conditions

End session early if:
- Output plateau reached (Claude Design produces generic content or repeats itself)
- Required upstream context is missing (e.g. authoring tier-3 LAYOUT without tier-2 spacing)
- Operator energy or attention insufficient for review-quality work

Better to commit a partial-but-honest session than push through to a generic full draft.

## 6. After every session

- Update §1 status table in this file
- Run `git status` — confirm only intended files changed
- Push (default branch: `main`)
- If significant: notify Mai via review packet per `reviews/MAI-REVIEW-PROTOCOL.md`
- Schedule next session with explicit tier-target

## 7. When this playbook is wrong

This file is a starting recommendation, not law. If the operator's circumstances or priorities change (e.g. a Sitruna deadline forces tier-4 CLIENT-DELIVERABLES.md to jump the queue), override and document the override in `CHANGELOG.md`.
