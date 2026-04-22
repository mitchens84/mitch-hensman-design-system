# CATALOGUE — Scope, Coverage, Interfaces

High-visibility navigation and progress-tracking document for this design system. Serves four purposes:

1. **Scope boundary** — what this system covers; what it explicitly doesn't
2. **Coverage checklist** — what's populated, what's scaffold-only, what's pending
3. **Entry point map** — where to look for what
4. **Interface propagation** — where this system connects to other systems and how those connections are kept honest

Maintained manually; update with each CHANGELOG entry.

---

## 1. Scope — what this design system covers

### In scope

The governing design artefacts for all output Mitch produces, across every surface:

| Tier | Covered concerns |
|---|---|
| **Foundations** | Philosophy, brand identity, voice (pillars + modulation), anti-patterns, accessibility baseline |
| **Tokens** | Colour, typography, spacing, motion — machine-readable (YAML) + human-readable (MD rationale) |
| **Patterns** | Typography hierarchy, layout rules, data visualisation, document structure, interaction patterns (web), multilingual typography |
| **Contexts** | Website, documents (MD/PDF/DOCX/EPUB), presentations, social (X/LinkedIn/Telegram/WhatsApp), email, AI conversation, reports, client deliverables, technical docs; plus per-goal overrides (`GOAL-OVERRIDES/`) |
| **Interfaces** | CSS canonical pointer, YAML export, skill adapters, CLAUDE.md derivation, NotebookLM snapshot, prose summary |

### Out of scope — never authored here

- **Full brand refresh** — existing brand (Connexus commercial; `mitch-hensman.com` personal) remains canonical
- **Website visual redesign** — this system *feeds* the website; the website repo owns its own implementation
- **Figma workspace design files** — tokens format here is Figma-ready but no `.fig` files live here
- **Sensitive or private commercial information** — this is a public repo
- **Client-specific brand deliverables** — Sitruna/Connexus engagements have their own brand systems (referenced, not included)
- **Tool-specific operator documentation** — lives in `00-MASTER/03-STANDARDS/STD-TOOL_*.md`; not here
- **Sensitive identity or strategy documents** — `PROFILE-USER.md`, goal strategy docs stay on GDrive

### Extension rules

- **Contexts tier is extensible** — add a new context file when a new surface emerges (future: podcast audio identity, YouTube channel art, video editing style)
- **Goal overrides are additive** — new files in `4-CONTEXTS/GOAL-OVERRIDES/` as goals require them
- **Foundations are rarely added** — philosophy/brand/voice are relatively stable; new foundation files warrant ADR discussion

---

## 2. Coverage checklist

Tracks what's populated vs scaffold-only. Status symbols: ✓ complete · ▶ in progress · ○ scaffold only · — not applicable.

### Root

| File | Status | Notes |
|---|---|---|
| `README.md` | ✓ | Repo orientation |
| `BRIEF.md` | ✓ | Claude Design authoring instructions |
| `INTEGRATION-MAP.md` | ✓ | Post-handoff integration guide |
| `CATALOGUE.md` | ✓ | This document |
| `CHANGELOG.md` | ▶ | Entries added per session |
| `LICENSE` | ✓ | MIT |

### SEED/

| File | Status | Notes |
|---|---|---|
| `SEED/README.md` | ✓ | |
| `SEED/DESIGN-SIGNALS.md` | ✓ | Synthesis |
| `SEED/PHILOSOPHY-2024.md` | ✓ | Archived 8 principles |
| `SEED/STD-STYLE_GUIDE-excerpt.md` | ✓ | Brand identity excerpt |
| `SEED/VOICE-CONSTRAINTS.md` | ✓ | Hard constraints |
| `SEED/VOICE-FRAMEWORKS.md` | ✓ | Named frameworks (Minto, BLUF, etc.) |
| `SEED/VISUAL-FRAMEWORKS.md` | ✓ | Named frameworks (OPAL, CIM, etc.) |
| `SEED/tokens-reference.css` | ✓ | From mitch-hensman.com |
| `SEED/typography-reference.css` | ✓ | From mitch-hensman.com |

### 1-FOUNDATIONS/

| File | Status |
|---|---|
| `README.md` | ✓ |
| `PHILOSOPHY.md` | ○ |
| `BRAND.md` | ○ |
| `VOICE.md` | ○ |
| `ANTI-PATTERNS.md` | ○ |
| `ACCESSIBILITY.md` | ○ |

### 2-TOKENS/

| File | Status |
|---|---|
| `README.md` | ✓ |
| `colour.md` + `colour.yaml` | ○ |
| `typography.md` + `typography.yaml` | ○ |
| `spacing.md` + `spacing.yaml` | ○ |
| `motion.md` + `motion.yaml` | ○ |
| `tokens.yaml` | ○ |

### 3-PATTERNS/

| File | Status |
|---|---|
| `README.md` | ✓ |
| `TYPOGRAPHY-HIERARCHY.md` | ○ |
| `LAYOUT.md` | ○ |
| `DATAVIZ.md` | ○ |
| `DOCUMENT-STRUCTURE.md` | ○ |
| `INTERACTION.md` | ○ |
| `MULTILINGUAL.md` | ○ |

### 4-CONTEXTS/

| File | Status |
|---|---|
| `README.md` | ✓ |
| `WEBSITE.md` | ○ |
| `DOCUMENTS.md` | ○ |
| `PRESENTATIONS.md` | ○ |
| `SOCIAL.md` | ○ |
| `EMAIL.md` | ○ |
| `AI-CONVERSATION.md` | ○ |
| `REPORTS.md` | ○ |
| `CLIENT-DELIVERABLES.md` | ○ |
| `TECHNICAL.md` | ○ |
| `GOAL-OVERRIDES/README.md` | ✓ |

