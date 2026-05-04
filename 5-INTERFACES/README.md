# Tier 5 — Interfaces

Consumer-specific export layer. Thin adapters describing how different consumers (human, AI, tool) access the design system.

## Files

- `CSS-CANONICAL.md` — pointer to website/src/styles/ as canonical CSS; sync rules
- `YAML-EXPORT.md` — how `2-TOKENS/tokens.yaml` is maintained and consumed (Claude Design, Figma, future tooling)
- `SKILL-ADAPTERS.md` — per-skill loading spec, caching, version pin, drift detection (authored v0.1.8 — operator-side plumbing, not Claude Design judgement)
- `CLAUDE-MD-DERIVATION.md` — rule that CLAUDE.md §0.3 is a derived view of `4-CONTEXTS/AI-CONVERSATION.md`
- `NOTEBOOKLM-SNAPSHOT.md` — curated bundle spec for NotebookLM import
- `PROSE-SUMMARY.md` — 1-page human-readable overview; reusable for collaborators and onboarding

## Interface contract

Per CATALOGUE.md §4: every interface declares consumer + propagation + sync direction + drift-detection. References, never duplicates.
