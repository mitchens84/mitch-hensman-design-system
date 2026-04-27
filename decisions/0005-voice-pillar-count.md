# ADR 0005 — Voice pillar count (retain three; expand pillar 3 articulation)

**Date**: 2026-04-27
**Status**: Accepted
**Author**: Mitch Hensman (ratified); Claude Code (scribed)

## Context

Claude Design session 1 authored `1-FOUNDATIONS/VOICE.md` with three pillars:

1. **Claim before context** (structural — order: takeaway first, elaboration follows)
2. **Parsimony over performance** (density / restraint — fewest words to carry the substance)
3. **Honesty over reassurance** (calibration — accurate to substance, not optimised to comfort)

Session 2 stress-test surfaced that pillar 3 collapses two distinct failure modes:

- **Structural honesty** (BLUF; no buried lede; no marketing reassurance) — pattern: "you buried the lede"
- **Epistemic honesty** (calibrated confidence; evidence-tracked hedging; refusal-to-mislead) — patterns: "you overclaimed" or "you should have declined"

Claude Design's web-side ADR 0006 (Proposed) recommends a four-pillar split: keep pillars 1 + 2 untouched; split pillar 3 into:
- 3a. **Calibrated confidence** (epistemic — hedge with evidence)
- 3b. **Refuse to mislead** (decline / refusal — saying no)

This decision affects every downstream tier-2+ file that cites VOICE.md (REPORTS, AI-CONVERSATION, CLIENT-DELIVERABLES). Resolving before tier-2 saves rework.

## Options considered

1. **Adopt the four-pillar split** (CD ADR 0006) — accurate decomposition of the failure modes; gives each its own pillar-level prominence. Rejected: violates parsimony (CP8 in the operating system); inflates the framework's memorisation tax; promotes two manifestations of one underlying commitment to peer-level pillars.

2. **Keep three pillars unchanged** — minimal-change; preserves session-1 authoring. Rejected; the session-2 stress-test signal is real — pillar 3 *does* collapse two failure modes that an integrator may treat as one. Leaving the articulation as-is invites future drift toward "I said it confidently so I was honest" elision.

3. **Keep three pillars; expand pillar 3 articulation to enumerate both manifestations explicitly** (accepted) — the underlying commitment is *honesty over reassurance*; epistemic-calibration and refuse-to-mislead are sub-modes within that commitment. Articulate them as named sub-modes, not as separate pillars.

4. **Re-cut the three pillars entirely** — reject; would discard validated session-1 work without commensurate gain.

## Decision

VOICE.md retains three pillars. Pillar 3 ("Honesty over reassurance") is expanded internally to declare two named manifestations:

- **3a. Calibrated confidence** — evidence-tracked hedging; never claim more certainty than the substance carries; visible uncertainty markers ("moderate evidence for…", "I haven't verified…", "this is my read, not the source")
- **3b. Refuse to mislead** — declining is honest; partial deferral is honest; manufactured reassurance is not. When the right answer is "I don't know" or "this isn't the right thing to do", say so cleanly.

Both manifestations sit under the same pillar's commitment. Worked-example pairs (one structural-honesty failure, one epistemic-calibration failure, one refuse-to-mislead failure) are authored within VOICE.md as part of pillar 3's section.

## Rationale

**Parsimony respects CP8.** Three is sufficient; four adds a pillar without a corresponding gain in operationalisability. The failure modes can be named within the pillar without becoming separate pillars.

**The corpus already names these distinctions without splitting them.** `SEED/CONNEXUSMINDS-voice-synthesis.md §2` lists six commitments; "Decline when the work warrants it" (commitment 5) and "Take time to think, not react" (commitment 6) sit alongside "Architecture, not just labour" (commitment 1) without anyone mistaking them for one thing. The same pattern applies inside pillar 3 — name the manifestations; don't promote each to a top-level pillar.

**Memorisation tax is a real concern.** A three-pillar voice framework can be retained verbatim across sessions; a four-pillar one drifts faster. Operational rules must survive the operator's working memory under load, especially in cross-context code-switching.

**The "structural honesty" overlap with pillar 1 is the real signal.** Stress-test showed pillar 3 had a piece that overlapped with pillar 1 (claim-before-context already handles "no buried lede"). Splitting pillar 3 doesn't fix that; it spreads pillar 3 thinner. The right move is to mark the overlap (structural honesty *is* pillar 1's enforcement; pillar 3's territory is everything past structure — calibration and refusal) and tighten pillar 3 to only the non-structural manifestations.

## Consequences

**Commits us to**:
- VOICE.md pillar 3 section authored with named sub-modes (3a calibrated confidence, 3b refuse to mislead) and worked-example pairs
- Sub-modes referenced by name from downstream files (REPORTS, AI-CONVERSATION, CLIENT-DELIVERABLES) when the relevant manifestation governs a choice
- Cross-reference between pillar 1 (structural / order) and pillar 3 (content / calibration) to mark the boundary

**Forecloses**:
- Four-pillar voice framework
- Standalone "Refuse to mislead" pillar separate from "Calibrated confidence"
- Re-opening pillar count without compelling new evidence

**Opens**:
- Tier-2+ authoring proceeds against a stable three-pillar reference
- Future voice-related ADRs scope to articulation within pillars rather than pillar count
- A clean precedent for resisting decomposition under stress-test pressure when the split is decompositional rather than functional

## Related records

- Governing plan: `99-PLANS/260422-0A-SYS-DESIGN_SYSTEM_UNIFICATION-PLAN.md`
- Prior ADRs: `0003-two-brand-scope.md`
- Supersedes (pending integration): Claude Design web-side ADR 0006 (Proposed — four-pillar split)
- Downstream files affected:
  - `1-FOUNDATIONS/VOICE.md` — pillar 3 expansion with sub-modes 3a/3b and worked examples
  - All tier-4 context files that cite VOICE.md (REPORTS, AI-CONVERSATION, CLIENT-DELIVERABLES) — citation pattern: pillar number + sub-mode letter (e.g., "VOICE.md §3b")
- Related: `SEED/CONNEXUSMINDS-voice-synthesis.md §2` commitments 4–6 already enumerate honesty-as-multiple-manifestations without pillar-splitting
