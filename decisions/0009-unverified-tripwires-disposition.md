# ADR 0009 — UNVERIFIED tripwires: strip percentages, retain principles

**Date**: 2026-04-27
**Status**: Accepted
**Author**: Mitch Hensman (ratified); Claude Code (scribed)

## Context

`BRIEF.md §11` declares that any quantitative claim sourced from `SEED/VOICE-FRAMEWORKS.md` or `SEED/VISUAL-FRAMEWORKS.md` must be traced to primary literature before being restated in an authored tier file. SEED files aggregate prior NotebookLM synthesis; AI-inference-laundered numbers are a known risk.

Three quantitative claims surface in the SEED corpus:

1. **`SEED/VISUAL-FRAMEWORKS.md` §2 (OPAL)** — "94.3% accuracy on preserving exact material quality, colour coordination, and patterns". Annotated UNVERIFIED at v0.1.4: the figure does not trace to OPAL primary literature (Vivian Liu et al., ACM — OPAL's published scope is multimodal image generation for news illustration, not product-imagery preservation).

2. **`SEED/VISUAL-FRAMEWORKS.md` §5 (brand style mimicry)** — "Generative AI rejects trademarked elements up to 90% of the time". Annotated UNVERIFIED at v0.1.4: closest public claim describes inverse causality (brands rejecting AI videos, not AI tools rejecting trademarked elements).

3. **`SEED/CONNEXUSMINDS-colour-guide.md` §Accessibility** — "All colors pass WCAG AA (4.5:1 minimum)". Measured false for Insight Amber on white (3.19:1). Resolution at ADR 0004 (CLARIFICATION annotation; tier-2 derives accurate per-pair tables).

The first two haven't blocked tier-1 authoring (ANTI-PATTERNS.md cites the trademarked-element principle without quoting the rejection rate). They will block tier-3 IMAGERY.md authoring, which depends substantively on `SEED/VISUAL-FRAMEWORKS.md`.

## Options considered

1. **Trace to primary source; cite if traceable; strip if not** — the BRIEF §11 default. For OPAL 94.3% and 90% rejection: not traceable. The implication is strip.

2. **Author as "provisional / awaiting verification"** — rejected. Tier files are not the place for provisional quantitative claims; either the figure carries its weight in primary literature or it doesn't appear. Provisional figures invite future drift toward citation.

3. **Strip the quantitative claim, retain the underlying principle without the number** (accepted) — the *principle* that AI-generated product imagery should preserve product appearance is sound regardless of OPAL's accuracy figure. The *principle* that trademarked visual elements warrant abstraction via descriptive composition is sound regardless of any 90% figure. Tier-3 IMAGERY.md authors the principles; the figures don't appear.

## Decision

For each unverified figure, the disposition is: **strip the figure; retain the principle**.

1. **OPAL accuracy 94.3%** — strip from any tier-3 reference. Tier-3 IMAGERY.md may cite OPAL as a named framework for the "AI-augmented product imagery must preserve product appearance" principle, without quoting any accuracy figure.

2. **90% trademark rejection rate** — strip from any tier-3 reference. Tier-3 IMAGERY.md and `1-FOUNDATIONS/ANTI-PATTERNS.md` may declare the "abstract trademarked elements via descriptive composition rather than direct generation" principle without quoting any rejection rate.

3. **WCAG-AA blanket claim** — covered at ADR 0004; SEED CLARIFICATION annotation; tier-2 derives accurate per-pair tables.

The SEED files retain their UNVERIFIED annotations as audit trail. Authored tier files cite the named frameworks (OPAL, CIM, brand-style-mimicry-pattern) without restating the unverified figures.

## Rationale

**Quantitative claims must carry primary-source weight.** The operating system principle (CP3 in `CLAUDE.md`) — verify before asserting — applies categorically. If the figure can't be traced, restating it is laundering the claim through the design system. The figure's absence is more honest than its presence.

**Principles survive without the percentages.** "Preserve product appearance under AI augmentation" is operationally identical with or without 94.3%. "Abstract trademarked elements via composition" is operationally identical with or without 90%. The figures were never load-bearing; they were rhetorical.

**Tier-3 IMAGERY can proceed without these figures.** No anti-pattern, pattern rule, or design directive in IMAGERY.md actually depends on either percentage. Removing them costs nothing operationally; preserving them creates an audit-trail liability.

**The SEED corpus stays intact for audit.** Stripping figures from tier files is the right move for the design-system layer; the SEED retains the original claim with its UNVERIFIED annotation so future investigation can re-trace if the literature changes.

## Consequences

**Commits us to**:
- Tier-3 IMAGERY.md authoring without the OPAL 94.3% or 90% rejection figures
- ANTI-PATTERNS.md trademark-element rule without quoting any rejection-rate
- The SEED UNVERIFIED annotations remain in place; future re-tracing is welcome but not blocking
- The "strip the figure; retain the principle" pattern as a standing rule for any future SEED-aggregated quantitative claim that fails to trace

**Forecloses**:
- Citation of OPAL 94.3% in any authored tier file
- Citation of 90% trademark rejection in any authored tier file
- "Provisional / awaiting verification" as an authoring posture for quantitative claims (claims either trace and cite, or don't appear)

**Opens**:
- Tier-3 IMAGERY authoring proceeds without traceability blockage
- A clean precedent for handling AI-inference-laundered numbers across the SEED corpus
- Future SEED traces (if either figure becomes traceable) can re-cite via ADR

## Related records

- Governing plan: `99-PLANS/260422-0A-SYS-DESIGN_SYSTEM_UNIFICATION-PLAN.md`
- Prior ADRs: `0004-seed-contradictions-resolution.md` (covers the WCAG-AA SEED-headline disposition)
- BRIEF §11 — source-claim verification rule that prompted this disposition
- Source SEED annotations:
  - `SEED/VISUAL-FRAMEWORKS.md` §2 OPAL (UNVERIFIED comment in place since v0.1.4)
  - `SEED/VISUAL-FRAMEWORKS.md` §5 brand-style-mimicry (UNVERIFIED comment in place since v0.1.4)
- Downstream files affected:
  - `1-FOUNDATIONS/ANTI-PATTERNS.md` — trademark-element rule cites principle; no rejection-rate
  - `3-PATTERNS/IMAGERY.md` — OPAL cited as named framework; no accuracy figure
