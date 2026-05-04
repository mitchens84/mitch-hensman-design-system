---
title: Tier-3 Pattern Prompt
tier: 3
status: AUTHORED
parameterise: <FILE> ∈ {TYPOGRAPHY-HIERARCHY, LAYOUT, DATAVIZ, DOCUMENT-STRUCTURE, INTERACTION, MULTILINGUAL, IMAGERY, ICONOGRAPHY, AUDIO-VIDEO}
sequencing_note: Per SESSION-PLAYBOOK §3, TYPOGRAPHY-HIERARCHY first, then LAYOUT, then DOCUMENT-STRUCTURE; remaining order is open.
---

# Prompt — Tier 3 Patterns: `3-PATTERNS/<FILE>.md`

Apply the universal opening from `prompts/_universal-opening.md`, then continue.

## Tier-specific reading

- `BRIEF.md §11 → 3-PATTERNS` — completeness test for `<FILE>`
- `DEPENDENCIES.md` — Tier-2 token files this pattern depends on; Tier-4 contexts that consume this pattern
- The corresponding Tier-2 token files (e.g. for LAYOUT: `2-TOKENS/spacing.yaml`, `breakpoints.yaml`)
- `1-FOUNDATIONS/ACCESSIBILITY.md` (when authored) — patterns must respect accessibility constraints
- For DATAVIZ: `SEED/VISUAL-FRAMEWORKS.md` (OPAL, CIM, scene graph; verify any cited number per BRIEF §11)
- For MULTILINGUAL: MEMORY pattern — Playwright not weasyprint for Thai/Vietnamese PDF
- For IMAGERY: `SEED/VISUAL-FRAMEWORKS.md` + `references/the-pudding.md` (custom-SVG-only, no stock photography)
- For DOCUMENT-STRUCTURE: CLAUDE.md §0.3 glyph system (`❖ INFO · ➤ DO · ◆ DECIDE · ⧗ PENDING`); is this file the canonical home for those?

## Anchors most relevant for this tier

- For TYPOGRAPHY-HIERARCHY: `references/craig-mod.md` (three-element listing; `* * *` section breaks); `references/edward-tufte.md` (margin-note pattern, ~55%/40% body/margin ratio)
- For LAYOUT: `references/frank-chimero.md` (semantic `<article>` wrapper); `references/stripe-press.md` (card-per-content rhythm); `references/govuk-design-system.md` (left-aligned, no centred body)
- For DATAVIZ: `references/the-pudding.md` (dual SVG per chart; colour-as-data-encoding) and `references/edward-tufte.md` (data-ink ratio, chartjunk avoidance)
- For DOCUMENT-STRUCTURE: `references/govuk-design-system.md` ("when to use / when not to use" pairing); `references/stripe-docs.md` (H1 → prose → H2; no hero callouts)
- For INTERACTION: `references/stripe-docs.md` (action-verb labels; three-level sidebar maximum); `references/govuk-design-system.md` (button hierarchy; functional motion only)
- For MULTILINGUAL: no direct anchor in references/; rely on SEED + operator input for Thai/Vietnamese
- For IMAGERY: `references/stripe-press.md` (cover-art-only); `references/edward-tufte.md` (substantive-imagery-only); `references/the-pudding.md` (custom SVG over stock); `references/frank-chimero.md` (conceptual illustration thumbnails)
- For ICONOGRAPHY: `references/stripe-press.md` ("Living cover" text-label-not-badge); `references/govuk-design-system.md` (icons paired with text label, never alone)

## Personal-markers most likely to surface

- For MULTILINGUAL: §1 (Chiang Mai), §2 (Mai Vietnamese, Megan Croatia), §5 (Thai, Vietnamese, Croatian scripts) — the operator's actual language surfaces
- For DATAVIZ: §3 (Imperial MEng — chart literacy is engineer-baseline; operator can read dense data plots)
- For DOCUMENT-STRUCTURE: §6 (semicolons not em-dashes; YYMMDD dates) — pattern files restate the rule, not the rationale

## Anti-patterns most at risk

- **For LAYOUT**: "modern, clean, professional" framing. Specify what, by reference to whom.
- **For DATAVIZ**: chart-junk smuggled in as "branding" (gradient bars, drop-shadow data points). Per Tufte: data-ink ratio.
- **For IMAGERY**: defaulting to stock photography. Operator's stance is custom-or-nothing.
- **For INTERACTION**: "card with big rounded corners + drop shadow + hover lift" pattern. Per BRIEF §4: not the default.
- **For DOCUMENT-STRUCTURE**: emoji-as-decoration (vs functional status indicators). Per BRIEF §3: emojis in prose are banned; functional status indicators in tables only.

## Authoring guidance

- Patterns are *composable*. Each file is a kit of rules a Tier-4 context picks from.
- For each rule: state the rule, cite the source (anchor / ADR / SEED / operator input), give one positive example, give one negative example.
- Borrow GOV.UK's "when to use / when not to use" structure for every pattern.
- For patterns that depend on running implementation (LAYOUT for the website), reference rather than redefine. The website CSS is canonical for HensPham; this file describes intent and bounds.

## Completeness test

Per BRIEF §11.

## Authoring sequence

1. Enumerate the rules this pattern provides
2. For each rule: source, positive example, negative example, link to relevant token(s)
3. Cross-reference Tier-4 contexts that consume this pattern
4. List what this pattern explicitly does NOT cover

## End-of-session

Per universal-opening contract.
