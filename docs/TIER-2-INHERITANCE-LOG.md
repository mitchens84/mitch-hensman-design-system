---
title: Tier-2 Inheritance Log — open debts from tier-1 authoring
date: 260427
status: standing input for tier-2 authoring sessions
purpose: Bundles unresolved tier-1 `<!-- OPEN: -->` debts so tier-2 colour / typography / spacing / motion authoring inherits a clean to-do list rather than re-discovering them session-by-session
---

# Tier-2 Inheritance Log

Tier-1 sessions surfaced design-system debts that tier-2 is the right place to resolve. Each item is scoped (which tier-2 file owns it), constrained (what is true regardless of which option tier-2 picks), and optioned (the candidate resolutions tier-2 should evaluate). A debt becomes resolved when tier-2 picks one option; if tier-2 surfaces a new constraint, the debt updates in place.

## D1. HensPham `--color-text-faint` fails AA

**Source**: `SEED/tokens-reference.css` lists `#999999`. Measured: 2.85:1 on white. Fails AA body (4.5:1) and AA large (3.0:1 — borderline).

**Owner**: `2-TOKENS/colour.md` + `colour.yaml` HensPham namespace (per ADR 0007 nesting).

**Constraint**: WCAG AA floor (per `BRIEF.md §3 Accessibility`).

**Options**:
1. Darken to `#767676` (4.5:1 on white) — full AA body restoration.
2. Keep `#999999` but scope to non-text decorative use only (icons-as-decoration, dividers, redundant-cue elements where text is not the primary signal).
3. Two tokens: `--color-text-faint` (darkened to AA) + `--color-decoration-faint` (preserves `#999999` for non-text use).

Tier-2 recommendation: option 3 (separates the role; preserves the visual character for decorative use; gives text-bearing elements an AA-passing alternative).

## D2. ConnexusMinds Insight Amber text-bearing component treatment

**Source**: `SEED/CONNEXUSMINDS-colour-guide.md` operative constraint "Never place Insight Amber text on white backgrounds" (3.19:1 — fails AA body).

**Owner**: `2-TOKENS/colour.md` ConnexusMinds namespace.

**Constraint**: ADR 0004 — SEED constraint is correct; tier-2 derives accurate per-pair tables.

**Options**:
1. Amber as fill-only colour; text on amber background uses Network Navy or Pure White (subject to its own contrast verification).
2. Amber-on-white forbidden universally; amber text only on dark backgrounds (Navy, Teal, Wisdom Grey).
3. Large-display CTA copy on amber fill: derive a sanctioned text colour with measured contrast.

Tier-2 recommendation: combination of 2 + 3 (codify amber-on-white as a hard ban; for amber-fill components, declare the sanctioned text colour with its measured ratio).

## D3. ConnexusMinds Insight Emergence gradient text-overlay

**Source**: `SEED/CONNEXUSMINDS-brand-design-guide.md` §2.3 — Navy → Amber 15% opacity gradient; "Innovation and breakthrough communications" use case.

**Owner**: `2-TOKENS/colour.md` ConnexusMinds gradients section.

**Constraint**: text legibility over gradient surface; composited contrast varies across the gradient transition zone.

**Options**:
1. Forbid text overlay on Insight Emergence gradient; reserve for hero-only or supporting-graphic use.
2. Permit text overlay only with a solid-fill text container (full opacity card on gradient).
3. Permit direct text overlay only with measured composited contrast at the worst-case gradient point (likely the amber-end transition).

Tier-2 recommendation: option 1 (clean ban; matches the gradient's role as atmosphere, not as text container). Option 2 as fallback if a real component requires it.

## D4. HensPham warm-greys curation

**Source**: `SEED/tokens-reference.css` lists `#1a1a1a` / `#333333` / `#666666` / `#999999` / `#e5e5e5` / `#fafafa`.

**Owner**: `2-TOKENS/colour.md` HensPham namespace.

**Constraint**: ADR 0001 / BRIEF — extract from running CSS first; propose extensions only if a use case is unmet.

**Options** (per shade): keep canonical / mark as extraction-candidate (preserve in source but flag deprecation) / strip.

**Tier-2 task**: per-shade decision against a use-case audit. Likely outcomes:
- `#1a1a1a` (~near-black) — canonical, body text alternative
- `#333333` — canonical, primary body
- `#666666` — canonical, secondary body
- `#999999` — covered at D1; split into text-faint (darken) + decoration-faint (preserve)
- `#e5e5e5` — canonical, dividers / soft borders
- `#fafafa` — canonical, surface tint

The audit step is to confirm each shade has a named role; any shade without a named role is a strip candidate.

## D5. `3-PATTERNS/MULTILINGUAL.md` Thai-rendering pattern

**Source**: `1-FOUNDATIONS/ACCESSIBILITY.md` §7 codifies Playwright (not weasyprint) for multilingual PDFs. Tier-3 needs the full pattern spec.

**Owner**: `3-PATTERNS/MULTILINGUAL.md` (tier-3, not tier-2 — but logged here because it's an open `<!-- OPEN: -->` debt that bundle-resolves cleanly with the others).

**Constraint**: weasyprint corrupts Thai/non-Latin text layers (memory: pattern 6 in MEMORY.md). Playwright is the documented workaround.

**Tier-3 spec needs**:
1. Pattern definition: when multilingual / Thai content is present, Playwright is the rendering tool.
2. Implementation pointer: example invocation, font-loading approach, fallback chain.
3. Pattern boundary: pure-Latin content has no constraint; mixed-script triggers the pattern.

## How tier-2 sessions consume this log

1. At tier-2 session open, read this file alongside `BRIEF.md` and the relevant SEED material.
2. For each debt scoped to the tier-2 file being authored, evaluate the options against the constraints; pick one (or propose a fourth); document the choice in the tier file with a back-reference to this log entry (e.g., "`--color-text-faint` resolved per Tier-2 Inheritance Log D1, option 3").
3. Mark the debt resolved here at session close (status: RESOLVED + commit hash + ADR if a contested decision).
4. Surface any new debts in the same format.

## Status

| Debt | Owner | Status |
|---|---|---|
| D1. HensPham faint-grey AA failure | tier-2 colour | open |
| D2. CM Amber text-bearing | tier-2 colour | open |
| D3. CM Insight Emergence text-overlay | tier-2 colour | open |
| D4. HensPham warm-greys curation | tier-2 colour | open |
| D5. Tier-3 Thai-rendering pattern | tier-3 multilingual | open (logged here for bundle-resolution) |

---

*Authored 260427 in response to Claude Design session-3 handoff §7 — bundles open debts so tier-2 inherits a clean to-do list rather than rediscovering each per-session.*
