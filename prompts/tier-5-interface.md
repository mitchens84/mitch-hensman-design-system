---
title: Tier-5 Interface Prompt
tier: 5
status: AUTHORED
parameterise: <FILE> ∈ {CSS-CANONICAL, YAML-EXPORT, CLAUDE-MD-DERIVATION, NOTEBOOKLM-SNAPSHOT, PROSE-SUMMARY}
note: SKILL-ADAPTERS.md is operator-side plumbing — authored in Claude Code, not Claude Design.
---

# Prompt — Tier 5 Interface: `5-INTERFACES/<FILE>.md`

Apply the universal opening from `prompts/_universal-opening.md`, then continue.

## Tier-specific reading

- `BRIEF.md §11 → 5-INTERFACES` — completeness test
- `INTEGRATION-MAP.md` — every consumer + propagation rule
- `DEPENDENCIES.md → Tier-4 → Tier-5` — what this interface exports from upstream
- For CSS-CANONICAL: `SEED/tokens-reference.css`, `SEED/typography-reference.css`, plus any non-SEED running CSS in `~/Local/WEB-PLATFORM/mitch-hensman-com/src/styles/`
- For YAML-EXPORT: W3C Design Tokens spec (`https://www.designtokens.org/`); `decisions/0007-token-architecture-nested-source-split-exports.md` (nested source, split exports)
- For CLAUDE-MD-DERIVATION: GDrive root `CLAUDE.md §0.3`; `4-CONTEXTS/AI-CONVERSATION.md` is upstream
- For NOTEBOOKLM-SNAPSHOT: list of files composing the import bundle; refresh cadence
- For PROSE-SUMMARY: `1-FOUNDATIONS/*` plus a one-pager generation rule

## Anchors most relevant for this tier

- `references/govuk-design-system.md` — design-system-as-product structural model; informs how to document interfaces (what consumer / what they get / how propagation stays honest)
- `references/stripe-docs.md` — per-page consumer-facing structure (H1 → outcome → details)

## Personal-markers most likely to surface

- Tier-5 files are interface specs; PERSONAL-MARKERS rarely surface here
- Exception: PROSE-SUMMARY (a one-pager describing the design system to humans) may invoke §3 (origin + training) and §7 (two brands)

## Anti-patterns most at risk

- **Duplicating upstream content** — interface files describe propagation, never restate the upstream rule
- **Missing drift-detection** — every interface needs a "stays honest via" mechanism (script, manual review cadence, or version pin); a propagation rule without enforcement decays
- **Vague consumer naming** — "Various AI agents" is wrong; name them by skill file + access pattern

## Authoring guidance

Per CATALOGUE.md §4 interface-propagation rule. Every interface file declares:

1. **Consumer** — by file path or system identifier
2. **What it propagates** — by upstream file reference
3. **Sync direction** — push vs pull; canonical-where
4. **Drift-detection** — how the propagation stays honest (script, version pin, review cadence)
5. **Failure mode** — what happens when the propagation breaks
6. **Manual-override** — how a consumer asserts a scoped exception

## Completeness test

Per BRIEF §11: every interface file has consumer + access pattern + sync obligation + drift-detection rule.

## Authoring sequence

1. List every consumer of this interface
2. For each consumer: §1–§6 above
3. Aggregate drift-detection plan (which scripts run; which cadence; what they verify)
4. Surface any consumer that violates the reference-not-duplicate rule (per CATALOGUE.md §4)

## End-of-session

Per universal-opening contract. Specifically for Tier-5:

- An interface authored without verifying the consumer exists in the form claimed will fail at first use. Verify against the actual consumer file before committing.
- Tier-5 changes ripple. If you change CSS-CANONICAL sync direction, the website repo coupling note needs updating; flag the downstream work explicitly.
