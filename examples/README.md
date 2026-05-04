---
title: Examples
status: SCAFFOLD — populated from real operator outputs
last_reviewed: 2026-05-04
---

# Examples

Concrete specimens of the design system in use. Examples beat description; this folder is a high-leverage anti-generic mechanism (per `1-FOUNDATIONS/ANTI-GENERIC-PROTOCOL.md §3`).

## Per-context expected specimens

Each `4-CONTEXTS/<surface>.md` should have at least one example file in this folder showing the design system applied to a real-world output.

| Context | Example file (planned) | Status |
|---|---|---|
| `WEBSITE.md` | `website-article-specimen.html` | TBD |
| `DOCUMENTS.md` | `document-md-specimen.md`, `document-pdf-specimen.pdf` | TBD |
| `PRESENTATIONS.md` | `presentation-deck-specimen.pdf` | TBD |
| `SOCIAL.md` | `social-twitter-thread-specimen.md`, `social-linkedin-post-specimen.md` | TBD |
| `EMAIL.md` | `email-cold-outbound-specimen.html`, `email-newsletter-specimen.html` | TBD |
| `AI-CONVERSATION.md` | `ai-conversation-claude-specimen.md` | TBD |
| `REPORTS.md` | `report-daily-specimen.html`, `report-weekly-specimen.md` | TBD |
| `CLIENT-DELIVERABLES.md` | `client-proposal-specimen.pdf`, `client-sow-specimen.md` | TBD |
| `TECHNICAL.md` | `technical-readme-specimen.md`, `technical-changelog-specimen.md` | TBD |

## Sourcing rule

Specimens are taken from **real operator outputs** (with sensitive content redacted), not generated for the design system. A specimen invented to "look right" defeats the purpose; the value is showing what design-system-faithful work actually looks like in the wild.

## Anti-pattern check

Each specimen carries a sibling `<filename>.review.md` documenting:
- Which Foundations / Tokens / Patterns / Contexts rules it applies
- Which `ANTI-GENERIC-PROTOCOL §4` failures it avoids
- One thing about it that is unmistakably the operator's work (the `PERSONAL-MARKERS.md` lever invoked)

## Refresh cadence

Quarterly: walk this folder; replace specimens that are >12 months old with current equivalents. Stale examples mislead Claude Design about current operator practice.
