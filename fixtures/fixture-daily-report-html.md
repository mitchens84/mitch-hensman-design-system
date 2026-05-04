---
fixture: daily-report-html
created: 2026-05-04
prompt: |
  You are generating the daily report HTML email for the operator.
  Source: prior-day session transcripts (~/.claude/projects/*.jsonl filtered to the
  yesterday window) + carry-forward state from the previous day's YAML frontmatter.
  Renderer: the canonical /tmp/daily-latest.html template (per
  feedback_daily_renderer_only_html.md — htmlBody MUST be verbatim renderer output).

  Authoring contexts: 4-CONTEXTS/REPORTS.md (when authored).
  Format: single HTML email body fed to mail-send pipeline.

expects:
  - htmlBody is verbatim /tmp/daily-latest.html — no hand-crafting, no truncation (per Feedback "Daily email HTML from renderer only")
  - "Yesterday" section grounded in actual session-transcript scan (per Feedback "Daily Yesterday section — session transcripts primary"); not invented
  - Carry-forward YAML frontmatter from prior day is secondary signal, transcripts primary
  - Calendar-vs-TickTick routing respected (per Feedback "Calendar vs TickTick routing"); meetings-with-others on calendar only; everything else TickTick
  - Date in subject line: YYMMDD format
  - Yesterday section contains only claims supportable from transcripts (per Feedback "Daily plan faithfulness gate"); novelty / proposed items in labelled NOVELTY block
  - Functional status emoji (🟢🔶🔴) acceptable in status tables/lists; no other emoji in prose
  - Operator's voice: terse; report outcomes not intent
  - Frontmatter contains: date, operator, generation_source, transcript_window, carry_forward_pointer

forbids:
  - Hand-crafted HTML body that diverges from renderer output (Form Pairs violation)
  - Yesterday claims not traceable to a transcript timestamp
  - Specific times, joint-framings, or next-steps inline in Yesterday section unless transcript-supported (must be in NOVELTY block)
  - Em-dashes in any prose section
  - Decorative emoji (smileys, fire, party, etc.)
  - Marketing-newsletter visual conventions (gradient header, "View in browser" link, footer ad blocks)
  - Generic or template-padded content ("Hope you have a productive day!")
  - Direct calendar items that should be TickTick items per routing rules
---

# Fixture: Daily Report HTML

Tests the operator's most-frequently-rendered surface (one per day) and its strict source-of-truth discipline. This fixture is *unusually* about source provenance, not visual design — but provenance failure produces visual-fidelity failure (hand-crafted HTML drifts from the canonical renderer output).

## Why this fixture

Three feedback memories explicitly govern this surface; failure here would cascade to operator distrust of the daily report. The fixture exists primarily to catch regressions in the renderer-vs-hand-crafted boundary.

## Reference output

When tier-4 REPORTS.md is authored, save the most recent passing daily report to `examples/report-daily-specimen.html`.

## Pass criteria

Strict: htmlBody parity with /tmp/daily-latest.html (byte-equal or only whitespace-different); Yesterday section transcript-traceable claim-by-claim; no `forbids` violation.
