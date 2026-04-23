# BRIEF — Claude Design Authoring Instructions

> **Read this file first at the start of every Claude Design session against this repo.**
>
> Before generating anything, confirm you have read:
> 1. This BRIEF.md
> 2. `SEED/DESIGN-SIGNALS.md` — synthesised signals (character spine, principles, voice samples, admiration references)
> 3. `SEED/PHILOSOPHY-2024.md` — archived 8 design principles (serious prior art)
> 4. `SEED/VOICE-CONSTRAINTS.md` — hard voice/typographic constraints
> 5. `SEED/VOICE-FRAMEWORKS.md` — named frameworks (Minto, BLUF, Pyramid, Trust Triad, etc.)
> 6. `SEED/VISUAL-FRAMEWORKS.md` — named visual/graphics frameworks (OPAL, CIM, scene graph, etc.)
> 7. `SEED/STD-STYLE_GUIDE-excerpt.md` — canonical brand identity
> 8. `SEED/tokens-reference.css` + `SEED/typography-reference.css` — running CSS (mitch-hensman.com)
>
> Then summarise the operator's voice in your own words, their top 3 design constraints, and the 2 most important anti-patterns you will avoid. Do not begin generating tier content until the operator confirms your grounding is accurate.

## 1. Operator profile

**Mitch Hensman** — British, born 1984. Based in Chiang Mai, Thailand (UTC+7). MEng Civil Engineering, Imperial College London. Remote sole proprietor since 2020. Analytics Manager + AI Solutions Architect at ActSEA; consults via **ConnexusMinds** (brand; a principal partnership with Mai Pham; formerly branded "Connexus Intelligence" — see `SEED/CONNEXUSMINDS-brand-design-guide.md` for the transition rationale).

**Disposition**: high conscientiousness; evidence-based; values parsimony, honesty, judgement, kindness. Systems-literate (runs a personal operating system across Airtable, TickTick, Google Drive, GitHub, NotebookLM). Vegan, minimalist-leaning.

**Anti-disposition** (things Mitch visibly rejects): performative language, marketing-speak, hype, emoji-heavy prose, decorative-only design, status-game aesthetics, dark patterns.

## 1a. Two-brand architecture

The operator runs two brands in complementary layers. The design system covers both; they diverge in visual language and converge on voice principles.

**HensPham** (personal) — `mitch-hensman.com`
- Substance-first, evidence-based, functional-over-ornamental
- Restrained: no gradients, no emoji in prose, restrained motion
- Canonical CSS in `SEED/tokens-reference.css` + `SEED/typography-reference.css`
- Personal authenticity layer; relationship-building foundation

**ConnexusMinds** (corporate consultancy; Mitch + Mai partnership) — `connexusminds.com`
- Network-topology visual metaphor (5–7 node constellation; golden ratio proportions)
- Distinct palette: Deep Teal `#0F766E` (primary), Network Navy `#1E3A8A`, Intelligence Sage `#166534`, Insight Amber `#D97706`, Wisdom Grey `#475569`
- Typography: Inter Variable (600 for "CONNEXUS", 400 for "Minds"), fallback Source Sans Pro
- Gradients approved (Intelligence Flow: Deep Teal → Network Navy, 135°) — this is a deliberate divergence from the HensPham-layer gradient ban
- Canonical specs in `SEED/CONNEXUSMINDS-colour-guide.md` + `SEED/CONNEXUSMINDS-brand-design-guide.md`
- Public-facing corporate authority and systematic capability

**Composition** — "ConnexusMinds by HensPham" is the documented combined usage for trust-building in early client relationships. The two brands coexist rather than merge.

