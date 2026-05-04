---
title: Anti-Generic Protocol
status: AUTHORED — operator-side protocol (not Claude Design judgement)
last_reviewed: 2026-05-04
required_reading: true
---

# Anti-Generic Protocol

Generic AI design is the default failure mode. Without active mitigation, any output regresses to: purple gradients, abstract hero illustrations, "modern-clean-professional" hedging, default Inter + neutral grey, big rounded cards with drop shadows, and feel-good marketing-speak. This protocol is the active mitigation. Read at the start of every Claude Design session and every long-form authoring task.

## 1. Confirmed anchors

Visual and voice anchors are **confirmed**, not suggested. Confirmation lives in `references/<slug>.md` files (status: `confirmed_anchor`). At session open, Claude Design states which anchors apply to the current task and how. If anchors are still `candidate` status, operator confirms before any visual-direction work.

Current anchor set (subject to operator confirmation):

- Craig Mod — typographic care, considered pace
- Stripe Press — book-design clarity, architectural typography
- Frank Chimero — humanist personal-site warmth
- Edward Tufte — information density, evidence-based density
- The Pudding — data-journalism layout
- Stripe Docs — technical doc patterns

Meta-frame: Dieter Rams — "Good design is as little design as possible."

## 2. Cite-or-don't-ship rule

Every visual or voice choice in an authored tier file must trace to one of:

1. A **confirmed anchor** — by reference name and specific element observed
2. An **ADR** — by number
3. A **SEED claim** — by file + section, with verification per BRIEF §11
4. **Operator input** — by date and channel

Choices that trace to none of the above are **default-AI judgement** and are not shipped. If the operator approves a default-AI choice, it becomes operator input and gets logged.

## 3. Per-output weirdness check

Every output of meaningful length (≥ one tier file, or ≥ one substantial document) must contain one element that is **uncomfortably specific** — a quirk, quote, observation, or detail that another AI working without operator context could not have produced. The lever set lives in `PERSONAL-MARKERS.md`.

This is not decoration. It is the load-bearing distinction between this design system and a generic one. A weekly report mentioning the Chiang Mai monsoon affecting client-call audio quality has it; one that doesn't, doesn't.

## 4. Failure-mode catalogue

Recognise and avoid:

| Generic failure | Tell |
|---|---|
| **Purple gradient hero** | Diagonal gradient between two saturated colours; signals "AI made this" |
| **Abstract corporate illustration** | Floating geometric shapes, isometric people, tech-y line-art with no specific reference |
| **"Modern, clean, professional"** | Adjective triplet; means nothing; admits the author has no specific reference in mind |
| **Default Inter + neutral grey** | Inter font + #6B7280 text + #F9FAFB backgrounds; the AI default palette |
| **Big rounded card + drop shadow + hover lift** | Card pattern with `border-radius: 16px+`, soft shadow, transform on hover; pure ornamentation |
| **"Empower / unlock / journey / transform / seamless / cutting-edge / streamline"** | Banned vocabulary; signals marketing-speak |
| **Hero CTA "Get started" / "Learn more"** | Fake-action verbs that promise nothing specific |
| **Feature trio with three icons + headlines** | Bento-grid feature pattern; default for landing pages |
| **Stock-photo people pretending to enjoy work** | Detached-from-product imagery; replaced with: nothing, or specific evidence |
| **Pastel wash backgrounds** | Low-saturation full-bleed colour as filler |

## 5. Opening-sentence test

Every authored long-form document opens with a **specific concrete observation** before any abstract framing. Examples:

- ✓ "Eight of the last ten Sitruna service-tickets ran over budget by 18% on average."
- ✗ "In today's fast-moving Amazon ecosystem, sellers face unprecedented complexity."

If the opening sentence could appear verbatim on any of fifty other consultancies' websites, rewrite it.

## 6. Per-session ritual

At the start of any Claude Design session, before producing a single tier line:

1. State the task (one sentence)
2. Cite which `references/<slug>.md` anchors apply (≥ one)
3. Cite which `PERSONAL-MARKERS.md` element will be invoked for the weirdness check (≥ one)
4. Cite which BRIEF anti-patterns are most at risk for this task (≥ one)
5. Then begin

This is a thirty-second ritual. It prevents the slide.

## 7. Review test (cold-read)

A finished tier file passes the anti-generic test if:

- A reader who has never seen the design system can identify at least one detail that is unmistakably the operator's, not generic
- Every visual or voice claim cites a source per §2
- The opening passes §5
- No item in §4 is present

Failure is not catastrophe; it is a revision signal. Note in the session log; revise; re-review.

## 8. What this protocol is not

Not a guarantee. Not a substitute for taste. Not a mechanical checklist that produces good design. It is a **floor** — below which output is rejected. Above the floor, judgement applies.

It is also not a license for forced eccentricity. Quirk for its own sake is its own failure mode. The operator is restrained by character; outputs that try to be weird in a way that contradicts that restraint fail differently but still fail.
