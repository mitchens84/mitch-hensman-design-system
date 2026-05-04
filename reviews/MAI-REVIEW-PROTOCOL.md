---
title: Mai Review Protocol
status: AUTHORED
last_reviewed: 2026-05-04
audience: operator
---

# Mai Review Protocol

Mai is a downstream consumer of design-system outputs (not co-author). She reviews finished artefacts and feeds back signal that informs revisions. This protocol specifies packet shape, format, and cadence so reviews stay efficient.

## 1. What goes to Mai for review

| Artefact type | Why she reviews | Cadence |
|---|---|---|
| ConnexusMinds tier files (any) | She is the partnership co-principal; brand decisions affect her commercial face | Per file as authored |
| Client-facing deliverable templates (proposal, SOW, weekly update) | She uses these with Sitruna and other clients | On significant change |
| Bilingual / Vietnamese-relevant outputs | She is the bilingual operator; Mitch is not Vietnamese-fluent | Always |
| Any output naming her, her work, or partnership specifics | Accuracy + consent | Always |

What she does **not** review:
- HensPham personal brand decisions (operator-only)
- Internal tier-1 / tier-3 system mechanics with no commercial bearing
- Skill plumbing, scripts, fixtures, infrastructure

## 2. Packet shape

A review packet is a single document or message containing:

```
1. One-sentence summary of what's being reviewed
2. Link or attached artefact
3. Specific questions (max 3) — not "what do you think?"
4. Optional context: one paragraph on why the change is being made
5. Deadline (if any) — explicit date in YYMMDD format
```

Default channel: WhatsApp for short items; email for long items; in-person for structural decisions.

## 3. Specific-questions discipline

Open questions ("what do you think?") get vague answers. Specific questions get usable signal. Examples:

- ✓ "Does Insight Amber feel right as the urgent-CTA colour, or does it read too warm?"
- ✓ "Is 'ConnexusMinds by HensPham' lockup ready to use on the next Sitruna proposal cover?"
- ✗ "Any thoughts on this design direction?"

Max three questions per packet. If more are needed, split into multiple packets with separate threads.

## 4. Response capture

Mai's responses get captured in:

- **`decisions/`** — if a structural choice is made, ADR records the decision and quotes her input
- **`CHANGELOG.md`** — version-bump entry references the review and the resulting change
- **`_COMMS/`** (operator-side, not in this repo) — full thread retained for audit

Do not silently incorporate her feedback without recording it. The trace lets future-Mitch (or future-Mai) reconstruct *why* a decision changed.

## 5. Cadence

- **Per ConnexusMinds tier-file**: review packet within 48h of authoring
- **Per quarterly review** (per `00-MASTER/02-AUTOMATION/MAINTENANCE_CHECKLIST.md` post-Phase-3): walk-through with both operators
- **Ad-hoc**: any time a decision affects her commercial face or names her work

## 6. Conflict-resolution

If Mai's feedback conflicts with operator's prior position:

1. Acknowledge the conflict explicitly (don't smooth over)
2. Identify which value or constraint each side anchors to
3. If both anchor to operator-side values → operator decides
4. If she anchors to commercial-relationship value (Sitruna, prospect, partnership) → her position carries weight; operator can override only with explicit reason
5. Outcome → ADR

## 7. What Mai does not need to do

- Read SEED material end-to-end
- Read tier-2 token YAML files
- Engage with mechanics of Claude Design sessions
- Participate in tier-1 philosophy / voice authorship for HensPham personal brand

Her bandwidth is finite; this protocol respects it.
