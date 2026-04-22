# Tier 2 — Tokens

Machine-readable layer. Colour, typography, spacing, motion. Paired `.md` (spec + rationale) and `.yaml` (machine-consumable). `tokens.yaml` provides the unified export for Claude Design extraction, Figma tokens import, and future tooling.

## Files

- `colour.md` + `colour.yaml`
- `typography.md` + `typography.yaml`
- `spacing.md` + `spacing.yaml`
- `motion.md` + `motion.yaml`
- `tokens.yaml` — unified export

## Sync with website CSS

Website repo CSS (`SEED/tokens-reference.css`, `SEED/typography-reference.css`) is the running implementation. Token spec here describes and extends it. Sync direction decided at integration time; default is CSS canonical, YAML hand-mirrored with verification script.

Authored in Claude Design from `SEED/` extraction.
