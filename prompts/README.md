---
title: Reusable Claude Design Prompts
status: AUTHORED — per-tier prompt templates
last_reviewed: 2026-05-04
---

# Reusable Claude Design Prompts

Each file is a session-opening prompt the operator can paste into Claude Design to author a specific tier file. Prompts are reusable, parameterised by `<placeholder>` for the actual tier-context details.

## Why these exist

Claude Design sessions are otherwise re-briefed from scratch each time, costing the first 5–10 minutes of every session and producing inconsistent grounding. These templates encode the BRIEF + grounding ritual; the operator pastes one and the session begins productively.

## Prompt files (planned)

| File | Tier | Use when |
|---|---|---|
| `tier-1-foundations.md` | 1 | Authoring PHILOSOPHY / BRAND / VOICE / ANTI-PATTERNS / ACCESSIBILITY |
| `tier-2-token.md` | 2 | Authoring colour / typography / spacing / motion / radii / etc. (parameterised by token kind + brand) |
| `tier-3-pattern.md` | 3 | Authoring TYPOGRAPHY-HIERARCHY / LAYOUT / DATAVIZ / DOCUMENT-STRUCTURE / INTERACTION / MULTILINGUAL / IMAGERY / ICONOGRAPHY |
| `tier-4-context.md` | 4 | Authoring per-surface application (parameterised by surface name) |
| `tier-5-interface.md` | 5 | Authoring interface specs (CSS-CANONICAL / YAML-EXPORT / etc.) |
| `revision.md` | any | Revising existing tier content based on review feedback |

## Universal opening (all prompts include)

Every prompt begins with:

```
Read these files in order before generating anything:
1. /BRIEF.md
2. /1-FOUNDATIONS/ANTI-GENERIC-PROTOCOL.md
3. /1-FOUNDATIONS/PERSONAL-MARKERS.md
4. /SEED/DESIGN-SIGNALS.md
5. The specific files referenced in this prompt's "tier-specific reading" block

Then perform the per-session ritual from ANTI-GENERIC-PROTOCOL §6 before producing output:
1. State the task in one sentence
2. Cite ≥1 anchor from references/
3. Cite ≥1 PERSONAL-MARKERS lever
4. Cite ≥1 BRIEF anti-pattern at risk
5. Begin
```

## Drift

When BRIEF or ANTI-GENERIC-PROTOCOL changes, every prompt file in this folder may need an update. Operator runs `grep -l 'BRIEF.md\|ANTI-GENERIC' prompts/*.md` and reviews each.
