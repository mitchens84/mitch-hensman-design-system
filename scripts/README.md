---
title: Scripts
status: AUTHORED
last_reviewed: 2026-05-04
---

# Scripts

Automation for design-system maintenance. Each script is independently runnable; no orchestration framework.

## Scripts (planned + present)

| Script | Purpose | Status |
|---|---|---|
| `diff-tokens.sh` | Compare `2-TOKENS/colour.yaml` vs `SEED/tokens-reference.css` (and other token kinds) — surface drift between spec and running CSS | ✓ scaffold present |
| `skill-binding-audit.sh` | Walk `~/Local/00-ENABLEMENT/SKILLS/*/SKILL.md`; verify `## Design system bindings` cite resolvable file paths and recent commit SHAs | TBD |
| `coverage-check.sh` | Walk `1-FOUNDATIONS/`, `2-TOKENS/`, `3-PATTERNS/`, `4-CONTEXTS/`, `5-INTERFACES/`; report which files are still scaffold-only vs authored; cross-check against `CATALOGUE.md §2` | TBD |
| `fixture-run.sh` | Iterate `fixtures/*.md`; for each, prepare the prompt + run through Claude Code (or print instructions to run in Claude Design); record pass/fail | TBD |

## Conventions

- POSIX-shell where possible; Python only when shell becomes unwieldy
- No external deps beyond standard Unix tools + `git` + `yq` (yaml query)
- Idempotent — running twice produces the same result
- Exit 0 on pass, non-zero on fail; readable output for human + machine consumption
