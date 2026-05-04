---
title: Glossary
status: AUTHORED
last_reviewed: 2026-05-04
purpose: Terms-of-art used across this design system. Borrowed pattern from references/govuk-design-system.md (plain-English glossary). Update when a new term-of-art enters routine use.
---

# Glossary

Terms used routinely across this design system. Each entry: definition, where the term is load-bearing, and a pointer for full detail.

## Tier
One of the five layers of the design system: Foundations (1), Tokens (2), Patterns (3), Contexts (4), Interfaces (5). Used throughout. Sequencing rule: ADR 0008.

## Foundations
Tier 1. The invariant layer — philosophy, brand, voice, anti-patterns, accessibility. Downstream tiers reference; never contradict. Authored late per SESSION-PLAYBOOK §3.

## Tokens
Tier 2. Machine-readable design values: colour, typography, spacing, motion, radii, elevation, breakpoints, iconography. Paired markdown (spec + rationale) and YAML (machine-consumable). Per ADR 0007: nested namespaces (`hensph.*`, `connexusminds.*`, `shared.*`).

## Patterns
Tier 3. Composable rules tier-agnostic to surface — typography hierarchy, layout, data visualisation, document structure, interaction, multilingual typography, imagery, iconography, audio-video.

## Contexts
Tier 4. Per-surface applications — website, documents, presentations, social, email, AI conversation, reports, client deliverables, technical. Tier-4 is extensible; new contexts added when surfaces emerge.

## Interfaces
Tier 5. Consumer-specific exports — CSS pointer, YAML export, skill adapters, CLAUDE.md derivation, NotebookLM snapshot, prose summary. References upstream; never duplicates.

## Anchor
A confirmed reference site whose specific design elements the operator borrows. Lives in `references/<slug>.md` with `status: confirmed_anchor`. Used by ANTI-GENERIC-PROTOCOL §2 (cite-or-don't-ship) and §6 (per-session ritual).

## ADR (Architecture Decision Record)
A numbered file in `decisions/` capturing a structural decision: context, options considered, decision, rationale, consequences. Triggered when a load-bearing choice is made or reversed.

## SEED
Reference material in `SEED/` that Claude Design consumes as starting context: synthesised signals, archived philosophy, brand identity, voice constraints, reference CSS. Inputs, not canonical outputs. Per BRIEF §6 + §11 source-claim verification: SEED claims are inputs to verify, not facts to cite.

## Anti-generic protocol
The operator-side mechanism that prevents output regression to generic AI default. Lives in `1-FOUNDATIONS/ANTI-GENERIC-PROTOCOL.md`. Required reading every Claude Design session.

## Cite-or-don't-ship
Anti-generic-protocol §2 rule: every visual/voice choice traces to a confirmed anchor, an ADR, a verified SEED claim, or operator input. Choices traceable to none of the above are default-AI judgement and do not ship.

## Per-output weirdness check
Anti-generic-protocol §3 rule: every output of meaningful length contains one element uncomfortably specific to the operator — a quirk, quote, observation, or detail another AI without operator context could not have produced. Levers live in `PERSONAL-MARKERS.md`.

## Personal marker
An entry in `1-FOUNDATIONS/PERSONAL-MARKERS.md` — a concrete unfakeable detail about the operator (Bean the dog, Chiang Mai monsoon, Imperial MEng, vegan, etc.) that authoring AIs invoke for the weirdness check.

## Two brands
The operator runs HensPham (personal, `mitch-hensman.com`) and ConnexusMinds (corporate consultancy with Mai, `connexusminds.com` not yet deployed). Per BRIEF §1a + ADR 0003. Brand-aware tier files use per-brand sub-sections or namespaces (per ADR 0007).

## Composition / Lockup
The "ConnexusMinds by HensPham" combined-usage pattern for first-touch commercial contexts. Per ADR 0011: scoped intent, not yet deployed.

## Hue confusion
When two adjacent colours have hue similarity below ~2:1 ratio (e.g. Coral `#DC2626` and Amber `#D97706` at 1.52:1 per ADR 0004). Adjacency is banned for these pairs because they read as the same colour at small sizes or under accessibility filters.

## Data-ink ratio
Tufte's principle: maximise the proportion of "ink" in a visualisation that encodes data, minimise "ink" that encodes anything else. Used to identify chart-junk (gradients, drop shadows, decorative axes) for elimination. Per `references/edward-tufte.md`.

## Failure-mode catalogue
Anti-generic-protocol §4 list of recognisable generic-AI design failures (purple gradient hero, abstract corporate illustration, Tailwind-grey defaults, etc.). Recognised, not suggested.

## Opening-sentence test
Anti-generic-protocol §5 rule: every long-form document opens with a specific concrete observation, not abstract framing. If the opener could appear verbatim on fifty other consultancies' websites, rewrite.

## Per-session ritual
Anti-generic-protocol §6: at the start of every Claude Design session, before authoring a single tier line, state task + cite ≥1 anchor + cite ≥1 PERSONAL-MARKER + cite ≥1 anti-pattern at risk. Thirty seconds; prevents the slide.

## Fixture
A sample real-world prompt in `fixtures/` that the design system must handle correctly. Used for round-trip validation per INTEGRATION-MAP. Each fixture has `expects` and `forbids` properties; pass = all expects met, no forbids present.

## Example / Specimen
A concrete output specimen in `examples/` showing the design system applied to a real-world output. Sourced from real operator outputs (anonymised), not generated for the design system. Carries a sibling `.review.md` annotation.

## Drift
The condition where downstream consumers (skills, websites, exported tokens) diverge from upstream canonical sources. Detected by `scripts/diff-tokens.sh` and similar; surfaced for resolution via INTEGRATION-MAP.

## Operator-side plumbing
Files authored in Claude Code rather than Claude Design — mechanisms not design judgement: SKILL-ADAPTERS, SESSION-PLAYBOOK, DEPENDENCIES, ANTI-GENERIC-PROTOCOL, PERSONAL-MARKERS, MAI-REVIEW-PROTOCOL, scripts, fixtures, prompts. Routing them through Claude Design would mis-allocate session capacity.

## When to use / When not to use
GOV.UK Design System pattern (per `references/govuk-design-system.md`). Every pattern and context file should pair its positive guidance with explicit negative guidance — when this pattern *does not* apply. Half the documentation value is in the negative case.

## Mai-review packet
A structured review request sent to Mai per `reviews/MAI-REVIEW-PROTOCOL.md`. Shape: one-sentence summary + artefact link + ≤3 specific questions + optional context + deadline.
