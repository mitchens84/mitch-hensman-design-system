# Sessions

Date-stamped notes from Claude Design authoring sessions against this repo. Create one file per session; use `TEMPLATE.md` as starting structure.

## Naming

`YYMMDD-session-NN.md` — where `NN` is the session number (01, 02, …). Example: `260425-session-01.md`.

## Purpose

Session notes serve three concerns:

1. **Continuity across sessions** — the next session opens with "last session we decided X; today I want to work on Y", preventing re-debate of settled decisions
2. **Drift detection** — in-session review of brief adherence; surfaces the anti-pattern-on-the-margin the operator spotted but didn't formally correct
3. **Governance trail** — material decisions migrate from session notes to `decisions/` as ADRs; `CHANGELOG.md` entries reference session files when the change is commit-worthy

## What to capture

Per session, capture:

- Opening prompt (or a diff from the canonical playbook opening)
- Grounding-summary verification (did Claude Design's summary of voice / constraints / anti-patterns match?)
- Tier(s) worked on and which files touched
- Decisions made — each with one-line rationale
- Open questions that surfaced
- Observed drift, if any, and the corrective prompts used
- Anything worth re-using in the playbook (successful prompt patterns)

## What NOT to capture

Do not paste full Claude Design output into session notes — the output lives in the tier files themselves. Session notes describe the *process*, not the artefact.

## Template

See `TEMPLATE.md` for the full structure.
