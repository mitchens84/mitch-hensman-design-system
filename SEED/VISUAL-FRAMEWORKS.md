---
title: Visual Frameworks — Reference Library
source: NotebookLM `6I-CYBORG-SITRUNA_GRAPHICS_WORKFLOW_ENHANCE` (12 sources on visual/graphics production)
date_extracted: 2026-04-22
status: reference; applicable to imagery rules and patterns authoring
purpose: Named frameworks, techniques, and validation tools for visual/graphics production that should inform Claude Design authoring of Patterns, Tokens, and Contexts tiers
---

# Visual Frameworks — Reference Library

Reference material for Claude Design when authoring imagery rules, pattern specifications, and context-specific visual conventions. These frameworks emerge primarily from the operator's Sitruna (Amazon ops) work but generalise to broader visual design authoring.

## Production principles

### 1. Strict compliance baseline

Amazon-derived but generally applicable standards for product/hero imagery:
- Pure white background (RGB 255,255,255) for main product shots
- Product fills 85%+ of frame
- No watermarks, logos, text overlays, or misleading props
- Minimum 1,000px longest side; 2,000×2,000 recommended
- JPEG under 10MB; RGB or CMYK

**Design-system implication**: IMAGERY.md in `3-PATTERNS/` (or `4-CONTEXTS/WEBSITE.md` and `CLIENT-DELIVERABLES.md`) should declare specs for hero/product photography vs lifestyle/contextual imagery.

### 2. Product characteristic preservation (OPAL framework)

<!-- UNVERIFIED CLAIM (flagged 260423): The "94.3% accuracy" figure below does not trace to the OPAL primary literature (Vivian Liu et al., ACM — OPAL's published scope is multimodal image generation for news illustration, not product-imagery preservation). Treat as AI-inference-laundered; verify against primary source before citing in any authored tier file. Per BRIEF §11 source-claim verification rule. -->

OPAL: 94.3% accuracy on preserving exact material quality, colour coordination, and patterns while allowing background/composition enhancement. Critical when AI generates or augments product imagery.

**Design-system implication**: anti-pattern rule for AI-generated product shots — the product itself must be exactly preserved; only context varies.

### 3. Psychology-driven supplementary context

Emotional and practical use-case scenarios, problem-solving framings, lifestyle integration. Applied to supplementary imagery (vs strict product focus for mains).

**Design-system implication**: informs IMAGERY.md split between "hero" (strict) and "lifestyle" (narrative) modes. Each has different rules.

### 4. Iterative refinement discipline

- Quick tweaks without restart
- A/B testing via PickFu or in-platform experiments
- Measure CTR / conversion impact

**Design-system implication**: informs the authoring workflow in `docs/PROMPTING-PLAYBOOK.md` — iteration is expected; restart only when fundamentally off.

### 5. Brand style mimicry (around AI content flags)

<!-- UNVERIFIED CLAIM (flagged 260423): The "90% rejection" figure below could not be sourced. The closest public claim (ZebraTruth marketing content) describes the inverse causality — brands rejecting AI videos, not AI tools rejecting trademarked elements. Treat as AI-inference-laundered; verify against primary benchmark before citing in any authored tier file. Per BRIEF §11 source-claim verification rule. -->

Generative AI rejects trademarked elements up to 90% of the time. Solutions: style transfer, descriptive component elements, composition rather than direct copying.

**Design-system implication**: ANTI-PATTERNS.md should declare "do not describe or generate trademarked visual elements directly; abstract them via descriptive composition".

### 6. Adaptive audience aesthetics

Vary aesthetics by demographic preferences while preserving exact product appearance.

**Design-system implication**: multi-context pattern — the same product or content adapts visual framing per audience; links to `GOAL-OVERRIDES/` mechanism.

## Meta-frameworks for generative work

### CIM Architecture (Context-Instruction-Modality)

Three-layer stack for prompting:
- **Context** — role, domain, operational constraints
- **Instruction** — the specific task
- **Modality** — text, image, mixed output format

**Design-system implication**: belongs in `docs/PROMPTING-PLAYBOOK.md` as a naming scheme for prompt components. Applies to both Claude Design (this system's author) and downstream Claude instances.

### Scene Graph Generation (GETReason)

Extract entities, attributes, and relationships as structured JSON from an image or design.

**Design-system implication**: concept for generating token definitions from design prototypes — reverse-engineering structured data from a visual output.

### Multi-Modal Chain-of-Thought

Coordinated text + image directives; 75% hallucination reduction when properly structured.

**Design-system implication**: when Claude Design generates both a visual and documentation, ensure they are co-generated with shared reasoning, not sequential disconnected passes.

### LLMLingua (Prompt Compression)

Up to 20× prompt reduction with preserved semantics.

**Design-system implication**: as SEED material grows, explore compression for session-opening prompts. Particularly relevant once the authored design system itself becomes input for downstream use.

### EPiC (Evolutionary Prompt Engineering)

Intent analysis → synthetic data → cost-aware optimisation.

**Design-system implication**: pattern for session-over-session improvement of the prompting playbook. Each session's outcomes feed the next opener.

### SILMM (Self-Improving Large Multimodal Models)

DPO (Direct Preference Optimisation) and iterative self-feedback.

**Design-system implication**: model for how the design system itself learns across Claude Design sessions — operator preference signals compound.

## Validation metrics

- **LPIPS** (Learned Perceptual Image Patch Similarity) — structural similarity between design outputs and reference
- **Directional CLIP scores** — text-image alignment verification

**Design-system implication**: machine-verifiable acceptance tests for round-trip validation. Can be scripted.

## How Claude Design should use this

- **Anchor tier-2 (Tokens) and tier-3 (Patterns)** — especially imagery rules, motion, visual hierarchy
- **Inform the Contexts tier** — each context that includes imagery (WEBSITE, CLIENT-DELIVERABLES, SOCIAL, EMAIL) references this
- **Feed anti-pattern construction** — several patterns here imply corresponding anti-patterns
- **Don't copy-paste academic prose** — translate frameworks into operational rules the operator can apply without looking up a paper

## Related

- NotebookLM source: `6I-CYBORG-SITRUNA_GRAPHICS_WORKFLOW_ENHANCE` — query for depth
- Cross-reference: `STD-DATAVIZ.md` — existing data visualisation standard (will be absorbed or referenced in `3-PATTERNS/DATAVIZ.md`)
