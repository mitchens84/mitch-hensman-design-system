---
title: Tier Dependencies
status: AUTHORED
last_reviewed: 2026-05-04
---

# Tier Dependencies

Which tier files depend on which upstream tier files. Cross-tier contradiction is forbidden (per BRIEF §11); this map prevents accidental violations and clarifies authoring order.

## Reading rule

`A → B` means: changing A may invalidate B. If you edit A, audit every B that depends on it.

## Tier-1 (Foundations) dependencies

```
PHILOSOPHY → BRAND → VOICE → ANTI-PATTERNS → ACCESSIBILITY
   ↑              ↑          ↑
   └──────────────┴──────────┴── all of these depend on SEED material
```

Tier-1 files have minimal cross-dependencies among themselves; each restates a piece of operator stance. Where they overlap (e.g. ACCESSIBILITY references VOICE for inclusive language), the dependency is explicit.

## Tier-1 → Tier-2

```
PHILOSOPHY (parsimony principle)        → spacing (scale restraint), motion (default-off)
BRAND (two-brand architecture)          → ALL token files (per-brand namespacing per ADR 0007)
ANTI-PATTERNS (no big rounded corners)  → radii (conservative scale)
ANTI-PATTERNS (no drop-shadow defaults) → elevation (likely no-shadow stance)
ANTI-PATTERNS (no decorative motion)    → motion (functional-only tokens)
ACCESSIBILITY (WCAG AA+)                → colour (contrast pairs verified), typography (size floors)
```

## Tier-2 → Tier-3

```
colour                  → DATAVIZ (encoding palette), TYPOGRAPHY-HIERARCHY (heading colour), DOCUMENT-STRUCTURE (anchor colour)
typography              → TYPOGRAPHY-HIERARCHY (scale application), LAYOUT (measure), MULTILINGUAL (script-switching)
spacing                 → LAYOUT (grid + section spacing), TYPOGRAPHY-HIERARCHY (rhythm)
motion                  → INTERACTION (state transitions)
radii                   → INTERACTION (button + form element radii)
iconography (token)     → ICONOGRAPHY (pattern), DOCUMENT-STRUCTURE (anchor icons)
breakpoints             → LAYOUT (responsive rules)
```

## Tier-3 → Tier-4

```
TYPOGRAPHY-HIERARCHY    → ALL contexts (every surface uses headings)
LAYOUT                  → WEBSITE, REPORTS, DOCUMENTS, CLIENT-DELIVERABLES
DATAVIZ                 → REPORTS, CLIENT-DELIVERABLES, WEBSITE (article charts)
DOCUMENT-STRUCTURE      → DOCUMENTS, REPORTS, TECHNICAL, CLIENT-DELIVERABLES
INTERACTION             → WEBSITE (primary), EMAIL (CTAs)
MULTILINGUAL            → DOCUMENTS, REPORTS, EMAIL (any non-Latin output)
IMAGERY                 → WEBSITE, SOCIAL, PRESENTATIONS, CLIENT-DELIVERABLES
ICONOGRAPHY             → ALL contexts using glyphs / status indicators
AUDIO-VIDEO             → (none yet — extensibility scaffold)
```

## Tier-4 → Tier-5

```
AI-CONVERSATION         → CLAUDE-MD-DERIVATION (CLAUDE.md §0.3 derived from this context)
WEBSITE                 → CSS-CANONICAL (sync direction declared)
ALL contexts            → SKILL-ADAPTERS (which skill loads which context)
ALL tier files          → YAML-EXPORT (machine-readable export format)
ALL tier files          → NOTEBOOKLM-SNAPSHOT (which files compose the import bundle)
1-FOUNDATIONS/*         → PROSE-SUMMARY (one-pager generated from foundations)
```

## Cross-tier contradictions — handling

If editing tier N reveals a contradiction with tier M:

1. **Tier M < N** (downstream contradicts upstream you're editing) → either roll back the edit OR upgrade the contradiction to an ADR-worthy scoped exception
2. **Tier M > N** (upstream contradicts downstream you're editing) → fix downstream OR challenge the upstream rule via a new ADR
3. **Same tier** (two tier-N files contradict) → ADR; one wins; loser updates

ADRs go in `decisions/`; numbered; reference both files involved.

## Maintenance

This file updates when a new file is added or a dependency relationship is created. Run after every minor-version bump:

```bash
# Walk every tier file; check that any cross-reference to another tier file
# matches a dependency declared here
grep -rE '\[.*\]\(\.\./[1-5]-' [1-5]-* | sort -u
```

(Manual review for now; automation deferred.)
