# ADR 0004 — SEED contradictions resolution (ConnexusMinds palette, gradient name, WCAG headline, authority order)

**Date**: 2026-04-27
**Status**: Accepted
**Author**: Mitch Hensman (ratified); Claude Code (scribed)

## Context

Claude Design's session-1-to-3 review surfaced four contradictions inside the ConnexusMinds SEED corpus (`SEED/CONNEXUSMINDS-colour-guide.md` and `SEED/CONNEXUSMINDS-brand-design-guide.md`):

1. **Palette closure** — colour-guide names five colours (Deep Teal, Network Navy, Intelligence Sage, Insight Amber, Wisdom Grey). Brand-design-guide §2.2 introduces a sixth — Connection Coral `#DC2626` for "Alert states and priority communications".
2. **Gradient naming** — colour-guide names the Sage→Deep Teal 45° gradient "Growth Path"; brand-design-guide §2.3 names the same gradient "Growth Trajectory".
3. **WCAG-AA blanket claim** — colour-guide §Accessibility states "All colors pass WCAG AA (4.5:1 minimum)". Measured: Insight Amber `#D97706` on white = 3.19:1 — fails AA body text (passes 3:1 large/non-text only). The same colour guide carries the operative constraint "Never place Insight Amber text on white backgrounds"; the constraint is correct, the headline is not.
4. **Meta-rule** — when colour-guide and brand-design-guide disagree, no priority order is declared. Claude Design's session-1 propagation trusted the colour-guide alone; tier-1 BRAND.md and ANTI-PATTERNS.md inherited the wrong palette closure and gradient name.

A fourth measured pair surfaced in session 2: Connection Coral on white = 4.83:1 (passes AA body); Coral vs Insight Amber = 1.52:1 (hue confusion — these two must not appear adjacent as semantically distinct cues).

## Options considered

### A. Palette closure

1. **Five-colour closure** (colour-guide reading) — clean brand-identity palette. Rejected; ignores brand-design-guide's explicit Coral role for alerts. The functional gap (no semantic-alert colour) would force tier-2 to invent one.
2. **Six-colour closure including Coral as a primary brand colour** — rejected; Coral is in the brand-design-guide's "Supporting Palette: Cognitive Contrast System", not the Primary Palette. Promoting it to brand-identity status overstates its role.
3. **Six-colour closure with Coral as a semantic-alert role** (accepted) — preserves the five-colour brand-identity palette as the primary visual identity (logo, hero, primary buttons, body) while admitting Coral as a sixth colour scoped to error/alert/priority semantics. Matches the brand-design-guide's classification.

### B. Gradient name

1. **"Growth Path"** (colour-guide) — rejected. Stands alone; breaks the brand-design-guide's internally consistent flow-noun pattern ("Intelligence Flow", "Growth Trajectory", "Insight Emergence").
2. **"Growth Trajectory"** (brand-design-guide, accepted) — internally consistent across the gradient set; canonical.

### C. WCAG-AA SEED-headline

1. **Edit SEED in place** — rejected; SEED is a do-not-modify-in-place corpus (per `SEED/README.md`), with the narrow exception of UNVERIFIED-style annotations (the v0.1.4 OPAL precedent).
2. **Annotate SEED with a measurement note + flag the headline as overstated** (accepted) — preserves SEED integrity; the design-system layer (tier-2 colour) derives accurate per-pair contrast tables and treats the SEED headline as an aspirational claim contradicted by SEED's own operative constraint.
3. **Strip the headline** — rejected; loses the audit trail.

### D. Authority order

1. **Colour-guide priority** — rejected. Adopted by Claude Design at session 1; produced incorrect propagation on all three findings above.
2. **Brand-design-guide priority** — rejected. Sounds reasonable on this case but pre-commits to one document type; some future contradictions may flow the other way.
3. **Treat both as one canonical corpus; contradictions become ADRs** (accepted) — adjudicate per case via this repo's `decisions/` folder. Provides traceable resolution; avoids precommitting to the wrong document.

## Decision

1. **Palette is six colours** with Coral scoped to semantic-alert role only:
   - Brand-identity layer (5): Deep Teal `#0F766E`, Network Navy `#1E3A8A`, Intelligence Sage `#166534`, Insight Amber `#D97706`, Wisdom Grey `#475569`
   - Semantic-alert layer (1): Connection Coral `#DC2626` — error / priority / urgent CTA only
   - Adjacency constraint: Coral and Insight Amber must not appear as semantically distinct adjacent cues (1.52:1 hue confusion)
