# ADR 0008 — Tier sequencing: colour → type/space/motion → patterns → contexts → kits

**Date**: 2026-04-27
**Status**: Accepted
**Author**: Mitch Hensman (ratified); Claude Code (scribed)

## Context

`BRIEF.md §1a` notes the UI kit gap (HensPham extracted from `mitch-hensman.com`; ConnexusMinds gated on site source). Claude Design's session-3 handoff §6 asked whether tier-2 → tier-3 → tier-4 work proceeds before kits land or waits on them.

The kits depend on running CSS for HensPham (extractable now) and on running CSS for ConnexusMinds (not yet attached; per ADR 0004 / handoff §4). Tier-2 Tokens, Tier-3 Patterns, and Tier-4 Contexts can be authored substantially without kits — kits are downstream consumers of tier-2 tokens, not upstream blockers.

## Options considered

1. **Block on kits** — wait for ConnexusMinds site source; resume tier-2 only when both brands have running CSS. Rejected; the ConnexusMinds running-CSS gap may persist for weeks; blocking would stall the entire authoring loop. ConnexusMinds tier-2 derivation from spec is already endorsed at ADR 0003 with a tier-5 reconciliation note.

2. **Author tiers in their natural order; reconcile when kits land** (Claude Design's recommendation, accepted) — sequence is colour (both brands) → type/space/motion (both brands) → patterns (largely shared) → contexts → kits when source access lands. ConnexusMinds tokens authored from spec carry a reconciliation marker for when running CSS attaches.

3. **Author HensPham tiers fully; defer ConnexusMinds tiers entirely** — rejected; produces an asymmetric design system; ConnexusMinds register work (tier-4 CLIENT-DELIVERABLES) needs ConnexusMinds tokens to cite.

## Decision

Sequence is endorsed in this order:

1. **Tier-2 colour** — both brands; HensPham extracted from running CSS; ConnexusMinds derived from `SEED/CONNEXUSMINDS-colour-guide.md` + `SEED/CONNEXUSMINDS-brand-design-guide.md` (six-colour palette per ADR 0004)
2. **Tier-2 typography** — both brands; HensPham extracted; ConnexusMinds derived from spec (Inter Variable specifications)
3. **Tier-2 spacing** — likely `shared.*` baseline with per-brand overrides where they appear
4. **Tier-2 motion** — likely `shared.*` (default-off stance is brand-agnostic)
5. **Tier-3 Patterns** — largely shared with per-brand notes
6. **Tier-4 Contexts** — per-surface applications; CLIENT-DELIVERABLES applies ConnexusMinds register
7. **Tier-5 Interfaces** — per-brand exports (per ADR 0007 architecture)
8. **UI kits** — HensPham unblocked at any point post-tier-2; ConnexusMinds gated on site source; reconciliation step authored when running CSS lands

ConnexusMinds tier-2 tokens carry an explicit "derived from spec; subject to tier-5 reconciliation when running CSS attaches" marker in their `.md` companion files.

## Rationale

**Tokens precede everything that consumes them.** Patterns reference tokens; contexts reference patterns and tokens; kits export tokens. Reverse-ordering produces churn.

**Cross-brand parallelism is preserved by interleaving.** Authoring colour for both brands together (rather than HensPham colour fully → ConnexusMinds colour fully) keeps the parallel structure visible (per ADR 0007 nested-source rationale). Same for type, space, motion.

**ConnexusMinds spec is sufficient for tier-2.** The brand-design-guide and colour-guide carry full token-equivalent specifications (palette, gradients, type weights, letter-spacing). Tier-2 derivation from spec is a legitimate path; the tier-5 reconciliation step closes the loop without blocking the authoring loop.

**Reconciliation is a known pattern.** ADR 0003 already endorsed spec-only ConnexusMinds derivation with reconciliation when site source attaches. This ADR scopes that pattern to the per-tier sequencing.

## Consequences

**Commits us to**:
- Session 4 (next Claude Design session) opens with tier-2 colour for both brands
- Each ConnexusMinds tier-2 file carries a reconciliation marker in its `.md` companion
- Tier-5 INTERFACES authoring includes a "ConnexusMinds reconciliation when site source attaches" task as a standing item
- UI kit authoring (5-INTERFACES + tier-3 imagery) gates on token completion, not on kit completion

**Forecloses**:
- Blocking the authoring loop on ConnexusMinds running CSS
- Per-brand-fully-then-other sequencing (which would lose cross-brand parallelism)
- Tier-3 / tier-4 work that runs ahead of tier-2 tokens

**Opens**:
- Authoring loop progresses on the full design system without external dependency
- ConnexusMinds reconciliation becomes a one-time integration when site source lands, not a session-by-session re-derivation
- Tier-3 patterns can author against authored tokens immediately

## Related records

- Governing plan: `99-PLANS/260422-0A-SYS-DESIGN_SYSTEM_UNIFICATION-PLAN.md`
- Prior ADRs: `0003-two-brand-scope.md`, `0004-seed-contradictions-resolution.md`, `0007-token-architecture-nested-source-split-exports.md`
- Downstream files affected:
  - `2-TOKENS/colour.md` (companion to colour.yaml) — derivation marker for ConnexusMinds half
  - `2-TOKENS/typography.md` — derivation marker for ConnexusMinds half
  - `5-INTERFACES/CSS-CANONICAL.md` — reconciliation task as standing item
  - Session-4 opening prompt (Claude Design) — sequence anchored to this ADR
