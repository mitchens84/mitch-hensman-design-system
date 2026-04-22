# Goal Overrides

Per-LBS or per-goal voice and visual adaptations that compose with foundation voice. Use this directory when a specific goal needs a different register or visual treatment than the default foundation voice.

## Pattern

File naming: `{LBS}-{GOAL}.md` (e.g., `7A-SITRUNA.md`, `2L-HEALING.md`) or `{LBS}.md` (e.g., `7A.md`) for LBS-wide overrides.

Each override file should declare:
- Which foundation rules it overrides
- Why the override exists (goal-specific constraint or audience)
- Applicable contexts (all, or specific Tier 4 contexts)
- Any timebox (permanent override, or for duration of specific project)

## Default behaviour

If no override exists for a goal, that goal uses the foundation voice and tier-3 patterns unchanged.

## Composition rules

Overrides COMPOSE with foundation rules; they do not replace them wholesale. Override declares what changes; foundation everything else.

Populated over time as goals require it. At v0.1, this directory holds only this README.
