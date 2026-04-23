---
title: Design Signals — Mitchell Hensman
date: 2026-04-22
type: reference
status: handoff — Claude Design reads for authoring context
purpose: Synthesised input combining documented preferences with discovered signals from existing content
sources_mined:
  - Readwise highlights library
  - Airtable PRINCIPLES + CHARACTER + GOALS tables (00-MASTER base)
  - Fireflies meeting transcripts
  - NotebookLM notebook inventory
  - Website published content (mitch-hensman-com)
  - Sitruna client-facing materials
  - CLAUDE.md + MEMORY.md hard constraints
  - Brave browser bookmarks
  - Archived design philosophy (Dec 2024)
tags: [design, brand, voice, signals, seed, handoff]
---

# Design Signals — Synthesised Input

Assembled 260422 for Claude Design authoring sessions. Claude Design may restate, restructure, challenge, or extend any item — these are inputs, not canonical outputs. Brand identity in `STD-STYLE_GUIDE-excerpt.md` and running CSS (`tokens-reference.css`, `typography-reference.css`) remain canonical; this document is *about* them.

## 1. Character spine

Ranked character strengths from Airtable `CHARACTER` that shape design decisions:

| Rank | Strength | Design implication |
|---|---|---|
| 1 | Honesty | Direct voice; transparent about limitations; no performative claims |
| 2 | Judgment / Open-mindedness | Evidence-based; willingness to revise |
| 3 | Kindness | Generous UX; accessibility; not gatekeeping |
| 4 | Prudence | Parsimony; restraint; future-orientation |
| 5 | Creativity | Originality within constraints |
| 6 | Fairness | Equitable treatment across audiences |
| 7 | Perspective | Systemic framing; big-picture thinking |

## 2. Articulated principles (design-relevant selection)

From Airtable `PRINCIPLES` table:

- **NAMING CONVENTION** — intuitive, self-organising; descriptive; easy retrieval
- **REFERENCE RESILIENCE** — cross-system references survive rename/reorganisation via immutable identifiers
- **HONESTY** — present self and reactions accurately
- **JUDGMENT** — examine from all sides; consider evidence against one's own beliefs
- **PRUDENCE** — careful; avoid unnecessary risks; plan for future
- **CREATIVITY** — novel problem-solving within constraints
- **PERSPECTIVE** — wise counsel via multiple viewpoints
- **KINDNESS** — helpful, empathic, no expectation of return
- **SOCIAL INTELLIGENCE** — attune to others' emotions; make them feel valued

## 3. Active goals shaping design direction

| Goal | Priority | Design constraint |
|---|---|---|
| 0A-INFOSEC | V. HIGH | Privacy-first; transparency about data; security visual language |
| 2L-HEALING | HIGH | Calm, restorative; gentle language; accessibility for introspection |
| 4H-ENVIRONMENT | HIGH | Biophilic; natural elements; clean/minimal |
| 5R-FRIENDSHIP | HIGH | Authentic voice; no performative language; vulnerability-friendly |
| 7A-CAREER | MED | Signal thoughtfulness; unique human value; avoid automation-speak |

## 4. Pre-existing design philosophy — mature prior art

Eight named principles from December 2024 (see `PHILOSOPHY-2024.md` for full text with LBS mapping, implementation guidelines, and anti-patterns). Treat as serious starting material; keep, revise, or replace with Claude Design's judgement plus operator input.

1. **Modular Architecture** (MINIMALISM, RESPONSIBILITY_SPHERE)
2. **Authentic Coherence** (FUTURE_SELF, STATUS_GAMES resistance)
3. **Progressive Value Delivery** (TEACHING, CAMPSITE_RULE)
4. **Causality-Aware Design** (CAUSALITY, ALTRUISM) — declares WCAG AA minimum
5. **Cognitive Efficiency** (REASON_EXPLANATION, MINIMALISM)
6. **Graceful Evolution** (RADICAL_ACCEPTANCE, HABITS)
7. **Audience Pathway Clarity** (DECISION_MAKING, FREETHINKING)
8. **Relationship Invitation** (ALTRUISM, CAMPSITE_RULE)

Quality gate from the same doc (retain or revise):
- Which principle(s) does this serve?
- Does this create value for visitors or primarily for the site owner?
- Can this be maintained sustainably?
- Does this respect visitor autonomy and intelligence?
- Would this choice survive removal of all competitors' influence?
- Does this align with authentic self-presentation?

## 5. Voice in the wild

**Personal register** (published website articles):
- Opens with quantified problem statements; avoids hyperbole
- Systems-first framing; abstraction over narrative decoration
- Numbered structure (tiered: foundations → techniques → application)
- Evidence tables; inverted pyramid (claim first)
- Candid hedging ("moderate evidence for...")
- Substance-first; no rhetorical flourish

**Commercial register** (Sitruna weekly updates, proposals):
- Executive summary with status grid
- Action items with due dates plus rationale
- Factual, outcome-focused tone
- Emoji status indicators (🟢🔶🔴) as scannability aids only
- Stricter section hierarchy
- Information density over wordsmithing

