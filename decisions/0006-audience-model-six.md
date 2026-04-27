# ADR 0006 — Audience model retained at six (cold-prospect = first-touch modulation of audience 3)

**Date**: 2026-04-27
**Status**: Accepted
**Author**: Mitch Hensman (ratified); Claude Code (scribed)

## Context

`BRIEF.md §2` lists six audiences:
1. Mitch himself
2. Website visitors at both sites
3. Commercial counterparts via ConnexusMinds (Sitruna; prospects; pipeline contacts)
4. Collaborators (Mai, Megan)
5. AI consumers (Claude / Gemini / Codex)
6. Future self

Claude Design's review surfaced an ambiguity: where do *cold-prospect* ConnexusMinds counterparts (top-of-funnel; first-touch; no shared context) sit? They are nominally a sub-case of audience 3, but the voice register modulation between cold first-touch and warm active discussion is large enough to matter for tier-4 context authoring (CLIENT-DELIVERABLES.md, future MARKETING.md).

The two readings differ:
- Audience 3 already says "prospects and pipeline contacts" — cold included
- The voice modulation across the cold→warm spectrum spans more register-distance than the modulation between Sitruna (active client) and a warm prospect mid-discussion

## Options considered

1. **Promote cold-prospect to a distinct seventh audience** — gives the register modulation its own categorical line. Rejected: introduces a categorical break where a continuum exists. Cold→warm is a temporal trajectory of one relationship, not two distinct audience types. Splitting forces context files to duplicate ConnexusMinds-register material across two audience sections.

2. **Keep audience 3 as the umbrella; codify cold→warm as a register sub-mode** (accepted) — preserves the audience-as-relationship abstraction; locates the modulation as a within-audience overlay rather than a new category. Tier-4 CLIENT-DELIVERABLES.md (and future MARKETING.md) handle the cold→warm gradient as an explicit register submode.

3. **Audience 3 limited to active-discussion; cold-prospect as audience 7** — rejected. Asymmetric: defining audience 3 by relationship-state would force similar splits elsewhere (audience 2 cold-visitor vs returning-reader; audience 4 routine-collab vs new-collab).

## Decision

Audience model remains at **six**. Cold-prospect ConnexusMinds counterparts are codified as a *first-touch register modulation* of audience 3, not as a distinct audience.

The modulation is documented at:
- `4-CONTEXTS/CLIENT-DELIVERABLES.md` — audience-3 register section names two sub-modes: cold-first-touch and warm-active-discussion, with explicit voice and copy adjustments per sub-mode
- (future) `4-CONTEXTS/MARKETING.md` — if/when authored — defaults to the cold-first-touch sub-mode

## Rationale

**Audience is best abstracted as relationship type, not relationship temperature.** Cold-prospect and warm-prospect are the same relationship type (commercial counterpart) at different points along its lifecycle. Splitting by temperature would set a precedent forcing similar splits across other audiences.

**The communicator skill already handles this.** The operator's existing `communicator` skill modulates voice by recipient state. The design system's job is to declare the audience taxonomy; modulation logic stays in the skill plus context-file submodes.

**Six is operationally tractable; seven creates duplication.** With six, ConnexusMinds register material has one home (audience 3 in BRAND.md and CLIENT-DELIVERABLES.md). With seven, the same material would split — forcing cross-references that drift over time.

**The temporal-not-categorical signal is correct.** Claude Design's observation that the register modulation matters is right; the proposed remedy (new audience) was wrong. Codifying it as an explicit register submode preserves the signal without inflating the taxonomy.

## Consequences

**Commits us to**:
- `4-CONTEXTS/CLIENT-DELIVERABLES.md` declaring two named submodes for audience 3: cold-first-touch and warm-active-discussion
- Each submode declaring its register adjustments (credentialing posture, assumed shared context, BLUF density, call-to-action restraint)
- Tier-4 future MARKETING.md (if authored) defaulting to cold-first-touch submode and citing CLIENT-DELIVERABLES.md as the register source

**Forecloses**:
- Seven-audience taxonomy
- Splitting audience 3 by relationship temperature
- Treating cold-prospect as a separate audience category in any tier file

**Opens**:
- Audience-as-relationship-type stays a clean abstraction; future audience changes flow from new relationship types, not relationship-state granularity
- Submode pattern available for future audiences if a similar modulation surfaces (e.g., audience 4 collaborator-onboarding vs collaborator-routine)

## Related records

- Governing plan: `99-PLANS/260422-0A-SYS-DESIGN_SYSTEM_UNIFICATION-PLAN.md`
- Prior ADRs: `0003-two-brand-scope.md`
- Downstream files affected:
  - `BRIEF.md §2` — no change to audience count
  - `1-FOUNDATIONS/BRAND.md §2` — audience-3 sub-mode reference added
  - `4-CONTEXTS/CLIENT-DELIVERABLES.md` — two submodes declared (cold-first-touch / warm-active-discussion)
- Related: `~/Local/00-ENABLEMENT/SKILLS/communicator/SKILL.md` — handles modulation logic; design system declares the taxonomy