### 5-INTERFACES/

| File | Status |
|---|---|
| `README.md` | ✓ |
| `CSS-CANONICAL.md` | ○ |
| `YAML-EXPORT.md` | ○ |
| `SKILL-ADAPTERS.md` | ○ |
| `CLAUDE-MD-DERIVATION.md` | ○ |
| `NOTEBOOKLM-SNAPSHOT.md` | ○ |
| `PROSE-SUMMARY.md` | ○ |

### decisions/

| File | Status |
|---|---|
| `decisions/README.md` | ✓ |
| `decisions/0001-scaffold-establishment.md` | ✓ |

### docs/

| File | Status |
|---|---|
| `docs/PROMPTING-PLAYBOOK.md` | ✓ |
| `docs/intro-for-sharing.md` | ✓ |

---

## 3. Entry-point map

Where to look for what.

| If you want... | Start here |
|---|---|
| To understand the system | `README.md` → this file → `SEED/DESIGN-SIGNALS.md` |
| To author into the system | `BRIEF.md` → `docs/PROMPTING-PLAYBOOK.md` |
| To share an intro | `docs/intro-for-sharing.md` |
| Brand identity canonical | `SEED/STD-STYLE_GUIDE-excerpt.md` |
| Voice rules | `1-FOUNDATIONS/VOICE.md` (when populated); `SEED/VOICE-CONSTRAINTS.md` for hard constraints |
| Existing voice frameworks | `SEED/VOICE-FRAMEWORKS.md` |
| Existing visual frameworks | `SEED/VISUAL-FRAMEWORKS.md` |
| Design tokens (canonical spec) | `2-TOKENS/*` |
| Design tokens (running CSS) | `SEED/tokens-reference.css` and `typography-reference.css` |
| Why a decision was made | `decisions/` |
| Version history | `CHANGELOG.md` |
| How outputs propagate into the wider system | `INTEGRATION-MAP.md` |

---

## 4. Interface propagation — where this system connects outward

Each interface has: (a) what it propagates, (b) where it propagates to, (c) how the propagation stays honest.

| Interface | Propagates to | Stays honest via |
|---|---|---|
| **CSS canonical** | `mitch-hensman-com` website at `src/styles/` | Sync direction declared in `5-INTERFACES/CSS-CANONICAL.md`; verification script checks parity |
| **YAML token export** | Claude Design extraction; potential Figma tokens import; downstream tooling | Conformance to W3C Design Tokens spec where reasonable; declared in `5-INTERFACES/YAML-EXPORT.md` |
| **Skill adapters** | `content-architect`, `build-engineer`, `communicator` SKILL.md files reference this repo's contexts/voice/patterns | `5-INTERFACES/SKILL-ADAPTERS.md` declares reference format; skill files don't duplicate rules |
| **CLAUDE.md §0.3 derivation** | GDrive root `CLAUDE.md` Response Style Defaults | `5-INTERFACES/CLAUDE-MD-DERIVATION.md` declares §0.3 is a derived view; update procedure documented |
| **NotebookLM snapshot** | NotebookLM notebook for synthesis Q&A | `5-INTERFACES/NOTEBOOKLM-SNAPSHOT.md` specifies which files compose the snapshot + refresh cadence |
| **Prose summary** | Shareable with Mai, Megan, future collaborators | `5-INTERFACES/PROSE-SUMMARY.md` — 1-pager generated from foundations |
| **Legacy GDrive STDs** | `STD-VISUAL_DESIGN.md`, `STD-STYLE_GUIDE*.md`, `STD-PROTOCOL_DESIGN.md`, `STD-DATAVIZ.md` migrate to stubs redirecting here | `INTEGRATION-MAP.md` §"Legacy STD migration" |
| **Templates** | `00-MASTER/04-TEMPLATES/*` (daily report, meeting agenda, proposal, invoice) add frontmatter reference to their controlling `4-CONTEXTS/*` doc | `INTEGRATION-MAP.md` + per-template frontmatter |

**Rule**: every consumer references rather than duplicates. If a consumer wants to restate something, it becomes an override with explicit reason, documented in `decisions/`.

---

## 5. Completeness tiers

The system is considered **complete at a given tier** when:

- **Tier 1 complete**: `PHILOSOPHY.md`, `BRAND.md`, `VOICE.md`, `ANTI-PATTERNS.md`, `ACCESSIBILITY.md` all authored; operator blind-test passes (another AI or person can make consistent design decisions from them).
- **Tier 2 complete**: all token files match or extend `SEED/tokens-reference.css`; unified `tokens.yaml` validates as Design Tokens spec; round-trip through Claude Design produces brand-faithful output.
- **Tier 3 complete**: each pattern file has rules + examples + anti-patterns.
- **Tier 4 complete**: each of the 9 primary contexts has been authored and at least one goal-override has been exemplified.
- **Tier 5 complete**: each interface has a specification document + any required sync tooling.
- **Overall v1.0**: all five tiers complete; round-trip validation passes on multiple prompts; Phase 3 integration complete per `INTEGRATION-MAP.md`.

---

## 6. Maintenance

- Update coverage checklist (§2) when any file status changes
- Add CHANGELOG entry per session
- Add ADR when an architectural decision is made
- Review quarterly for scope drift, dead references, stale SEED material
- Maintenance item tracked in `00-MASTER/02-AUTOMATION/MAINTENANCE_CHECKLIST.md` after Phase 3 integration
