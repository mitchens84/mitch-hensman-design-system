---
title: Tier-1 Foundations Prompt
tier: 1
status: AUTHORED
parameterise: <FILE> ∈ {PHILOSOPHY, BRAND, VOICE, ANTI-PATTERNS, ACCESSIBILITY, LOGO, ANTI-GENERIC-PROTOCOL, PERSONAL-MARKERS}
sequencing_note: Per ADR 0008 + SESSION-PLAYBOOK §3, Tier-1 PHILOSOPHY/BRAND/VOICE/ANTI-PATTERNS/ACCESSIBILITY are authored LATE — after downstream tiers reveal what is genuinely invariant. ANTI-GENERIC-PROTOCOL/PERSONAL-MARKERS/LOGO are exceptions (operator-side or pre-authored).
---

# Prompt — Tier 1 Foundations: `1-FOUNDATIONS/<FILE>.md`

Apply the universal opening from `prompts/_universal-opening.md`, then continue.

## Tier-specific reading

Read these in addition to the universal-opening list:

- `BRIEF.md §11 → 1-FOUNDATIONS` — completeness test for `<FILE>`
- `DEPENDENCIES.md` — what downstream tiers rely on this file
- The current scaffold contents of `1-FOUNDATIONS/<FILE>.md` (if not empty)
- For `VOICE.md`: also read `SEED/VOICE-FRAMEWORKS.md` + `SEED/CONNEXUSMINDS-voice-synthesis.md`
- For `BRAND.md`: also read `SEED/CONNEXUSMINDS-brand-design-guide.md` + the BRIEF §1a two-brand architecture
- For `ANTI-PATTERNS.md`: BRIEF §4 is the primary spine; expand with rationale per item
- For `ACCESSIBILITY.md`: BRIEF §3 → "Accessibility" subsection; six coverage areas (contrast, keyboard, screen-reader, cognitive, motion-sensitivity, language)

## Anchors most relevant for this tier

- `references/govuk-design-system.md` — the *only* reference that is itself a foundations layer; their "when to use / when not to use" pairing applies to ANTI-PATTERNS; their "Research" section per component models evidence-citation discipline
- `references/edward-tufte.md` — for ACCESSIBILITY's typography-readability dimension (margins, leading, measure)
- `references/craig-mod.md` — for VOICE's first-person assertive register

## Personal-markers most likely to surface

- For `BRAND.md`: §7 (Two brands) is load-bearing; the brand divergence + composition rule is the heart of the file
- For `VOICE.md`: §6 (Voice tells) — semicolons, banned vocabulary
- For `LOGO.md`: §7 (Two brands) — per-brand visual divergence
- For `PHILOSOPHY.md`: §4 (Practice + values) — vegan, minimalist-leaning, evidence-based, anti-status-game

## Anti-patterns most at risk

- **For PHILOSOPHY**: producing generic "we believe in clarity, accessibility, and good design" content. Test: would the document survive being attributed to a SaaS company? If yes, fail.
- **For VOICE**: defining voice in adjectives ("clear, friendly, professional"). Voice is defined in observable patterns (sentence length, hedge frequency, banned vocabulary, opening-sentence behaviour) — not in adjectives.
- **For ANTI-PATTERNS**: paraphrasing BRIEF §4 without adding rationale. Each item needs *why* the operator rejects it, not just *what* is rejected.

## Authoring guidance

- Foundation files are **invariant-layer**. Do not encode current circumstances; encode stance.
- Cite SEED material by section. Where a SEED claim is your only source, verify it before restating (per BRIEF §11 source-claim verification).
- For two-brand-aware files (BRAND, ANTI-PATTERNS, LOGO), use per-brand sub-sections rather than two files unless divergence justifies the split (decide via ADR).
- Cross-reference rather than duplicate. ACCESSIBILITY links to MULTILINGUAL for Thai-script considerations, not duplicates them.

## Completeness test

Per BRIEF §11. Restate it explicitly at the close of authoring; verify each criterion is met.

## Authoring sequence (within this file)

1. Restate the file's purpose in the operator's voice
2. Author the substantive sections per BRIEF §11
3. Cross-reference upstream and downstream files explicitly
4. Add a "What this file is NOT" section to bound scope
5. Add a "Last reviewed" frontmatter field

## End-of-session

Per universal-opening end-of-session contract. Specifically for Tier-1:

- Foundation files commit you for a long time. If the operator hesitates, surface the hesitation as a discussion point rather than papering over it.
- A foundation file that needed three sessions to converge is healthier than one that converged in twenty minutes.
