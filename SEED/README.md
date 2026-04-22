# SEED

Reference material Claude Design reads as starting context during authoring sessions. **These files are inputs, not canonical outputs** — authored content lives in tier directories (`1-FOUNDATIONS/` through `5-INTERFACES/`).

## Contents

| File | Role |
|---|---|
| `DESIGN-SIGNALS.md` | Synthesised signals from existing content — character spine, principles, voice samples, hard constraints, admiration references, open questions |
| `PHILOSOPHY-2024.md` | Archived December 2024 design philosophy (eight named principles with LBS mapping, implementation guidance, anti-patterns). Serious prior art |
| `STD-STYLE_GUIDE-excerpt.md` | Canonical brand identity excerpt (brand foundation, typography, voice) |
| `VOICE-CONSTRAINTS.md` | Consolidated hard constraints from `MEMORY.md` + `CLAUDE.md §0.3` |
| `tokens-reference.css` | Actual running CSS tokens from mitch-hensman.com — the working implementation |
| `typography-reference.css` | Actual running typography CSS from mitch-hensman.com |

## Do not edit `SEED/` during Claude Design sessions

SEED captures state at handoff time. If a SEED file becomes stale (e.g., brand identity updates, new voice constraints added in `MEMORY.md`), replace it from source before the next session; do not modify it in place. This keeps authoring sessions reproducible and auditable.

## Additions to SEED

Before adding a new SEED file, ask whether it would be better as a scaffold input (SEED) or a first-class tier file. SEED is for raw, unstructured reference material; tier files are authored, structured, canonical.