**What the design system authors**:
- **Tier-1 Foundations** captures shared voice principles (honesty, directness, evidence, UK English, Minto / BLUF structure, accessibility AA+ floor); `ANTI-PATTERNS.md` must disambiguate HensPham-specific bans (gradients, emoji) from ConnexusMinds-specific permissions (approved gradients for hero sections; network-topology visuals). A single ANTI-PATTERNS.md with per-brand sub-sections is acceptable; two files are also acceptable — decide via ADR.
- **Tier-2 Tokens** contains two brand token sets. `2-TOKENS/colour.yaml` either nests under `hensph.*` and `connexusminds.*` namespaces, or splits into `colour.hensph.yaml` + `colour.connexusminds.yaml`. Same question for typography. Decide at tokens session and capture as ADR.
- **Tier-3 Patterns** is largely shared (hierarchy, layout, dataviz, document structure, multilingual); imagery and motion may have per-brand variants.
- **Tier-4 Contexts**: `WEBSITE.md` should either cover both sites (with per-brand sections) or split into `WEBSITE-HENSPH.md` + `WEBSITE-CONNEXUSMINDS.md`. `CLIENT-DELIVERABLES.md` applies ConnexusMinds corporate register. `GOAL-OVERRIDES/7A-CONNEXUS.md` formalises any register-specific overrides beyond the WEBSITE context.
- **Tier-5 Interfaces**: `CSS-CANONICAL.md` references both canonical CSS sources (HensPham: mitch-hensman.com repo; ConnexusMinds: `connexusminds.com` repo — not yet available locally, flag as gap).

**Voice synthesis for corporate register**: `SEED/CONNEXUSMINDS-voice-synthesis.md` — public-safe extracts from internal posture and signature policy documents. Reference rather than copy those internal docs when authoring `4-CONTEXTS/CLIENT-DELIVERABLES.md`.

**Known gap**: ConnexusMinds website source is not yet locally available (`~/Local/WEB-PLATFORM/PAGES/CONNEXUSMINDS/` is empty). Token extraction for ConnexusMinds is therefore from the brand-spec documents (colour guide + design guide), not from running CSS. Note this in any authored Tokens content.

## 2. Audiences this design system serves

1. **Mitch himself** — personal productivity outputs (briefings, plans, notes, reports)
2. **Website visitors** at mitch-hensman.com — prospective clients, readers, collaborators
3. **Commercial counterparts reached via ConnexusMinds** — Sitruna (Amazon operations), prospects and pipeline contacts for AI-implementation consulting. ConnexusMinds is the operator's own consultancy brand, not an external client; its brand system is in scope for this design system (see §1a)
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

**Motion**:
- Default stance: motion is off; any authored motion token or pattern must justify itself with a functional purpose (focus indication, state transition, progressive reveal, loading feedback). Decorative motion is disallowed; micro-interactions require named rationale; respect `prefers-reduced-motion` universally

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
- **`SEED/VOICE-FRAMEWORKS.md`** — named frameworks already internalised in the operator's voice work (Minto Pyramid, BLUF, Trust Triad, SUCCESs, Given-New Contract, Cognitive Load Theory, cross-cultural code-switching). Use as scaffolding when authoring VOICE pillars; cite by name in decisions/ when a framework drives a specific choice. Don't over-academicise.
- **`SEED/VISUAL-FRAMEWORKS.md`** — named visual/graphics frameworks from prior Sitruna work (OPAL, CIM Architecture, scene-graph generation, LLMLingua, EPiC, LPIPS/CLIP validation, compliance baselines). Informs imagery rules, pattern specs, and Contexts that include visual production.
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

## 11. Per-tier completeness tests

A tier file is "provisionally complete" (committable; reviewable cold) when it meets its per-tier bar below. Provisional completion is the stopping point for a single Claude Design session; full completion is reached only after cross-session review in a fresh Opus session.

### 1-FOUNDATIONS

