---
title: Context — Client Deliverables
status: DRAFT-PENDING-CLAUDE-DESIGN-AUTHORING
authored: 2026-05-07 by content-architect-v5.0-rebuild
---

<!-- Purpose: Commercial register (Sitruna, Connexus). More formal structure; evidence-density; actionable outcomes. -->

# Context — Client Deliverables

## DRAFT-PENDING

> This draft enables content-architect v5.0 to bind. Full authoring belongs in Claude Design (claude.ai/design). Replace this section entirely in the next authoring pass — do not preserve the DRAFT-PENDING header.

### Register and tone

Commercial and formal. Primary clients: Sitruna, Connexus. Register default: **evidence-dense and outcome-focused** — every section earns its place by moving the client toward a decision or action. No hedging, no filler. Pricing cited in both day rate and hour rate when client baseline is hourly (avoids unit-mismatch mental arithmetic). British English. No em-dashes.

### Sub-types and structural conventions

**Proposal**
- Sections: Situation · Proposed approach · Deliverables · Timeline · Investment · Next steps.
- Opening: restate the client's problem in their language before presenting the solution.
- Investment section: fixed-fee anchored to value; AI-leveraged effort does not count in human-hours pricing.
- Length: ≤5 pages.

**Statement of Work (SOW)**
- Sections: Scope · Exclusions · Deliverables · Milestones · Acceptance criteria · Fees · Change control.
- Legal language: precise; avoid ambiguity in scope and exclusions. Flag for `legal-reviewer` if contractual commitments are novel.
- Length: ≤8 pages.

**Invoice**
- Format: itemised. Each line: description · quantity · rate · total.
- Include: invoice number, issue date, due date (net-30 default), payment details.
- No narrative prose; numbers and line items only.

**Briefing / Status update**
- Sections: Summary · Progress against milestones (status indicators ✅ ⚠️ ❌) · Decisions required · Next steps.
- Length: ≤2 pages.

### Visual conventions

- Charts: Vega-Lite for data-backed recommendations. FT Visual Vocabulary for chart-type selection.
- Diagrams: Mermaid for process flows; Excalidraw for concept architecture.
- No decorative imagery. Logo / brand mark per client only if established template exists.
- Tables: use for milestones, pricing breakdowns, comparison matrices.

### Length expectations

| Sub-type | Length |
|---|---|
| Proposal | ≤5 pages |
| SOW | ≤8 pages |
| Invoice | 1 page |
| Status briefing | ≤2 pages |

### Output form

Paired source + rendered. Source: `.md`. Rendered: `.pdf` (Playwright, mandatory for client-facing) + `.docx` if client requires editable format (Pandoc + `reference.docx`). Never share `.md` source directly with clients. Preview-confirm gate required before any external send (CP15).

---

*This draft enables content-architect v5.0 to bind. Full authoring belongs in Claude Design.*
