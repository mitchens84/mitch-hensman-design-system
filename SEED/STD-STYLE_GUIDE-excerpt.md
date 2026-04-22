---
title: STD-STYLE_GUIDE — Brand Identity Excerpt
source: 00-MASTER/03-STANDARDS/STD-STYLE_GUIDE.md (v2.0, July 2025)
date_extracted: 2026-04-22
status: canonical brand; reference, do not redefine
scope_note: STD-STYLE_GUIDE is primarily the Connexus commercial-consulting brand (connexusintelligence.com). The personal brand (mitch-hensman.com) overlaps but is not identical. Claude Design should disambiguate where the two diverge and document the divergence in decisions/.
---

# Brand Identity — Extract

Excerpt from `STD-STYLE_GUIDE.md` v2.0. Canonical brand material; reference and extend, do not redefine.

## Brand

**Connexus** (commercial consulting): intersection of analytical precision, compassionate intelligence, and evidence-based business practices. Systematic thinking applied with humanistic values — cognitive partnership prioritising truth, effectiveness, and sustainable value creation.

**Personal brand** (mitch-hensman.com): shares the intellectual foundations but with a more personal register — evidence-based, systems-literate, biophilic-leaning, minimalist.

## Brand Personality

- **Analytically Compassionate** — rigorous thinking delivered with genuine care for outcomes
- **Commercially Ethical** — profitable operations aligned with moral principles
- **Systematically Innovative** — structured frameworks that adapt to market evidence
- **Transparently Professional** — honest assessment builds sustainable client relationships
- **Strategically Mindful** — conscious attention to long-term impact and consequences

## Business Philosophy

- **Stoicism** — rational analysis, principled stands, focus on controllable factors
- **Evidence-Based Decision Making** — data-driven strategies with measurable outcomes
- **Sustainable Value Creation** — long-term thinking over short-term gains
- **Stakeholder Capitalism** — balancing profit with positive impact for all stakeholders
- **Transparent Operations** — honest communication builds trust and sustainable relationships

## Colour Palette

**Primary**:
- Deep Teal `#0F766E` — trust, intelligence, systematic thinking
- Network Navy `#1E3A8A` — authority, analytical precision, depth
- Intelligence Sage `#166534` — growth, sustainability, innovation

**Supporting**:
- Insight Amber `#D97706` — strategic emphasis, calls-to-action (use sparingly)
- Pure White `#FFFFFF` — clarity, breathing space, premium positioning

**Warm grayscale** (primary working palette, ~80% of applications):
- Charcoal `#374151` — primary text, strong emphasis
- Slate `#475569` — body text, secondary elements
- Warm Grey `#6B7280` — supporting text, captions
- Light Grey `#9CA3AF` — borders, dividers, subtle elements
- Soft Grey `#F3F4F6` — backgrounds, cards, containers
- Off White `#FAFAFA` — alternative backgrounds, subtle contrast

**Usage rule**: warm grayscale 80% of applications; brand colours for strategic emphasis only (headlines, logos, key CTAs); Insight Amber reserved for critical actions; white space minimum 60% for premium positioning.

## Typography

**Digital primary — Inter**:
- Headlines: Inter Bold, Network Navy or Charcoal
- Subheadings: Inter Semibold, Deep Teal or Slate
- Body: Inter Regular, Slate
- Captions: Inter Medium, Warm Grey

**Print**:
- Display: Avenir Next (geometric precision, professional warmth)
- Body: Source Serif Pro (readable, sophisticated, trustworthy)

**Technical / Code**: JetBrains Mono

**Hierarchy** (digital):
- h1: 32px Inter Bold, Network Navy
- h2: 24px Inter Semibold, Deep Teal
- h3: 20px Inter Semibold, Slate
- h4: 18px Inter Medium, Slate
- body: 16px Inter Regular, Slate
- caption: 14px Inter Medium, Warm Grey

## Voice Characteristics

- UK English standard (organised, optimise, analyse, realise, colour, centre, whilst, amongst, programme, specialise)
- **Professional Authority** — confident expertise without arrogance
- **Analytical Warmth** — rigorous thinking with human consideration
- **Strategic Focus** — business outcomes with ethical alignment

**Writing directives**:
1. **Prioritise Clarity** — precise terminology; define key concepts
2. **Maximise Value** — high insight-to-word ratio; eliminate redundancy
3. **Ground in Evidence** — support claims with verifiable sources
4. **Lead with Impact** — state core value proposition immediately

**Business communication protocol**: value-first, evidence-based, solution-oriented, relationship-aware, transparent.

## Semantic Formatting System

- **Bold** (`**bold**`): cognitive anchoring for technical terms (first use), critical concepts, decision points, section navigation, action requirements
- *Italic* (`*italic*`): conceptual refinement for subtle distinctions, contextual notes, examples, emphasis within explanations, specialised terms
- `Code` (`` `code` ``): exact specification for technical elements, file names, precise terminology, system references

## Known internal contradiction to resolve

The source `STD-STYLE_GUIDE.md §4.3` "Memory Anchor Systems" uses emoji visual landmarks (🧭 💡 ⚙️ 📈 🔑 ⚠️ 🔗 🔬 📖) for objectives, insights, applications, data, principles, warnings, connections, examples, definitions. This contradicts the hard constraint from `CLAUDE.md §0.3` (documented in `VOICE-CONSTRAINTS.md`) banning emojis in prose.

Claude Design should resolve this by one of:
- Declaring memory-anchor emojis an explicit exception to the general ban (document scope in `4-CONTEXTS/` — likely `REPORTS.md` and `TECHNICAL.md` for commercial-delivery contexts)
- Replacing emoji anchors with typographic equivalents (numbered callouts, coloured sidebars, block labels)
- Restricting the memory-anchor system to specific contexts (commercial deliverables only) and banning it in personal-register contexts (website content, email, social)

Whichever direction, document the decision in `decisions/`.

## Form Pairs (cross-reference)

Source `STD-STYLE_GUIDE §4.5` introduces "Form Pairs" — the three artefact forms (Structured / Rendered / Dual) and their co-maintenance rules. Architectural; directly informs `5-INTERFACES/` (how the design system itself maintains paired forms: Markdown spec + YAML export for tokens; prose philosophy + NotebookLM snapshot; etc.).

---

*Full source: `00-MASTER/03-STANDARDS/STD-STYLE_GUIDE.md` (v2.0, July 2025). Canonical — do not redefine here; reference and apply.*
