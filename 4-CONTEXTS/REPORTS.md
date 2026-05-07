---
title: Context — Reports
status: DRAFT-PENDING-CLAUDE-DESIGN-AUTHORING
authored: 2026-05-07 by content-architect-v5.0-rebuild
---

<!-- Purpose: Daily briefings, weekly updates, meeting minutes. Structure + tone + status-indicator usage. -->

# Context — Reports

## DRAFT-PENDING

> This draft enables content-architect v5.0 to bind. Full authoring belongs in Claude Design (claude.ai/design). Replace this section entirely in the next authoring pass — do not preserve the DRAFT-PENDING header.

### Register and tone

Analytical and informational. Audience is Mitch (internal), or a named team (Sitruna, Connexus). Formality default: **structured and neutral** — findings first, analysis second, recommendations third. No narrative throat-clearing. British English. Status indicators used per design-system icon set (✅ ⚠️ ❌ ⧗ for item states).

### Structural conventions

- YAML frontmatter required: `title`, `date`, `status`, `period` (if time-bounded), `author`, `lbs_domains`.
- Opening block: **Executive summary** (3–5 bullets, each ≤20 words). First sentence of each bullet = finding, not context.
- Sections follow intent axis: Understand reports use `## Findings / ## Analysis / ## Appendix`; Decide reports use `## Recommendation / ## Options / ## Evidence`.
- Meeting minutes: load `04-TEMPLATES/MEETING_MINUTES.md` as structural starting point. Required sections: Attendees · Decisions · Actions (owner + due date) · Parking lot.
- Status indicators: prefix each action item with ✅ ⚠️ ❌ or ⧗ — never embed status in prose.
- Closing section: `## Actions` (owner + YYMMDD due) or `## Next review`.

### Visual conventions

- Charts: Vega-Lite preferred for quantitative comparisons. FT Visual Vocabulary 8 categories guide chart-type selection.
- Mermaid for process flows or decision trees embedded in analysis.
- No decorative images. Tables for structured data (replace prose lists ≥3 rows).

### Length expectations

| Sub-type | Length |
|---|---|
| Daily briefing | ≤500w |
| Meeting minutes | 1–3 pages |
| Weekly update | 1–2 pages |
| Analytical brief | ≤5 pages |
| Full analytical report | 5–20 pages |

### Output form

Paired source + rendered. Source: `.md`. Rendered: `.html` (default for internal review); `.pdf` for archival or external sharing. Meeting minutes: `.md` stored at canonical project path per `output-routing.md`. No EPUB for reports.

---

*This draft enables content-architect v5.0 to bind. Full authoring belongs in Claude Design.*