Divergence: commercial is slightly more formal; the underlying ethos is unchanged — information density over ornamentation.

## 6. Signals from absence — explicit bans as positive stances

From `CLAUDE.md §0.3` and `MEMORY.md` Communication Preferences:

- No em-dashes → semicolons for connected thoughts
- No emojis in prose (functional emoji in status indicators acceptable)
- No bold full sentences (bold = key terms + decision points only; around five per 500 words)
- No preambles, filler, meta-commentary, unsolicited timelines
- UK English always
- YYMMDD dates always
- Direct answers first — claim before context

Read positively: clarity and efficiency over aesthetic ornamentation.

## 7. Admiration references — CANDIDATE, operator confirms at session 1

**Status** (260423): All seven below are CANDIDATE references. Operator elected to confirm in context during the first Claude Design session rather than ahead of time. Claude Design should open session 1 with an explicit confirmation step — present each reference, the operator marks CONFIRMED / DROP / REPLACE-WITH-[X] — before proceeding to any visual-direction work.

No visual-inspiration bookmarks exist in the Brave library. The absence is itself informative (functional over aesthetic curation). Seven references curated to align with documented values (parsimony, evidence-based, biophilic-leaning, functional-over-ornamental, systems-literate):

1. **Craig Mod** — craigmod.com — walks, slow internet, considered pace, typographic care
2. **Frank Chimero** — frankchimero.com; "The Shape of Design" — humanist, thoughtful, quiet
3. **Edward Tufte** — edwardtufte.com — information density, evidence-based, typographic rigour
4. **Stripe Press** (press.stripe.com) and **Stripe Docs** (stripe.com/docs) — technical clarity, architectural typography
5. **Monocle** — monocle.com — editorial rigour, global restraint, quality-signalling-without-flash
6. **Basecamp / HEY** (basecamp.com, hey.com) — opinionated, direct, anti-enterprise-bloat
7. **The Pudding** — pudding.cool — data journalism, evidence-based narrative, serious-yet-accessible

Meta-frame: **Dieter Rams Ten Principles** — "Good design is as little design as possible."

Alternative substitutions to consider: Josef Müller-Brockmann, Ellen Lupton, Kevin Kelly's Cool Tools layout, Maciej Cegłowski (Pinboard) minimalism, Robin Sloan newsletter aesthetic, Werner Herzog's writing, Iain Sinclair or Rebecca Solnit book designs.

## 8. Existing assets — don't reinvent; reference

- NotebookLM `6I-COMMUNICATOR-TUTOR` (21 sources on communication and voice) — rich existing work
- NotebookLM `6I-CYBORG-SITRUNA_GRAPHICS_WORKFLOW_ENHANCE` (12 sources on visual/graphics production)
- Website repo CSS at `~/Local/WEB-PLATFORM/mitch-hensman-com/src/styles/`: `tokens.css`, `typography.css`, `forms.css`, `utilities.css`, `global.css`. Treat as hard constraint — additive only.
- Website docs at `docs/DESIGN-SYSTEM*.md` — implementation-layer prose; stays in website repo
- content-architect skill at `~/Local/00-ENABLEMENT/SKILLS/content-architect/SKILL.md` — 15 formats and 7 audience overlays; existing voice calibration logic to be integrated with `4-CONTEXTS/`

## 9. Open questions for Claude Design to resolve

- Tier 4 Contexts breadth — proposed nine primary: Website, Documents, Presentations, Social, Email, AI-Conversation, Reports, Client-Deliverables, Technical. Adjust with rationale.
- Anti-pattern list specifics — beyond documented bans, which "generic AI-look" tells apply? (gradients, glassmorphism, pastel washes, default Tailwind greys, big rounded cards, drop-shadow defaults)
- Imagery rules — photography style, illustration style, stock-versus-custom policy
- Motion / animation language — current website uses minimal motion; formalise or leave under-defined?
- Dark mode contract — explicit token pairs or algorithmic derivation?
- Multilingual — Thai typography needs; non-Latin PDF/EPUB rendering (see MEMORY pattern: use Playwright, not weasyprint)
- Per-goal override pattern — how should LBS-specific voice modulations compose with foundation voice?
- Accessibility specifics beyond WCAG AA floor — screen-reader rhetoric, keyboard-nav specifics, contrast beyond AA
- Decision-record format — how should design decisions be logged over time (ADR-style in `decisions/`)?

## 10. Constraints not to violate

- Brand identity in `STD-STYLE_GUIDE-excerpt.md` is canonical — do not redefine
- Running CSS in `tokens-reference.css` and `typography-reference.css` is the implementation of record — do not contradict (describe + extend)
- UK English, YYMMDD, no em-dashes, no emojis in prose are hard constraints; no exceptions without explicit reason
- WCAG AA minimum (from the 2024 philosophy doc); elaborate upward, never downward
- Honesty principle — no performative claims, no marketing-speak, no fake urgency

---

*Synthesis input for Claude Design. Not the final design system; the material the design system gets authored from.*