| File | Completeness test |
|---|---|
| `PHILOSOPHY.md` | Names governing stance; declares what the system privileges; declares what it guards against; cites at least three items from `SEED/PHILOSOPHY-2024.md` (keep / revise / reject, each with rationale) |
| `BRAND.md` | Identity statement; audiences (six listed in BRIEF §2); personal-vs-commercial disambiguation; references `SEED/STD-STYLE_GUIDE-excerpt.md` as canonical without restating |
| `VOICE.md` | Three voice pillars, each one-sentence definition + two-sentence explanation; tone modulation across five registers (personal / commercial / client / AI / social); verbatim hard-constraint checklist from `SEED/VOICE-CONSTRAINTS.md`; cites `SEED/VOICE-FRAMEWORKS.md` frameworks where they drive a choice |
| `ANTI-PATTERNS.md` | Every item in BRIEF §4 restated with one-sentence rationale; plus operator-specific additions surfaced during session; explicit examples of each anti-pattern (or link to one) |
| `ACCESSIBILITY.md` | WCAG AA baseline stated; six coverage areas (contrast, keyboard, screen-reader, cognitive, motion-sensitivity, language) each with specifics; `prefers-reduced-motion` explicit; Thai-specific considerations noted |

### 2-TOKENS

| File | Completeness test |
|---|---|
| `colour.md` + `colour.yaml` | Primitives → semantic → component hierarchy declared; all semantic roles paired WCAG AA verified against text layer; dark-mode contract specified (either reciprocal mapping or algorithmic derivation); extraction from `SEED/tokens-reference.css` cited per token kept/renamed |
| `typography.md` + `typography.yaml` | Modular scale ratio named; heading + body + caption sizes derived; measure rule stated (≤ 65ch body); leading range specified; extraction from `SEED/typography-reference.css` cited |
| `spacing.md` + `spacing.yaml` | Base unit named (4 or 8px); full scale enumerated; section / component / inline usage rules separate |
| `motion.md` + `motion.yaml` | Default-off stance stated; any authored motion primitive justifies with functional purpose; `prefers-reduced-motion` compliance required; duration + easing tokens if used |
| `tokens.yaml` | Unified export; validates against YAML schema; imports cleanly (dry-run tested) |

### 3-PATTERNS

| File | Completeness test |
|---|---|
| `TYPOGRAPHY-HIERARCHY.md` | Heading scale application rules; reading rhythm; inverted pyramid per section |
| `LAYOUT.md` | Grid system; scannability rules; negative-space stance |
| `DATAVIZ.md` | Encoding rules; accessibility in charts; absorption of STD-DATAVIZ complete |
| `DOCUMENT-STRUCTURE.md` | YAML frontmatter schema; section conventions; document-anchor icon system if applicable |
| `INTERACTION.md` | Link / button / form patterns; focus-ring specifics; state coverage |
| `MULTILINGUAL.md` | Thai specifics; PDF/EPUB rendering technique (Playwright, not weasyprint); script-switching rules |
| (new) `IMAGERY.md` | Hero vs lifestyle modes; AI-generation allowances and bans; references `SEED/VISUAL-FRAMEWORKS.md` — if a SEED claim is cited, the claim is verified before authoring |

### 4-CONTEXTS

Every context file: purpose + audience + applied Foundations / Tokens / Patterns choices + format-specific rules + anti-patterns. The canonical `4-CONTEXTS/AI-CONVERSATION.md` must be authored such that CLAUDE.md §0.3 becomes a derived view with no content duplication.

### 5-INTERFACES

Every interface file: consumer + access pattern + sync obligation + drift-detection rule.

### Cross-tier

Downstream tiers must not contradict upstream. A contradiction detected during review is an ADR-worthy decision — either upstream changes, or the contradiction is explicitly noted as a scoped exception in `decisions/`.

### Source-claim verification

Any specific quantitative claim (e.g., "X% accuracy", "Y reject rate") sourced from `SEED/VOICE-FRAMEWORKS.md` or `SEED/VISUAL-FRAMEWORKS.md` must be traced to primary literature before being restated in an authored tier file. SEED files aggregate prior NotebookLM synthesis and can contain AI-inference-laundered numbers; treat them as claims to verify, not facts to cite.
