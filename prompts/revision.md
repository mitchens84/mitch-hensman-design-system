---
title: Revision Prompt
tier: any
status: AUTHORED
purpose: Revise existing tier content based on review feedback (operator, Mai, cross-AI review, downstream-tier conflict)
---

# Prompt — Revise existing tier content: `<TIER>/<FILE>`

Apply the universal opening from `prompts/_universal-opening.md`, then continue.

## Tier-specific reading

- The current state of `<TIER>/<FILE>` (read fully)
- The review feedback (paste into the session: who, when, channel, full text)
- `BRIEF.md §11 → <TIER>` — completeness test the file should still meet after revision
- `decisions/` — any ADR that bears on the revision
- `DEPENDENCIES.md` — what downstream tier files this revision may invalidate
- `1-FOUNDATIONS/ANTI-GENERIC-PROTOCOL.md` — revision must not regress to generic

## Revision discipline

A revision is not a re-author. Constrain scope explicitly:

1. **State what changes** — the specific section, sentence, or rule under revision
2. **State what stays** — the surrounding content the revision preserves
3. **Cite the trigger** — review feedback (anchor by date + channel + specific quote); downstream-tier conflict (anchor by file + section); operator change-of-mind (anchor by date)
4. **Cite the new source** — every revised choice still traces to anchor / ADR / SEED / operator input per ANTI-GENERIC-PROTOCOL §2
5. **Check downstream** — per DEPENDENCIES.md, list every Tier-N+1 file potentially affected; flag for follow-up review

## Decision: revision vs ADR

If the revision changes a load-bearing decision, write an ADR. Heuristic:

- Cosmetic / wording / clarification → no ADR; CHANGELOG entry suffices
- Adds, removes, or reorders a rule → ADR
- Reverses a prior ADR → ADR (status: Supersedes ADR-NNNN)
- Operator changes mind on a confirmed_anchor → ADR + update to `references/<slug>.md` status

## Anti-patterns most at risk

- **Silent backfill** — making the revision and not recording why. Trace lost = future revision blocked.
- **Out-of-scope creep** — using the revision as cover to fix unrelated content. Resist; surface separately.
- **Generic-by-omission** — removing the specific marker that made the original non-generic. Per ANTI-GENERIC-PROTOCOL §3: the per-output weirdness check applies to revisions too.

## Authoring sequence

1. Quote the original passage being revised
2. Quote the trigger (feedback, conflict, operator input)
3. Propose the revised passage
4. Show the diff in CHANGELOG-entry-style
5. Identify every downstream file potentially affected (per DEPENDENCIES.md)
6. Decide: ADR needed?

## End-of-session

Per universal-opening contract. Specifically for revisions:

- A revision that touches three or more files in one session is suspicious — likely the operator is changing scope, not refining. Pause and confirm scope before continuing.
- Mai-triggered revisions of ConnexusMinds files: send a confirmation packet back to Mai per `reviews/MAI-REVIEW-PROTOCOL.md`.
