# ADR 0001 — Scaffold Establishment

**Date**: 2026-04-22
**Status**: Accepted
**Author**: Mitch Hensman (ratified); Claude Code (scribed)

## Context

The operator's design decisions had fragmented across at least seven surfaces over time: five GDrive STDs (STD-VISUAL_DESIGN, STD-STYLE_GUIDE v2.0, STD-STYLE_GUIDE--DOCUMENT_PRESENTATION, STD-PROTOCOL_DESIGN, STD-DATAVIZ), the website repo's own `docs/DESIGN-SYSTEM*.md` (four files), the website repo's `src/styles/tokens.css` + `typography.css` (actual running implementation), CLAUDE.md §0.3 Response Style Defaults, MEMORY.md Communication Preferences, and the 15-format + 7-audience-overlay logic embedded in the content-architect skill.

No single source of truth existed. When conflicts arose between any two surfaces, no declared precedence resolved them. When a new surface needed design guidance (Claude Design extraction, a new template, a client deliverable, a daily briefing), the operator or AI had to reconcile from incomplete context.

The proximate trigger was Anthropic's launch of Claude Design on 2026-04-17 — a tool that extracts design systems from GitHub repos to apply to prompt-to-prototype work. Claude Design's extraction model created direct demand for a machine-consumable contract layer that didn't exist.

The deeper problem was architectural fragmentation that would compound as output volume grew (website, client work, newsletters, NotebookLM outputs, social, presentations, potential future podcast).

## Options considered

1. **Unify the five GDrive STDs in place** (v1 of the governing plan). Extend one (likely `STD-VISUAL_DESIGN.md`) as a canonical index; cross-reference the others. Lightest touch; lowest overhead. Rejected — didn't address the implementation tier (website CSS) or the tool-specific consumer demand (Claude Design, future Figma).

2. **Three-tier architecture (Philosophy / Contract / Implementation) in a GDrive directory** (v2-v3). Dedicated `00-MASTER/06-DESIGN/` tree with philosophy-prose, token-YAML, and implementation pointers. Addressed coherence but tied the entire system to GDrive-based consumption, which Claude Design cannot read directly.

3. **Subdirectory of the website repo** (v4 early). Would co-locate design-system spec with implementation CSS. Rejected after discovering the website repo is private and contains extensive internal strategy documents (docs/STRATEGIC-FRAMEWORK, AUDIT-FINDINGS, LABORATORY-BRAINSTORM-EVALUATION, AI-MODEL-ASSIGNMENTS, etc.) that should not be made public. Making the website public to satisfy Claude Design's extraction requirement would expose material the operator wants to keep internal.

4. **Separate public GitHub repo, MIT-licensed, dedicated to the design system** (accepted — this ADR). Clean slate; appropriate public face; Claude Design reads it natively; shareable to collaborators; decoupled from website implementation; can be pulled into website as submodule later if desired.

## Decision

Created `mitch-hensman-design-system` as a public GitHub repo under `mitchens84`, MIT-licensed.

Structure — five-tier scaffold plus supporting material:

- `SEED/` — reference material for Claude Design (synthesised signals, archived philosophy, brand excerpt, voice constraints, reference CSS, voice + visual framework libraries)
- `1-FOUNDATIONS/` — philosophy, brand, voice, anti-patterns, accessibility
- `2-TOKENS/` — colour, typography, spacing, motion (MD + YAML pairs) plus unified export
- `3-PATTERNS/` — hierarchy, layout, dataviz, document-structure, interaction, multilingual
- `4-CONTEXTS/` — nine primary context files + GOAL-OVERRIDES for per-LBS variants
- `5-INTERFACES/` — consumer-specific adapters and exports
- `decisions/` — ADR records (this file is #0001)
- `docs/` — PROMPTING-PLAYBOOK, intro-for-sharing
- `CATALOGUE.md` — scope, coverage checklist, interface map
- `BRIEF.md` — Claude Design's primary reading at session start
- `INTEGRATION-MAP.md` — post-handoff integration into the wider operating system

Scope boundary: this repo authors and houses the design system. Claude Design is the primary authoring tool. The operator drives; AI scribes. Authored content lives in tier directories; reference material lives in SEED/; decisions log to `decisions/`.

## Rationale

**Single source of truth per concern**. The five tiers give each design decision a canonical home; other locations (skills, CLAUDE.md, templates, website) reference rather than restate.

**Machine-consumable by design**. Tokens exist as YAML alongside Markdown rationale. Claude Design can extract directly. Figma tokens import is format-ready for future.

**Public-safe architecture**. Nothing sensitive in this repo; website repo stays private. Shareable to Mai (collaborator), Megan (sister), and — if ever useful — as open inspiration for others.

**Extensible contexts**. Tier 4 explicitly accepts new contexts as new surfaces emerge. The system grows with the operator's output surface list.

**Scaffold-first, author-later**. Tier files are intentionally empty at v0.1. Claude Design authors content against the structure. This decouples establishing the architecture from authoring the substance.

**Leverages existing mature work**. The December 2024 archived philosophy doc (8 principles) returns as serious prior art. Existing STD-STYLE_GUIDE v2.0 remains canonical brand. Existing website CSS remains canonical implementation. The design system doesn't replace these; it organises around them.

## Consequences

**Commits us to**:
- Running Claude Design authoring sessions to populate tiers
- Maintaining the SEED → tier → CHANGELOG → decisions discipline
- Post-handoff integration work (skill adapters, CLAUDE.md derivation, legacy STD migration) — see `INTEGRATION-MAP.md`
- Quarterly review cadence (to be added to `MAINTENANCE_CHECKLIST.md` at integration close)

**Forecloses**:
- Implicit "it's documented somewhere" accumulation pattern — every design concern now has an explicit home
- Proliferating parallel design standards across GDrive (future additions must choose a tier home, not create new parallels)
- Silent drift between philosophy and implementation — the Interfaces tier makes sync obligations explicit

**Opens**:
- Round-trip design validation (feed the repo back into Claude Design for a real prompt; evaluate brand fidelity)
- Per-goal overrides as a documented composition mechanism
- Shareability without disclosure concerns
- Foundation for any future Figma tier or alternative design-tool integration

## Related records

- Governing plan: `99-PLANS/260422-0A-SYS-DESIGN_SYSTEM_UNIFICATION-PLAN.md` (Google Drive, four versions recording the scope evolution v1→v5)
- Airtable PLANS record: `recPrkdKfQeWNWszp` (base `appXJL5GujVVKGBSs`, 0A-PPM)
- Future ADRs will be added as design-architectural decisions are made during Claude Design authoring and Phase 3 integration
