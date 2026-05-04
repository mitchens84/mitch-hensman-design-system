---
title: Mai-Review Packet Template
status: AUTHORED
purpose: Copy-paste skeleton for sending a review packet to Mai per MAI-REVIEW-PROTOCOL.md
---

# Mai-Review Packet — Template

Copy this skeleton into the chosen channel (WhatsApp short / email long / in-person structural). Fill placeholders. Discipline: max three specific questions; explicit deadline if any; trace back to ADR or CHANGELOG entry on response.

---

```
Hi Mai,

[ONE-SENTENCE SUMMARY of what's being reviewed — e.g. "Sharing the
ConnexusMinds proposal cover layout I'd like to use for the next
Sitruna pilot."]

What I'm sending: [LINK to artefact OR attached file OR brief description
+ pointer to where it lives]

Three things I'd like your specific take on:

1. [SPECIFIC QUESTION — not "what do you think". Concrete, single-axis,
   answerable in one sentence.]

2. [SPECIFIC QUESTION]

3. [SPECIFIC QUESTION — drop if only one or two genuinely matter]

Context (optional): [ONE PARAGRAPH on why this change is being made
— commercial trigger, prior conversation, ADR pointer]

Deadline: [YYMMDD if hard; "no rush" if soft; never leave implicit]

Mitch
```

---

## After Mai responds

Per MAI-REVIEW-PROTOCOL §4:

1. Capture her response in `decisions/<NNNN>-<slug>.md` if it triggers a structural choice
2. Reference the response in the next CHANGELOG entry that incorporates her feedback
3. Retain full thread in `_COMMS/` (operator-side, outside this repo)
4. If conflict-resolution applies, follow MAI-REVIEW-PROTOCOL §6

## What this template prevents

- Open-ended "what do you think" questions that get vague answers
- More than three questions in one packet (split if needed)
- Implicit deadlines that create misalignment
- Silent incorporation of her feedback without tracing the source

## What this template is not

A substitute for in-person discussion. For structural decisions, schedule a walk-through; the packet exists for asynchronous review of finished artefacts, not for co-authoring.
