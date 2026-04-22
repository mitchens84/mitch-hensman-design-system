# BRIEF — Claude Design Authoring Instructions

> **Read this file first at the start of every Claude Design session against this repo.**
>
> Before generating anything, confirm you have read:
> 1. This BRIEF.md
> 2. `SEED/DESIGN-SIGNALS.md`
> 3. `SEED/PHILOSOPHY-2024.md`
> 4. `SEED/VOICE-CONSTRAINTS.md`
> 5. `SEED/tokens-reference.css` + `SEED/typography-reference.css`
> 6. `SEED/STD-STYLE_GUIDE-excerpt.md`
>
> Then summarise the operator's voice in your own words, their top 3 design constraints, and the 2 most important anti-patterns you will avoid. Do not begin generating tier content until the operator confirms your grounding is accurate.

## 1. Operator profile

**Mitch Hensman** — British, born 1984. Based in Chiang Mai, Thailand (UTC+7). MEng Civil Engineering, Imperial College London. Remote sole proprietor since 2020. Analytics Manager + AI Solutions Architect at ActSEA; consults via Connexus Intelligence.

**Disposition**: high conscientiousness; evidence-based; values parsimony, honesty, judgement, kindness. Systems-literate (runs a personal operating system across Airtable, TickTick, Google Drive, GitHub, NotebookLM). Vegan, minimalist-leaning.

**Anti-disposition** (things Mitch visibly rejects): performative language, marketing-speak, hype, emoji-heavy prose, decorative-only design, status-game aesthetics, dark patterns.

## 2. Audiences this design system serves

1. **Mitch himself** — personal productivity outputs (briefings, plans, notes, reports)
2. **Website visitors** at mitch-hensman.com — prospective clients, readers, collaborators
3. **Commercial clients** — Sitruna (Amazon operations), Connexus Intelligence (AI consulting)
4. **Collaborators** — Mai Pham (business partner; Vietnamese, bilingual) and Megan (sister, based in Croatia)
5. **AI consumers** — Claude, Gemini, Codex instances that render outputs against this system
6. **Future self** — sustainability of the system matters; designs must survive operator evolution

## 3. Hard constraints — do not violate without explicit operator permission

**Language and voice**:
- UK English spelling always (colour, organise, realise, centre)
- Semicolons for connected thoughts; never em-dashes (—)
- No emojis in prose (functional status indicators like 🟢🔶🔴 acceptable in tables or status lists only)
- Bold for key terms and decision points only; never bold full sentences; cap around five bolds per 500 words
- Dates in YYMMDD format (e.g., 260422)
- Direct answers first; claim before context; no preambles, meta-commentary, or unsolicited timelines
- No marketing-speak: no "unlock", "empower", "journey", "transform", "seamless", "cutting-edge", "streamline"

**Accessibility**:
- WCAG AA minimum — contrast, keyboard navigation, screen-reader semantics
- Elaborate upward from the floor; never downward
- Mobile-first responsive; honest representation of services

**Multilingual**:
- Thai typography support required for multilingual PDF/EPUB rendering
- Non-Latin scripts must render correctly; historical pattern — use Playwright (Chrome headless) rather than weasyprint for multilingual PDFs

**Implementation coupling**:
- Website CSS at `SEED/tokens-reference.css` and `SEED/typography-reference.css` is the running implementation — describe and extend; do not contradict
- Brand identity in `SEED/STD-STYLE_GUIDE-excerpt.md` remains canonical; do not redefine

**Scope**:
- No full brand refresh; this system structures and completes what exists
- No website visual redesign; the design system feeds the website; it does not rebuild it
- No Figma workspace creation

## 4. Anti-patterns — steer away from by default

Do not produce or recommend:
- Gradients unless they encode data
- Glassmorphism / frosted backgrounds
- Pastel washes or generic "AI-look" palettes
- Default Tailwind greys (neutral-500 etc.) — curate greys deliberately
- "Card with big rounded corners plus drop shadow plus hover lift" as automatic pattern
- Unjustified animations or motion
- Marketing-speak calls-to-action ("Learn more", "Discover", "Get started", "Join")
- Fake urgency or scarcity language
- Emoji overuse in any authored content
- Generic stock imagery
- Dense walls of text without hierarchy
- Ambiguous directional adjectives as design direction ("modern", "clean", "professional") — always be specific about what, by reference to whom

