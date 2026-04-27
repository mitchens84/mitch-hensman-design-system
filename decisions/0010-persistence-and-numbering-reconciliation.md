# ADR 0010 — Persistence boundary, version reconciliation, ADR numbering

**Date**: 2026-04-27
**Status**: Accepted
**Author**: Mitch Hensman (ratified); Claude Code (scribed)

## Context

Claude Design's session-1-to-3 handoff raised three structural questions that affect repo coherence:

1. **Persistence boundary** — CD has authored five tier-1 files, three ADRs (0006, 0007, 0008 web-side), and a CHANGELOG entry inside its project workspace. None of it is pushed to the repo. CD asks whether push-to-repo happens manually after each session or is batched.
2. **CHANGELOG version numbering** — CD bumped to v0.2.1 in its workspace; repo is at v0.1.6. CD's reconciliation note maps v0.2.0 to repo v0.1.7. CD asks whether repo bump for session-2 work is on `main` or pending.
3. **ADR numbering** — CD renamed 0003 → 0004 (voice-dual-register) and 0004 → 0005 (session-1-scope) at session-2 open to avoid collision with repo's `0003-two-brand-scope.md`. New web-side ADRs 0006–0008 sit downstream. CD asks whether Claude Code agrees with the renumbering and the supplement-relationship.

`docs/FIRST-SESSION-CHECKLIST.md` (added at v0.1.4) already codifies the integration steps. This ADR ratifies the answers.

## Decisions

### Persistence boundary

**Push-to-repo is operator-driven, post-session, manually.** Claude Design cannot push to GitHub. Session output sits in CD's project workspace until the operator runs the `FIRST-SESSION-CHECKLIST.md` post-session integration steps (export → diff → ADR-renumber → cross-model review → commit → push).

CHANGELOG entries authored by CD inside its workspace are *drafts*. They become canonical at integration commit. CD should continue authoring CHANGELOG entries as it has been; the operator reconciles version numbers at integration.

### CHANGELOG version reconciliation

**Repo versioning is repo-side authoritative; CD treats its workspace versions as drafts.**

The current state at session-3 close (per CD): repo `b4d3172` = v0.1.6 (no upstream changes since v0.1.6 / session-2 close).

**At integration of session-1+2+3 work**, the operator will:

1. Bump repo to **v0.1.7** for the session-1+2+3 integration commit (covers tier-1 authoring + new ADRs + the structural reconciliation in this ADR file).
2. CD's workspace v0.2.0 / v0.2.1 entries are merged under repo v0.1.7 with attribution preserved (one CHANGELOG entry per session retained; version label corrected).
3. CD continues authoring with workspace versions of its own preference; the operator continues bumping repo versions sequentially.

The repo will not jump to v0.2.x until a tier completion warrants a feature-version bump (likely after tier-2 Tokens lands; possibly after tier-3 Patterns).

### ADR numbering

**CD's renumbering 0003→0004 (voice-dual-register) and 0004→0005 (session-1-scope) is ratified.**

The supplement-relationship is correct: CD's `0004-voice-dual-register.md` supplements (does not supersede) the repo's `0003-two-brand-scope.md` — voice and scope are orthogonal concerns; the renamed file extends the framework rather than replacing the prior decision.

**For new ADRs authored at the Claude Code side this session (the eight ADRs 0004 through 0010 introduced in v0.1.7)**, the numbering claims:

- `0004-seed-contradictions-resolution.md` — Claude Code, this commit
- `0005-voice-pillar-count.md` — Claude Code, this commit (resolves CD web-side ADR 0006 Proposed)
- `0006-audience-model-six.md` — Claude Code, this commit
- `0007-token-architecture-nested-source-split-exports.md` — Claude Code, this commit
- `0008-tier-sequencing.md` — Claude Code, this commit
- `0009-unverified-tripwires-disposition.md` — Claude Code, this commit
- `0010-persistence-and-numbering-reconciliation.md` — Claude Code, this commit (this file)

**CD's web-side ADRs 0004 (voice-dual-register), 0005 (session-1-scope), 0006 (voice-pillar-split — Proposed), 0007 (anti-patterns per-brand), 0008 (memory-anchor emoji)** at integration commit will be renumbered to avoid collision:

- CD's web 0004 voice-dual-register → repo `0011-voice-dual-register.md` (supplements `0003-two-brand-scope.md`)
- CD's web 0005 session-1-scope → repo `0012-session-1-scope.md`
- CD's web 0006 voice-pillar-split (Proposed) → **superseded by `0005-voice-pillar-count.md` this commit**; do not author into repo
- CD's web 0007 anti-patterns per-brand → repo `0013-anti-patterns-per-brand.md`
- CD's web 0008 memory-anchor emoji → repo `0014-memory-anchor-emoji.md`

Future CD sessions: continue numbering from the highest known repo number at session open, plus an offset (e.g., session-N opens with the next available number after the most recent integration). At integration, the operator renumbers if collisions appear.

### Standing rule for the operating loop

CD authors against repo state as of last push; operator integrates batches; CD's workspace and repo decouple between integrations. No ADR or tier file is canonical until it lands in `main`.

## Rationale

**Push-driven integration is the right default.** CD's authoring loop runs faster than careful diff/review/commit cycles can keep up; batching to natural session boundaries keeps the repo coherent without bottlenecking CD.

**Renumbering at integration is cheaper than coordinating ahead.** CD doesn't know the repo's exact ADR count at session open without explicit operator input. Letting CD number freely and renumbering at integration is lower friction than asking the operator at every ADR close.

**Repo versioning stays sequential.** CD's v0.2.x workspace bumps reflect CD's view of "we authored the foundations". The repo's view ("we have integrated the foundations") is one step behind. The repo bumps only on integration; this avoids the awkward state where `main` carries v0.2.0 but lacks the work that triggered the bump.

**Superseding CD ADR 0006 (Proposed) by repo 0005 is the cleanest pattern for this case.** CD's ADR was Proposed-not-Accepted; the operator's ratification arrives via repo ADR 0005 with a different decision (three-pillar retention). Both ADRs share the same context; recording the supersession in the repo ADR makes the audit trail cleaner than carrying both.

## Consequences

**Commits us to**:
- One CHANGELOG entry per integration commit; CD's workspace CHANGELOG entries reconciled at merge
- ADR renumbering at integration when CD-authored ADRs collide with repo ADRs
- The supplement-vs-supersede distinction explicit in ADR cross-reference headers
- The repo ADR `0005-voice-pillar-count.md` carries an explicit "supersedes CD web-side ADR 0006 Proposed" note in its Related Records section (it does)

**Forecloses**:
- Auto-push of CD workspace to repo
- CHANGELOG version drift between CD workspace and repo `main`
- Anonymous ADR collisions (every collision resolves via documented renumbering)

**Opens**:
- Stable integration cadence (one commit per session; CHANGELOG one entry per session)
- A clean precedent for the next CD session (session-4 opens against integrated repo state)

## Related records

- `docs/FIRST-SESSION-CHECKLIST.md` — integration steps codified there
- Prior ADRs: `0003-two-brand-scope.md`
- This commit's other ADRs: `0004` through `0009`
- CD web-side ADRs to be renumbered at integration: 0004, 0005, 0007, 0008 (and 0006 Proposed is superseded by repo 0005)
