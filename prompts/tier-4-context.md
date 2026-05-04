---
title: Tier-4 Context Prompt
tier: 4
status: AUTHORED
parameterise: <FILE> ∈ {WEBSITE, DOCUMENTS, PRESENTATIONS, SOCIAL, EMAIL, AI-CONVERSATION, REPORTS, CLIENT-DELIVERABLES, TECHNICAL}
parameterise: <SURFACE_NAME> — the human-readable name (e.g. "Cold outbound email")
sequencing_note: Per SESSION-PLAYBOOK §3, AI-CONVERSATION first (clear upstream constraint from CLAUDE.md §0.3); then DOCUMENTS, REPORTS, EMAIL, WEBSITE, SOCIAL, PRESENTATIONS, CLIENT-DELIVERABLES, TECHNICAL.
---

# Prompt — Tier 4 Context: `4-CONTEXTS/<FILE>.md` for surface "<SURFACE_NAME>"

Apply the universal opening from `prompts/_universal-opening.md`, then continue.

## Tier-specific reading

- `BRIEF.md §11 → 4-CONTEXTS` — completeness test
- `DEPENDENCIES.md` — Tier-3 patterns and Tier-2 tokens this context applies
- `1-FOUNDATIONS/PERSONAL-MARKERS.md §8` — daily anchors that constrain certain contexts (e.g. EMAIL: communicator default Claude voice; REPORTS: daily renderer is canonical HTML source)
- For AI-CONVERSATION: GDrive root `CLAUDE.md §0.3` — this context derives §0.3, not vice versa
- For CLIENT-DELIVERABLES: `SEED/CONNEXUSMINDS-voice-synthesis.md` + ADR 0011 (composition scope; primary ConnexusMinds surface)
- For WEBSITE: HensPham canonical CSS at `~/Local/WEB-PLATFORM/mitch-hensman-com/src/styles/`
- For SOCIAL: per-channel sub-sections — X, LinkedIn, Telegram, WhatsApp; each carries its own register
- The corresponding `examples/<file>-specimen.*` if one exists; if not, propose one as part of authoring
- The corresponding `fixtures/fixture-*.md` for the regression-suite expectation set

## Anchors most relevant for this tier

- For WEBSITE: `references/craig-mod.md` (single-column long-form); `references/frank-chimero.md` (semantic article wrapper); `references/edward-tufte.md` (sidenote pattern via tufte-css)
- For DOCUMENTS: `references/craig-mod.md` (footnote discipline; `* * *` section breaks); `references/edward-tufte.md` (margin notes for long documents)
- For PRESENTATIONS: no direct anchor in references/; rely on operator input + Tufte's "PowerPoint Is Evil" stance from his published essays
- For SOCIAL: `references/craig-mod.md` (newsletter-end colophon); `references/govuk-design-system.md` (plain-English voice)
- For EMAIL: `references/stripe-press.md` (assertive-not-effusive); `references/govuk-design-system.md` (outcome-oriented subject lines)
- For AI-CONVERSATION: `references/stripe-docs.md` (action-verb labels; three-level depth max)
- For REPORTS: `references/the-pudding.md` (dual SVG per chart; colour-as-data); `references/edward-tufte.md` (data-ink ratio); `references/govuk-design-system.md` (status-colour discipline)
- For CLIENT-DELIVERABLES: `references/stripe-press.md` (cover-as-sole-colour); `references/govuk-design-system.md` ("when to use / not to use" framing for proposal sections)
- For TECHNICAL: `references/stripe-docs.md` (the primary anchor — task-oriented page naming; H1 → prose → H2; sidebar structure)

## Personal-markers most likely to surface

- For EMAIL: §6 (semicolons not em-dashes; banned vocabulary); §8 (Claude voice default per `feedback_communicator_default_voice.md`)
- For SOCIAL (Telegram): §1 (Chiang Mai timezone — outbound-only any-time, inbound long-poll); §2 (Mai for partnership channels)
- For REPORTS (daily): §8 (renderer-only HTML per `feedback_daily_renderer_only_html.md`; transcript-primary Yesterday section per `feedback_daily_yesterday_session_scan.md`)
- For CLIENT-DELIVERABLES: §7 (ConnexusMinds-by-HensPham composition for first-touch only per ADR 0011)
- For WEBSITE: §4 (substance-first, evidence-based, anti-status-game) — informs hero-section voice

## Anti-patterns most at risk

- **For WEBSITE**: hero with "transform / unlock / empower" CTA. Per BRIEF §4: banned vocabulary.
- **For EMAIL**: marketing-newsletter conventions (gradient header, "View this email in your browser", emoji subject lines). Per BRIEF §3-4: none of these.
- **For SOCIAL**: emoji-laden engagement-bait posts. Operator-style social is rare and substantive.
- **For PRESENTATIONS**: "Cool dashboard with 7 KPIs and a sparkline" defaults. Per Tufte: data-ink ratio first.
- **For CLIENT-DELIVERABLES**: ConnexusMinds gradients applied beyond approved hero contexts. Per ADR 0004: gradients are permitted in named places only.
- **For REPORTS (daily)**: hand-crafted HTML divergence from renderer template. Per `feedback_daily_renderer_only_html.md`: htmlBody is verbatim renderer output.

## Authoring guidance

- Each context file: purpose + audience + applied Foundations / Tokens / Patterns choices + format-specific rules + anti-patterns + ≥1 example pointer.
- Use GOV.UK's "when to use this / when not to use this" framing.
- Cite per choice. A context that fails citation discipline (per ANTI-GENERIC-PROTOCOL §2) defaults to generic.
- For two-brand contexts (WEBSITE, CLIENT-DELIVERABLES, EMAIL): per-brand sub-sections.
- For AI-CONVERSATION: this is *upstream* of CLAUDE.md §0.3. Author such that §0.3 becomes a derived view with no content duplication. Coordinate with `5-INTERFACES/CLAUDE-MD-DERIVATION.md`.

## Completeness test

Per BRIEF §11. The canonical AI-CONVERSATION test: CLAUDE.md §0.3 derives from this file with no content duplication.

## Authoring sequence

1. State the surface in one paragraph (purpose, audience, frequency, format)
2. Apply: which Foundations / Tokens / Patterns govern? Cite by file
3. Surface-specific rules (rendering quirks, format constraints, register-specific)
4. Anti-patterns specific to this surface (additional to BRIEF §4)
5. Pointer to `examples/<surface>-specimen.*` (or commit one)
6. Pointer to `fixtures/fixture-*.md` for regression test
7. Cross-reference upstream and downstream

## End-of-session

Per universal-opening contract. Specifically for Tier-4:

- Each context file should produce at least one fixture and one example. If neither exists, the context is under-grounded.
- Surface a candidate-skill-binding update for `5-INTERFACES/SKILL-ADAPTERS.md` if this context is consumed by a skill.