## 5. Target output structure

Author into this five-tier architecture. Tier scaffolds are empty at handoff; populate the files in `1-FOUNDATIONS/` through `5-INTERFACES/`. If a file is missing that should exist, create it and explain why. If a file in the scaffold is unnecessary, document why and mark it empty. Ask before collapsing tiers.

| Tier | Role |
|---|---|
| `1-FOUNDATIONS/` | Invariant: philosophy, brand, voice, anti-patterns, accessibility |
| `2-TOKENS/` | Machine-readable: colour, typography, spacing, motion (MD spec + YAML pairs) |
| `3-PATTERNS/` | Composable rules: hierarchy, layout, dataviz, document structure, interaction, multilingual |
| `4-CONTEXTS/` | Per-surface applications: website, documents, presentations, social, email, AI-conversation, reports, client-deliverables, technical. Plus `GOAL-OVERRIDES/` for per-LBS variants |
| `5-INTERFACES/` | Consumer-specific exports: CSS pointer, YAML, skill adapters, CLAUDE.md derivation, NotebookLM snapshot, prose summary |

The Contexts tier is extensible — add new context files when new surfaces emerge (e.g., a future podcast audio identity).

## 6. How to use SEED material

- **`SEED/DESIGN-SIGNALS.md`** — the richest input. Synthesised character spine, principles, goals, archived philosophy summary, voice samples, signals-from-absence, admiration references, existing assets, open questions, hard constraints. Read this thoroughly.
- **`SEED/PHILOSOPHY-2024.md`** — eight named design principles Mitch articulated in December 2024. Archived but serious prior art. Treat as mature starting material; keep, revise, or replace with operator input and explicit rationale in `decisions/`.
- **`SEED/STD-STYLE_GUIDE-excerpt.md`** — canonical brand identity excerpt (brand foundation, typography conventions, voice characteristics). Reference; do not redefine.
- **`SEED/VOICE-CONSTRAINTS.md`** — consolidated hard constraints from `CLAUDE.md §0.3` and `MEMORY.md`. The bans-as-positive-stances list.
- **`SEED/tokens-reference.css` + `SEED/typography-reference.css`** — actual running CSS tokens from mitch-hensman.com. Authoritative for what is currently implemented. When authoring `2-TOKENS/*`, extract from these first; then propose extensions.

Cite SEED references explicitly in authored output when building on them.

## 7. Session operating patterns

- **Work tier by tier** — Foundations before Tokens before Patterns before Contexts before Interfaces. Downstream tiers depend on upstream.
- **Extract before generate** — when existing implementation exists (e.g., `SEED/tokens-reference.css`), extract current state and propose additions rather than replacements.
- **End every session** with a summary of decisions + rationale committed to `CHANGELOG.md`; significant decisions get an ADR file in `decisions/`.
- **Document open questions** inline in authored files as `<!-- OPEN: ... -->` markers; resolve in later sessions.
- **When stuck**, ask the operator directly with a specific question rather than producing generic defaults.

## 8. What Claude Design should NOT do

- Invent a brand voice — the operator's voice exists; refine it from SEED material; do not replace it
- Recommend visual direction without aesthetic anchors — if references are needed, ask the operator to provide or confirm admiration references in `SEED/DESIGN-SIGNALS.md §7`
- Write entries in `decisions/` without human approval — ADRs capture human decisions, not AI-generated proposals
- Modify `LICENSE` or repo metadata
- Depart from the five-tier structure without explicit operator approval
- Commit generated content without a session summary also committed

## 9. Operator partnership

Mitch reads everything authored; he will challenge, refine, accept, or reject. Treat this as a collaborative authoring loop, not one-shot generation. If output plateau is reached within a session, flag it and suggest restart with fresh grounding.

Ask direct, specific questions when you need operator input. Prefer "should this token be `colour.surface.elevated` or `colour.surface.raised`?" over "what do you think of this approach?".

## 10. Technical note on this repo

This is a public MIT-licensed repo. Anything committed here is public. Do not include secrets, private client information, or pre-release commercial material in any authored file. The operator's website repo (`mitch-hensman-com`) remains private — content there does not automatically belong here.
