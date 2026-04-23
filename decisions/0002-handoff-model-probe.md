# ADR 0002 — Phase 1.5 Probe: Descoped

**Date**: 2026-04-23
**Status**: Accepted
**Author**: Mitch Hensman (ratified); Claude Code (scribed)

## Context

The governing plan `99-PLANS/260422-0A-SYS-DESIGN_SYSTEM_UNIFICATION-PLAN.md` Phase 1.5 specified a Claude Design capability probe before committing to the v5 handoff model. The probe was to empirically test whether Claude Design authors structured text and YAML into a repo (supporting the handoff-first-author-later model) or produces prototypes only (requiring a prototype-first model with post-hoc extraction).

On review 260423, the probe's documented outcome is not in the repo. The operator does not recall whether the probe was run. The scaffold was established on 260422 and committed (v0.1 through v0.1.2) before this ADR.

## Options considered

1. **Run the probe retroactively, now** — test with a small Claude Design session against the existing scaffold. Delays session 1 by ~30 minutes. Produces a clean empirical record.
2. **Descope the probe; treat session 1 as the probe** — session 1 opening exercise (grounding summary + small authoring request) serves as the empirical test. No separate probe work; any model-fit issue surfaces in session 1 and is correctable before substantive work commits. Closes the governance loop by decision rather than by test.
3. **Leave undocumented** — rejected; governance should be explicit.

## Decision

Option 2. The Phase 1.5 probe is descoped. Session 1 with this scaffold serves as the operating probe: the grounding summary step (per `docs/PROMPTING-PLAYBOOK.md §1`) plus an initial structured-output request (e.g., "draft `1-FOUNDATIONS/VOICE.md` from SEED material") directly tests whether Claude Design authors cleanly into the repo structure. If session 1 reveals that Claude Design is prototype-first rather than repo-author-capable, the plan falls back to prototype-extraction mode (Claude Design generates exemplar prototypes per context; operator or Claude Code scribes decisions into the scaffold).

## Rationale

**Scaffold cost was low enough to build without pre-test.** The scaffold establishment (v0.1) plus SEED enrichment (v0.1.1) plus BRIEF alignment (v0.1.2) completed in a single day. The probe's value was de-risking a larger commitment; the actual commitment made was modest enough that the probe's protection margin is small.

**Session 1 provides equivalent evidence at equivalent cost.** A first session must happen regardless; its opening exercises naturally test the capability questions the probe would answer. Bundling the test into session 1 saves one round-trip.

**The fallback path is cheap.** If session 1 reveals model misfit, the adjustment is adding a scribe pattern (operator or Claude Code extracts decisions from Claude Design prototypes into the scaffold). The scaffold is reusable under either model.

## Consequences

**Commits us to**: Session 1 explicitly runs as a capability probe as well as an authoring session. Document what Claude Design authored, what it produced as prototype, and which of those the operator prefers as the authoritative output. Record findings in `sessions/260xxx-session-01.md` (the file to be created on demand per playbook §8).

**Forecloses**: Delayed start; retrospective probe run.

**Opens**: Lower governance overhead; direct observation beats synthetic test.

## Related records

- Governing plan: `99-PLANS/260422-0A-SYS-DESIGN_SYSTEM_UNIFICATION-PLAN.md` — Status Log v6 records this descope decision
- Prior ADR: `0001-scaffold-establishment.md`
- Playbook: `docs/PROMPTING-PLAYBOOK.md §1` (opening prompt / grounding summary)
