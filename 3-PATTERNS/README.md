# Tier 3 — Patterns

Composable rules layer. Tier-agnostic patterns that any context applies. Builds on Foundations + Tokens.

## Files

- `TYPOGRAPHY-HIERARCHY.md` — heading scale application, reading rhythm
- `LAYOUT.md` — scannability, inverted pyramid, visual hierarchy
- `DATAVIZ.md` — data visualisation rules; absorbs STD-DATAVIZ
- `DOCUMENT-STRUCTURE.md` — frontmatter schema, section conventions, document-anchor icons
- `INTERACTION.md` — web-specific: links, buttons, forms
- `MULTILINGUAL.md` — Thai + Vietnamese + non-Latin typography; PDF/EPUB rendering (use Playwright, not weasyprint)
- `IMAGERY.md` — photography + illustration rules; AI-generation allowances + bans (added v0.1.8)
- `ICONOGRAPHY.md` — icon system; document-anchor glyphs; functional status indicators (added v0.1.8)
- `AUDIO-VIDEO.md` — extensibility scaffold; populate when audio or video surface emerges (added v0.1.8)

## Authoring sequence

Per SESSION-PLAYBOOK §3: TYPOGRAPHY-HIERARCHY first, then LAYOUT, then DOCUMENT-STRUCTURE; remaining order open. Each pattern depends on Tier-2 token kinds documented in DEPENDENCIES.md.

## Authoring framing

Borrow GOV.UK's "when to use this / when not to use this" pairing per pattern (per `references/govuk-design-system.md`). Cite anchors / ADRs / SEED / operator input per choice (per ANTI-GENERIC-PROTOCOL §2).
