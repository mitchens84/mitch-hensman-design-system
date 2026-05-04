# Tier 2 — Tokens

Machine-readable layer. Paired `.md` (spec + rationale) and `.yaml` (machine-consumable) per token kind. `tokens.yaml` provides the unified export for Claude Design extraction, Figma tokens import, and future tooling.

## Token kinds

- `colour.md` + `colour.yaml`
- `typography.md` + `typography.yaml`
- `spacing.md` + `spacing.yaml`
- `motion.md` + `motion.yaml`
- `iconography.md` + `iconography.yaml` (added v0.1.8)
- `radii.md` + `radii.yaml` (added v0.1.8)
- `elevation.md` + `elevation.yaml` (added v0.1.8)
- `breakpoints.md` + `breakpoints.yaml` (added v0.1.8)
- `tokens.yaml` — unified export

## Namespacing

Per ADR 0007: nested source under `hensph.*`, `connexusminds.*`, and `shared.*` namespaces in single files per token kind. Per-brand exports generated at Tier 5.

## Sync with website CSS

Website repo CSS (`SEED/tokens-reference.css`, `SEED/typography-reference.css`) is the running HensPham implementation. Token spec here describes and extends it. Sync direction decided at integration time; default is CSS canonical, YAML hand-mirrored, drift detected by `scripts/diff-tokens.sh`.

For ConnexusMinds: tokens derived from spec (`SEED/CONNEXUSMINDS-*`), not from running CSS (no site source exists). Reconciliation marker per ADR 0011.

Authored in Claude Design from `SEED/` extraction. See SESSION-PLAYBOOK §3 for sequencing.
