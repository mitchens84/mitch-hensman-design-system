---
title: Voice Frameworks — Reference Library
source: NotebookLM `6I-COMMUNICATOR-TUTOR` (21 sources on communication and voice)
date_extracted: 2026-04-22
status: reference; serious prior art for voice authoring
purpose: Named frameworks, authors, and concepts that should inform VOICE authoring in 1-FOUNDATIONS/
---

# Voice Frameworks — Reference Library

Reference material for Claude Design when authoring `1-FOUNDATIONS/VOICE.md` and related context files. These are named frameworks and authors already internalised in the operator's voice-and-communication knowledge base. Treat as prior art: the operator likely has opinions about these; cite them where they inform design-system voice decisions.

## Core voice pillars (candidate frameworks)

### 1. BLUF + Pyramid Logic (Minto)

Bottom Line Up Front; Minto's Pyramid Principle. Lead with conclusions, then MECE (Mutually Exclusive, Collectively Exhaustive) supporting arguments. Related patterns:

- **SCQA** — Situation → Complication → Question → Answer
- **PREP** — Point → Reason → Example → Point

**Design-system implication**: voice pillars should codify BLUF as a structural rule. Documents, briefings, and AI responses start with the claim; elaboration follows.

### 2. Cognitive Load Optimisation (Sweller et al.)

Three types of cognitive load:
- **Extraneous** — minimise via clear organisation, consistent layout
- **Intrinsic** — manage by matching content to audience expertise
- **Germane** — optimise through progressive disclosure, chunking

**Design-system implication**: informs tier-2 patterns (LAYOUT, DOCUMENT-STRUCTURE). Progressive disclosure is a first-class pattern, not a stylistic preference.

### 3. Trust Triad

Balance expertise/competence, trustworthiness/character consistency, and benevolence/goodwill. Credibility alone breeds scepticism.

**Design-system implication**: brand identity (`BRAND.md`) benefits from naming all three explicitly rather than defaulting to "expertise". Avoids the cold-authority trap.

### 4. Empathic Resonance

Perspective-taking + affective valence matching (align emotional intensity with audience). Real-time Theory of Mind adaptation.

**Design-system implication**: tier-4 Contexts should declare the emotional valence of each surface (website is considered; client deliverable is confident; social is warm-direct).

### 5. Narrative Concreteness (Heath & Heath — SUCCESs + Hero's Journey)

- Single core proposition
- Unexpected hooks
- Concrete sensory language
- Credibility signals
- Emotional resonance
- Stories as vehicles
- Clear CTA momentum

**Design-system implication**: copywriting and content architecture across tiers. Especially relevant for REPORTS, CLIENT-DELIVERABLES, SOCIAL.

### 6. Given-New Contract (Halliday & Hasan)

Sentence-level coherence: known information before new information. Explicit discourse markers ("firstly", "in addition"). Cohesive devices — reference, substitution, ellipsis, conjunction, lexical cohesion.

**Design-system implication**: micro-level voice guidance. Belongs in `VOICE.md` as prose-structure rules; possibly also in `DOCUMENT-STRUCTURE.md`.

### 7. Cross-Cultural Code-Switching

Low-context / direct (Western) — explicit refusals, time-efficient.
High-context / indirect (Vietnamese / East Asian) — face-saving, harmony-preserving.

**Design-system implication**: the operator works cross-culturally (Chiang Mai base, Vietnamese collaborator Mai, British family, global clients). Voice pillars and context overrides should make code-switching explicit, not implicit.

## Modulation patterns

- **Temporal synchrony** — match conversational tempo (optimal rapport latency 200–500ms)
- **Pitch / intensity convergence** — mirror vocal pitch and energy → affective synchrony
- **Expertise Reversal Effect** — scaffolding works for novices but backfires with experts; calibrate by audience skill

## Dominant authors and schools

| Author / School | Contribution |
|---|---|
| **Minto** | Pyramid Principle (McKinsey BLUF/MECE framework) |
| **Levelt** | "Blueprint for the Speaker" — serial speech production model; Perceptual Loop Theory |
| **Baddeley** | Multi-component working memory model (Central Executive, Phonological Loop, Visuospatial Sketchpad, Episodic Buffer) |
| **Bialystok** | Bilingual cognitive control (inhibition, task-switching) |
| **Derwing & Munro** | L2 intelligibility-focused instruction |
| **Flege** | Speech Learning Model (SLM; phonetic similarity prediction) |
| **Halliday & Hasan** | Cohesive devices framework |
| **Sweller** | Cognitive Load Theory |
| **Brown & Levinson** | Politeness theory (cross-cultural pragmatics) |
| **Hall** | High/low-context communication cultures |
| **Hofstede** | Cultural dimensions theory |
| **Heath & Heath** | SUCCESs framework (Made to Stick) |

## How Claude Design should use this

- **Don't** cite these as if they're new to the operator — they're internalised.
- **Do** use them as scaffolding when authoring VOICE pillars: frame pillars in terms the operator already thinks in.
- **Do** cite a framework by name in `decisions/` ADRs when it drove a specific design choice ("adopted BLUF as structural rule because ...").
- **Don't** over-academicise — the voice pillars in the design system should be immediately operational, not a literature review. Frameworks inform; they don't dominate.

## Related

- NotebookLM source: `6I-COMMUNICATOR-TUTOR` — query it for depth on any of these
- Cross-reference: `STD-STYLE_GUIDE-excerpt.md` §4.2 (Voice Characteristics) already derives from this foundation
