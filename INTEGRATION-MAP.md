# INTEGRATION MAP

How authored outputs from this design system integrate back into Mitch's broader operating system after Claude Design sessions.

## Scope of this document

Reference for Mitch + Claude Code during post-handoff integration. Claude Design reads it to understand downstream consumers, but does not act on it.

## Consumer map

| Consumer | How it uses this design system |
|---|---|
| **Website build** (`mitch-hensman-com`, private) | `src/styles/tokens.css` + `typography.css` remain canonical web CSS; `2-TOKENS/` is the spec these implement. Sync direction to be decided at integration time (likely: CSS canonical; YAML mirror). |
| **Claude Design future sessions** | Reads this repo as starting context for refinement and new authoring |
| **content-architect skill** | `~/Local/00-ENABLEMENT/SKILLS/content-architect/SKILL.md` references `4-CONTEXTS/` for per-format and per-audience rules; stops duplicating voice logic |
| **build-engineer skill** | References `4-CONTEXTS/WEBSITE.md` and `3-PATTERNS/INTERACTION.md` for web component patterns |
| **communicator skill** | References `4-CONTEXTS/SOCIAL.md`, `4-CONTEXTS/EMAIL.md`, `1-FOUNDATIONS/VOICE.md` |
| **GDrive root `CLAUDE.md` §0.3** (Response Style Defaults) | `4-CONTEXTS/AI-CONVERSATION.md` becomes canonical; §0.3 becomes a derived-view annotation with no content duplication |
| **MEMORY.md** | Remove duplicated communication-preference rules; add pointer to this repo |
| **Legacy GDrive STDs** (`STD-VISUAL_DESIGN.md`, `STD-STYLE_GUIDE*`, `STD-PROTOCOL_DESIGN.md`, `STD-DATAVIZ.md`) | Migrate to stub files with redirect headers pointing to equivalent content here |
| **`04-TEMPLATES/*`** (daily report, meeting agenda, proposal, invoice, weekly update) | Each adds frontmatter reference to its controlling `4-CONTEXTS/` doc |
| **NotebookLM** | `5-INTERFACES/NOTEBOOKLM-SNAPSHOT.md` curates an importable bundle for synthesis Q&A |
| **Figma (future)** | If a Figma workspace is established, `2-TOKENS/tokens.yaml` imports as design tokens |

## Integration sequence (post Claude Design handoff)

Claude Code will run these waves after a Claude Design session completes (or at natural pause points):

1. Pull latest from this repo
2. Decide sync target: copy canonical content into `00-MASTER/06-DESIGN/` on GDrive, OR reference directly from this repo. Decision based on the shape of authored output.
3. Update skill files (content-architect, build-engineer, communicator) with references + removal of duplicated logic
4. Annotate `CLAUDE.md §0.3` as derived view pointing to `4-CONTEXTS/AI-CONVERSATION.md`
5. Add a design-task signal row to `CLAUDE.md §1` context-loading table
6. Update `MEMORY.md` — remove duplicates, add pointer to this repo
7. Legacy STD migration — stub each with redirect header; grep-update all references across GDrive and `~/Local/`
8. Website repo reconciliation — add back-ref headers in `docs/DESIGN-SYSTEM*.md`; add coupling note in website `CLAUDE.md`
9. Update `04-TEMPLATES/*` frontmatter references
10. Add quarterly design-system review item to `02-AUTOMATION/MAINTENANCE_CHECKLIST.md`

Each wave has a "> 5 reference conflicts halts the wave" escape hatch per the governing plan.

## Round-trip validation

After integration, Mitch runs a round-trip test: feed this repo (or its token subtree) back into Claude Design with a real prompt (e.g., "Generate a Sitruna service-landing page using this design system"). Evaluate brand fidelity in the output. If gaps surface, iterate tokens additively — never refactor tokens destructively, and never break the running website CSS.

## Related references

- Governing plan: `99-PLANS/260422-0A-SYS-DESIGN_SYSTEM_UNIFICATION-PLAN.md` (Google Drive)
- Website repo: `~/Local/WEB-PLATFORM/mitch-hensman-com/` (private GitHub)
- Airtable PLANS record: `recPrkdKfQeWNWszp` (base `appXJL5GujVVKGBSs`, 0A-PPM)
- NotebookLM learning notebook: `0A-CLAUDE_DESIGN-LEARNING` (ID `be03eecd-98c1-45aa-9a44-0401dfbb6e5e`)
