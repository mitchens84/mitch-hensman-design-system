---
title: Context — Email
status: DRAFT-PENDING-CLAUDE-DESIGN-AUTHORING
authored: 2026-05-07 by content-architect-v5.0-rebuild
---

<!-- Purpose: HTML email templates, plain-text fallback, email signatures, newsletter format. -->

# Context — Email

## DRAFT-PENDING

> This draft enables content-architect v5.0 to bind. Full authoring belongs in Claude Design (claude.ai/design). Replace this section entirely in the next authoring pass — do not preserve the DRAFT-PENDING header.

### Register and tone

Context-dependent. Default: **professional but warm** — not stiff, not casual. Sender-voice follows `communicator` skill conventions: Claude-voice (not Mitch-voice) unless explicitly requested. No preamble ("I hope this finds you well" is banned). British English. No em-dashes (banned universally in Mitch-reviewed drafts).

Formality tiers:

| Audience | Formality |
|---|---|
| Internal (Mitch/Mai) | Direct; omit pleasantries |
| Collaborator (team, partner) | Warm professional |
| Client (Sitruna, Connexus) | Formal professional |
| Cold outreach | Precise, no fluff |

### Structural conventions

- Subject line: specific and informative. Max 60 chars. Format: `[Action] Topic — Context` where action is optional.
- Opening sentence = purpose of the email. No context-setting before the point.
- Body: 3–5 sentences for transactional email; structured sections (H2) only for multi-topic or reference emails.
- Closing: single clear call-to-action or statement of next step. No double-close ("Thanks again, best, cheers").
- Signature block: Name · Role (if client-facing) · Contact. No decorative imagery in plain-text fallback.

### Visual conventions

- Plain-text default: all email unless HTML template is explicitly required (e.g. daily briefing, newsletter).
- HTML email: `htmlBody` must be generated from the design-system HTML renderer, never hand-crafted. Inline CSS only; no external stylesheets.
- Attachments: `.pdf` preferred over `.docx` for client-facing. Reference attachment inline: "see attached [filename]".

### Length expectations

| Sub-type | Length |
|---|---|
| Transactional / update | ≤150w |
| Information / briefing | ≤400w |
| Newsletter / digest | ≤800w |

### Output form

`.md` source for drafting. Delivered as plain-text or `htmlBody` per `output-routing.md`. Email send routed via `communicator` skill (cover email) or `system-orchestrator` (Gmail MCP direct). Never send without operator preview-confirm gate (CP15).

---

*This draft enables content-architect v5.0 to bind. Full authoring belongs in Claude Design.*
