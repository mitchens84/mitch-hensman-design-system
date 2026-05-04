---
title: Universal Opening
status: AUTHORED
purpose: Common opening fragment used by every per-tier prompt template. Update here once; per-tier prompts reference this rather than duplicating.
---

# Universal Opening

Paste this fragment at the top of any tier-specific prompt OR copy by reference. Per-tier prompts begin with: *"Apply the universal opening from `prompts/_universal-opening.md`, then continue with the tier-specific instructions below."*

---

## Required reading (in order)

Before generating anything for this session, confirm you have read:

1. `BRIEF.md` — operator-side authoring instructions; hard constraints in §3; anti-patterns in §4; per-tier completeness tests in §11
2. `1-FOUNDATIONS/ANTI-GENERIC-PROTOCOL.md` — cite-or-don't-ship rule (§2); per-output weirdness check (§3); failure-mode catalogue (§4); opening-sentence test (§5); per-session ritual (§6)
3. `1-FOUNDATIONS/PERSONAL-MARKERS.md` — unfakeable detail catalogue used by §3 weirdness check
4. `SEED/DESIGN-SIGNALS.md` — synthesised input
5. `SEED/STD-STYLE_GUIDE-excerpt.md` — canonical brand identity
6. `SEED/VOICE-CONSTRAINTS.md` — verbatim hard constraints
7. The `references/<slug>.md` file(s) for any anchor cited in this session
8. The tier-specific reading block in the per-tier prompt that pulled you here

## Per-session ritual (from ANTI-GENERIC-PROTOCOL §6)

Before producing a single tier line:

1. State the task in **one sentence**. The operator confirms or corrects.
2. Cite **≥1 anchor** from `references/` and the specific element you intend to draw from.
3. Cite **≥1 PERSONAL-MARKERS lever** that this output may invoke (or "none — this output is structural and not voice-bearing").
4. Cite **≥1 BRIEF anti-pattern** most at risk for this task.
5. Restate the operator's voice in your own words (≤2 sentences), the top 3 design constraints, and the 2 most important anti-patterns. Wait for operator confirmation.
6. Then begin authoring.

## Author with citation discipline

Per ANTI-GENERIC-PROTOCOL §2: every visual or voice choice traces to one of:

- A confirmed anchor (`references/<slug>.md`) — by reference name and specific element
- An ADR (`decisions/<NNNN>.md`) — by number
- A SEED claim — by file + section, with verification per BRIEF §11
- Operator input — by date and channel

Choices traceable to none of the above are *default-AI judgement* and do not ship. Surface them explicitly; the operator may approve, in which case the choice becomes operator input and gets logged.

## End-of-session contract

Before the operator closes the session:

1. List every authored file with its provisional-completion status against BRIEF §11
2. List every cited anchor / ADR / SEED reference / operator input
3. List every default-AI judgement that was surfaced and how the operator resolved it
4. List any contradictions surfaced with upstream tiers (per `DEPENDENCIES.md`); proposed resolution
5. Propose the CHANGELOG entry text and any ADR(s) that should be authored
6. Confirm: any session-end stop condition triggered? (output plateau, missing upstream, attention exhausted)

## Stop conditions

End the session early if:

- The output plateaus (repetition, generic content, dependence on default-AI judgement)
- Required upstream context is missing (the operator and AI together cannot proceed without it)
- The operator's attention is no longer up to review-quality work

A partial-but-honest commit beats a generic-but-complete one.