2. **"Growth Trajectory" is the canonical gradient name** for the Sage→Deep Teal 45° gradient.
3. **WCAG-AA SEED headline is overstated**; tier-2 colour authoring derives accurate per-pair contrast tables and codifies the operative SEED constraint (Amber-text-on-white forbidden). The SEED file gets a CLARIFICATION annotation matching the v0.1.4 UNVERIFIED-claim precedent.
4. **Meta-rule**: SEED corpus is one body. Contradictions resolve via ADR. Neither document type has automatic priority.

## Rationale

**Six-with-semantic-scope honours both SEED docs.** The colour-guide is internally consistent for the brand-identity palette; the brand-design-guide is internally consistent for the broader system that includes alerts. Reading them as "core palette + supporting palette" rather than "5 vs 6" makes the apparent contradiction dissolve. This matches how Coral is actually positioned in §2.2 of the brand-design-guide ("Cognitive Contrast System").

**"Growth Trajectory" wins on internal consistency.** Brand-design-guide names three gradients with parallel construction (`-tion`/`-ory`/`-ence`); "Growth Path" breaks the pattern. Internal-consistency arguments outrank single-document precedence when the flow is otherwise harmonious.

**Annotate-don't-edit preserves SEED integrity.** The v0.1.4 OPAL UNVERIFIED-claim annotation set the precedent: SEED material is preserved verbatim with safety annotations as the only in-place modification. The design-system layer (tier-2) then derives correct values. This keeps SEED auditable and forces the design system to be the locus of decisions.

**Per-case ADR adjudication respects the asymmetry of these two docs.** The colour-guide tends to be operational (concise rules); the brand-design-guide tends to be strategic (longer, comprehensive). Neither is reliably more authoritative across all kinds of contradiction. ADR-per-case lets each contradiction reason from its own constraints without overfitting to the document layout.

## Consequences

**Commits us to**:
- Tier-2 `colour.md` + `colour.yaml` declaring six-colour palette with Coral scoped to error/alert semantics
- Tier-2 `colour.md` declaring the Coral–Amber adjacency constraint as a hard rule
- Tier-2 derivation of accurate per-pair contrast tables for ConnexusMinds; SEED headline contradicted-by-evidence
- A CLARIFICATION annotation appended to `SEED/CONNEXUSMINDS-colour-guide.md` covering both the WCAG headline and the gradient-name correction (does not modify the body of the document; matches OPAL-precedent annotation style)
- BRAND.md §3.1.2 and ANTI-PATTERNS.md `[ConnexusMinds]` sections updated by Claude Design at session-3 close to reflect the six-colour closure and the corrected gradient name
- Per-case ADR adjudication for any future SEED contradictions

**Forecloses**:
- Five-colour-only closure of ConnexusMinds palette
- "Growth Path" as a canonical gradient name
- Trusting any blanket WCAG claim from SEED without measurement
- Precommitting to either SEED doc as a default authority

**Opens**:
- Coral admits a clean error/alert semantic role; tier-2 has a sanctioned colour for "system error", "destructive action", "priority alert"
- Tier-2 contrast tables become authoritative; SEED becomes audit trail rather than spec
- Future SEED contradictions resolve cleanly via this ADR pattern

## Related records

- Governing plan: `99-PLANS/260422-0A-SYS-DESIGN_SYSTEM_UNIFICATION-PLAN.md`
- Prior ADRs: `0003-two-brand-scope.md` (defined the two-brand corpus that hosts the contradiction)
- Source documents:
  - `SEED/CONNEXUSMINDS-colour-guide.md` — receives CLARIFICATION annotation
  - `SEED/CONNEXUSMINDS-brand-design-guide.md` — unchanged (already internally consistent)
- Downstream files affected:
  - `1-FOUNDATIONS/BRAND.md` §3.1.2 — palette closure correction; coral-amber adjacency rule
  - `1-FOUNDATIONS/ANTI-PATTERNS.md` `[ConnexusMinds] Palette drift` — corrected closure; gradient name; coral-amber adjacency
  - `2-TOKENS/colour.md` + `colour.yaml` — six-colour palette; per-pair contrast tables; semantic-alert scoping
- Inherited from Claude Design web-side ADRs 0006–0008 (numbering reconciled at integration; see ADR 0010)
