# ADR 0007 — Token architecture: nested source-of-truth, per-brand exports

**Date**: 2026-04-27
**Status**: Accepted
**Author**: Mitch Hensman (ratified); Claude Code (scribed)

## Context

`BRIEF.md §1a` flagged the decision and asked for an ADR before tier-2 colour authoring opens. Two options were on the table:

1. **Nested namespaces in unified files** — `2-TOKENS/colour.yaml` carries `colour.hensph.*` and `colour.connexusminds.*`. One source-of-truth file per token kind.
2. **Split files per brand** — `2-TOKENS/colour.hensph.yaml` + `2-TOKENS/colour.connexusminds.yaml`. Aligned with two-brand architecture; consumers pick the namespace they need.

Claude Design's session-3 weak preference was nested. The repo-side question is whether consumer-side import patterns (Astro builds; CSS exports; skill adapters) prefer nested or split.

The HensPham consumer (`mitch-hensman.com` via Astro) consumes tokens as TS / CSS imports — selective imports are file-based at the build layer. The ConnexusMinds consumer (when its site source attaches; per ADR 0004 / handoff §4) will likely follow the same pattern.

The 5-INTERFACES tier exists precisely to translate authored sources into consumer-specific exports.

## Options considered

1. **Nested source + nested exports** — single .yaml + single .css with brand-prefixed selectors. Rejected; forces consumers to know the namespace prefix and either over-import (loading both brands) or strip at build time.

2. **Split source + split exports** — two .yaml files at tier-2 + two .css files at tier-5. Rejected; doubles authoring surface; makes shared-token-kind invariants invisible at a glance (drift risk); precommits to the split before authoring shows whether shared tokens emerge.

3. **Nested source + per-brand exports** (accepted) — tier-2 holds one .yaml per token kind with nested namespaces (`hensph.*` + `connexusminds.*`); tier-5 generates per-brand exports (`5-INTERFACES/css/hensph.css`, `5-INTERFACES/css/connexusminds.css`). Source has one home; consumers see clean per-brand surfaces.

4. **Single namespace, register variation only** — rejected at ADR 0003. The two brands are genuinely distinct (palette, gradients, type), not register variations.

## Decision

**Tier-2 sources are nested**: one `colour.yaml`, one `typography.yaml`, one `spacing.yaml`, one `motion.yaml`. Each carries `hensph.*` and `connexusminds.*` namespaces. Token kinds with no per-brand divergence (e.g., spacing scale if shared) declare under a `shared.*` namespace explicitly; per-brand overrides under their own namespace.

**Tier-5 exports are per-brand**: `5-INTERFACES/css/hensph.css`, `5-INTERFACES/css/connexusminds.css`, `5-INTERFACES/yaml/hensph.yaml`, `5-INTERFACES/yaml/connexusminds.yaml`. Each export imports only its namespace plus `shared.*`.

**Tokens.yaml unified export** (per BRIEF §11) imports the full nested source for cases where a consumer wants both brands (e.g., the design system's own documentation site).

## Rationale

**Source-side parsimony, consumer-side cleanliness.** The decision separates authoring concerns (one file per token kind; shared invariants visible at a glance) from consumption concerns (selective per-brand imports). This is the same separation the operating system uses everywhere: source-of-truth is dense and consolidated; exports are tailored to consumer.

**Drift risk minimised.** When a HensPham change is intended to apply to ConnexusMinds (say, a typography scale ratio agreed across both brands), nested-source makes the parallelism visible — `hensph.scale.body` and `connexusminds.scale.body` sit lines apart and review-diff catches divergence. Split-source makes the parallelism invisible.

**Matches ANTI-PATTERNS precedent.** ADR 0007 web-side (Accepted pending sign-off) established that ANTI-PATTERNS.md uses tagged sections (`[Shared]`, `[HensPham]`, `[ConnexusMinds]`) within a single file. Tier-2 nested-source is the analogous pattern: one file with brand-tagged content. Cross-tier consistency.

**Selective imports happen at the right layer.** Tier-5 INTERFACES exists precisely to translate sources to consumer needs; that's where the per-brand split should live. Doing the split at tier-2 conflates source-of-truth with delivery format.

**Future brand additions scale by adding a namespace, not a new file pair.** If a third brand surface emerges (operator's books/podcast/etc.), it adds `othersurf.*` to nested sources and a new export at tier-5 — without touching the existing two brands.

## Consequences

**Commits us to**:
- Tier-2 colour authoring (next session) opens with this nesting structure
- Top-level YAML schema declaring `shared`, `hensph`, `connexusminds` as canonical namespaces with explicit `shared.*` for genuine cross-brand tokens
- Tier-5 INTERFACES authoring producing per-brand `.css`, `.yaml`, and skill-adapter exports
- A namespace-discipline rule: any new token kind declares whether its values are `shared` (defaulted across brands) or per-brand from the start; the choice is explicit, never implicit

**Forecloses**:
- Split-source tier-2 token files
- Single-namespace flat tokens
- Implicit shared values (every token kind is explicit about its namespace)

**Opens**:
- Selective per-brand imports without consumers ever knowing the source nesting
- Cross-brand drift detection at review time (parallelism visible)
- Future brand-surface additions without rearchitecting tier-2

## Related records

- Governing plan: `99-PLANS/260422-0A-SYS-DESIGN_SYSTEM_UNIFICATION-PLAN.md`
- Prior ADRs: `0003-two-brand-scope.md`
- Downstream files affected:
  - `2-TOKENS/colour.md` + `colour.yaml` — nested namespaces
  - `2-TOKENS/typography.md` + `typography.yaml` — nested namespaces
  - `2-TOKENS/spacing.md` + `spacing.yaml` — likely `shared.*` plus per-brand overrides
  - `2-TOKENS/motion.md` + `motion.yaml` — likely `shared.*` (default-off stance is brand-agnostic)
  - `2-TOKENS/tokens.yaml` — unified export (full nested)
  - `5-INTERFACES/css/hensph.css`, `5-INTERFACES/css/connexusminds.css` — per-brand CSS exports
  - `5-INTERFACES/yaml/hensph.yaml`, `5-INTERFACES/yaml/connexusminds.yaml` — per-brand YAML exports
  - `5-INTERFACES/CSS-CANONICAL.md` — describes the source→export relationship
- Related: `1-FOUNDATIONS/ANTI-PATTERNS.md` per-brand tagging precedent (web-side ADR 0007)
