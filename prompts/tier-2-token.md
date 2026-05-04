---
title: Tier-2 Token Prompt
tier: 2
status: AUTHORED
parameterise: <KIND> ∈ {colour, typography, spacing, motion, radii, elevation, breakpoints, iconography}
parameterise: <BRAND> ∈ {hensph, connexusminds, shared} — for namespace-aware token kinds
sequencing_note: Per ADR 0008 + SESSION-PLAYBOOK §3, Tier-2 colour authored FIRST (HensPham → ConnexusMinds → shared); other kinds follow.
---

# Prompt — Tier 2 Tokens: `2-TOKENS/<KIND>.{md,yaml}` for `<BRAND>` namespace

Apply the universal opening from `prompts/_universal-opening.md`, then continue.

## Tier-specific reading

- `BRIEF.md §11 → 2-TOKENS` — completeness test for `<KIND>`
- `DEPENDENCIES.md` — what Tier-3 patterns depend on this token
- `decisions/0007-token-architecture-nested-source-split-exports.md` — namespace structure (`hensph.*`, `connexusminds.*`, `shared.*` in single files per kind)
- `decisions/0008-tier-sequencing.md` — colour first, both brands, then typography, then spacing
- For `<KIND>=colour` HensPham: `SEED/tokens-reference.css` is canonical extraction source
- For `<KIND>=colour` ConnexusMinds: `SEED/CONNEXUSMINDS-colour-guide.md` (with v0.1.7 CLARIFICATION annotations) + ADR 0004 (six-colour palette, gradient names, Coral-Amber adjacency ban)
- For `<KIND>=typography` HensPham: `SEED/typography-reference.css`
- For `<KIND>=motion`: BRIEF §3 motion stance (default-off; functional-only justification)
- For `<KIND>=radii`: BRIEF §4 (no big rounded corners)
- For `<KIND>=elevation`: BRIEF §4 (no drop-shadow defaults — this file likely encodes a no-shadow stance)
- `docs/TIER-2-INHERITANCE-LOG.md` — open debts inherited from prior sessions

## Anchors most relevant for this tier

- `references/edward-tufte.md` — for typography (ET Book MIT; tufte-css sidenote ratio ~55%/40%); for colour (zero-accent UI chrome)
- `references/stripe-press.md` — for colour (zero UI colour; all chromatic interest from content)
- `references/frank-chimero.md` — for typography (60–70 ch measure); colour (`theme-color: #000000`)
- `references/craig-mod.md` — for typography (60–70 ch measure; numbered footnote anchoring)
- `references/govuk-design-system.md` — for colour (institutional-restraint palette structure: link colour + status colours + nothing else)

## Personal-markers most likely to surface

- For `<KIND>=colour` ConnexusMinds: §7 (network-topology gradient permission as deliberate divergence)
- For `<KIND>=typography`: §5 (Thai + Vietnamese script support — typography token must declare fallback strategy)
- For other kinds: PERSONAL-MARKERS rarely surface in token authoring; tokens are structural, not voice-bearing

## Anti-patterns most at risk

- **Default Tailwind grey scale** (`neutral-50` through `neutral-950`) — explicitly banned per BRIEF §4. Curate greys deliberately; name them by role.
- **Generic-AI palette** — purple → blue → cyan gradient defaults. Cite the anchor or the operator-input source for every accent colour.
- **Decorative motion tokens** — every motion token must declare functional purpose; reject otherwise.
- **Typography weight inflation** — listing 100/200/300/400/500/600/700/800/900 weights in the spec when only 400/600 are used. Spec only what ships.

## Authoring guidance

- Extract before generate. Where running CSS exists (HensPham), enumerate what's there before proposing additions.
- Per ADR 0007: nested namespacing in single file (`hensph.colour.surface.base`, `connexusminds.colour.brand.primary`, `shared.colour.semantic.error`).
- Provide `colour.md` (rationale per token, role description, contrast pairs verified) AND `colour.yaml` (machine-readable). They are paired.
- For ConnexusMinds tokens: derived from spec, not from running CSS (no site source exists). Mark each token with the reconciliation note: `# reconcile-with: first-deployed CM artefact (per ADR 0011)`.
- Verify accessibility on every contrast pair. Flag failures (e.g. SEED CLARIFICATION on Insight Amber on white = 3.19:1, fails AA body) rather than papering over them.

## Completeness test

Per BRIEF §11. For colour: primitives → semantic → component hierarchy declared; all semantic roles paired-with-text verified WCAG AA; dark-mode contract specified; extraction citations per kept-or-renamed token.

## Authoring sequence

1. List existing tokens of this kind from canonical source (CSS or SEED spec)
2. Map each existing token to a semantic name (or flag for retire)
3. Propose additions with rationale per addition
4. Author `<KIND>.md` (spec + rationale)
5. Author `<KIND>.yaml` (machine-readable)
6. Run `scripts/diff-tokens.sh <KIND>` (logic activates as files become non-scaffold)
7. Update `2-TOKENS/tokens.yaml` aggregate import

## End-of-session

Per universal-opening end-of-session contract. Specifically for Tier-2:

- Token files are downstream of decisions but upstream of all patterns and contexts. A token committed wrong propagates expensively. Operator review cadence: don't commit until at least one Tier-3 file is sketched against the new token to validate it works in practice.
- Update `docs/TIER-2-INHERITANCE-LOG.md`: any debts resolved? Any new debts surfaced?
