---
title: Context — Documents (MD, PDF, DOCX, EPUB)
status: DRAFT-PENDING-CLAUDE-DESIGN-AUTHORING
authored: 2026-05-07 by content-architect-v5.0-rebuild
---

<!-- Purpose: Document-format rules. Typography thresholds, frontmatter, section conventions. Absorbs STD-STYLE_GUIDE--DOCUMENT_PRESENTATION. -->

# Context — Documents (MD, PDF, DOCX, EPUB)

## DRAFT-PENDING

> This draft enables content-architect v5.0 to bind. Full authoring belongs in Claude Design (claude.ai/design). Replace this section entirely in the next authoring pass — do not preserve the DRAFT-PENDING header.

### Register and tone

Internal and private artefacts. Audience is Mitch, close collaborators (Mai), or a defined specialist reader. Formality default: **direct and precise** — write for a reader who is competent in the domain. No marketing language. British English. No padding or preamble.

### Structural conventions

- YAML frontmatter required: `title`, `date` (YYMMDD), `status`, `lbs_domains` (≥1 lowercase value), `tags`.
- H1 = document title (one only). H2 = major sections. H3 = subsections. Max 3 heading levels.
- Opening paragraph: context or scope statement — what this document is and who it is for.
- Closing section: `## Next steps` or `## References` as appropriate; omit if neither applies.
- Bold for key terms only (≤5 per 500 words). No decorative bold.
- Tables for comparisons (3+ items with shared attributes). Numbered lists for procedures. Bullet lists for 3+ parallel non-sequential items.

### Visual conventions

- Charts: Vega-Lite JSON → SVG embed (inline for HTML; separate `.svg` file for GitHub-rendered artefacts).
- Diagrams: Mermaid (flowchart, sequence, ER). Excalidraw for concept/whiteboard.
- Mind-maps: Markmap (md → html).
- AI images: cover art or hero only; `image-generator` skill; 1600×2560px for EPUB covers.
- No decorative images inside the document body.

### Length expectations

| Sub-type | Length |
|---|---|
| Reference card / cheat-sheet | ≤300w (snippet) |
| 1-pager / explainer | ≤1000w |
| Internal brief | ≤5 pages |
| Long-form report | 5–20 pages |

### Output form

Paired source + rendered. Source: `.md`. Rendered: `.html` (Playwright) for screen; `.pdf` (Playwright) for print/archive; `.epub` (Pandoc + EPUBCheck) for ebook/Kindle delivery. Prefer `.md + .html` as default pair unless a specific rendered form is requested.

---

*This draft enables content-architect v5.0 to bind. Full authoring belongs in Claude Design.*
