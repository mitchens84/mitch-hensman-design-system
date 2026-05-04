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

- **Full brand refresh** — the two operator brands (HensPham personal + ConnexusMinds corporate) remain canonical; this system structures and completes them, does not redefine them
- **Website visual redesign** — this system *feeds* the websites; each website repo owns its own implementation
- **Figma workspace design files** — tokens format here is Figma-ready but no `.fig` files live here
- **Sensitive or private commercial information** — this is a public repo
- **Client-brand deliverables** — brand work done *for* external clients (e.g., Sitruna's own listings, a client's brand identity) is out of scope; the *operator's own brands*, including ConnexusMinds as Mitch's consultancy face, are in scope (see §1a below)
- **Tool-specific operator documentation** — lives in `00-MASTER/03-STANDARDS/STD-TOOL_*.md`; not here
- **Sensitive identity or strategy documents** — `PROFILE-USER.md`, goal strategy docs, operational documents marked "Not for clients" (e.g., `ENGAGEMENT_POSTURE.md`, `STD-SIGNATURE_POLICY.md`) stay on GDrive and are referenced, not copied

### 1a. Two-brand architecture in scope

The operator runs two brands in complementary layers:

- **HensPham** (personal) — `mitch-hensman.com`; substance-first, evidence-based, functional-over-ornamental; no gradients, no emoji in prose, UK English, restrained motion. Running CSS in `SEED/tokens-reference.css` + `SEED/typography-reference.css` is the implementation of record.
- **ConnexusMinds** (corporate consultancy, formerly "Connexus Intelligence") — `connexusminds.com` (site source not yet available); network-topology visual metaphor, distinct colour palette (Deep Teal #0F766E, Network Navy #1E3A8A, Intelligence Sage #166534, Insight Amber #D97706), typography Inter Variable, approved Intelligence-Flow gradient Deep Teal → Network Navy. Canonical specs in `SEED/CONNEXUSMINDS-colour-guide.md` + `SEED/CONNEXUSMINDS-brand-design-guide.md`.

Both are in scope. The design system must articulate:

- What is shared (voice principles: honesty, directness, evidence, UK English, Minto/BLUF structure, accessibility AA+ floor)
- What diverges (visual language: restrained-monochrome personal vs network-topology corporate; gradient allowance; register tone)
- Composition rules — when both brands co-appear ("ConnexusMinds by HensPham"), which rules govern

Tier-1 Foundations capture shared principles; Tier-2 Tokens contain both brand token sets; Tier-4 Contexts handles per-surface application; `GOAL-OVERRIDES/7A-CONNEXUS.md` can formalise the corporate-register override.

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
| `SESSION-PLAYBOOK.md` | ✓ | Per-session entry point (added v0.1.8) |
| `DEPENDENCIES.md` | ✓ | Tier dependency map (added v0.1.8) |
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
| `SEED/VISUAL-FRAMEWORKS.md` | ✓ | Named frameworks (OPAL, CIM, etc.); two claims flagged UNVERIFIED |
| `SEED/tokens-reference.css` | ✓ | From mitch-hensman.com (HensPham brand) |
| `SEED/typography-reference.css` | ✓ | From mitch-hensman.com (HensPham brand) |
| `SEED/CONNEXUSMINDS-colour-guide.md` | ✓ | ConnexusMinds canonical palette + gradient + usage rules |
| `SEED/CONNEXUSMINDS-brand-design-guide.md` | ✓ | ConnexusMinds full brand spec (network topology metaphor, typography, applications, implementation) |
| `SEED/CONNEXUSMINDS-voice-synthesis.md` | ✓ | Public-safe voice extracts for corporate register (pointers to internal-only ENGAGEMENT_POSTURE + STD-SIGNATURE_POLICY) |

### 1-FOUNDATIONS/

| File | Status |
|---|---|
| `README.md` | ✓ |
| `PHILOSOPHY.md` | ○ |
| `BRAND.md` | ○ |
| `VOICE.md` | ○ |
| `ANTI-PATTERNS.md` | ○ |
| `ACCESSIBILITY.md` | ○ |
| `LOGO.md` | ○ (added v0.1.8) |
| `ANTI-GENERIC-PROTOCOL.md` | ✓ (added v0.1.8 — operator-side) |
| `PERSONAL-MARKERS.md` | ✓ (added v0.1.8 — operator-side) |

### 2-TOKENS/

| File | Status |
|---|---|
| `README.md` | ✓ |
| `colour.md` + `colour.yaml` | ○ |
| `typography.md` + `typography.yaml` | ○ |
| `spacing.md` + `spacing.yaml` | ○ |
| `motion.md` + `motion.yaml` | ○ |
| `iconography.md` + `iconography.yaml` | ○ (added v0.1.8) |
| `radii.md` + `radii.yaml` | ○ (added v0.1.8) |
| `elevation.md` + `elevation.yaml` | ○ (added v0.1.8) |
| `breakpoints.md` + `breakpoints.yaml` | ○ (added v0.1.8) |
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
| `IMAGERY.md` | ○ (added v0.1.8) |
| `ICONOGRAPHY.md` | ○ (added v0.1.8) |
| `AUDIO-VIDEO.md` | ○ (added v0.1.8 — extensibility scaffold) |

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
| `SKILL-ADAPTERS.md` | ✓ (authored v0.1.8 — operator-side plumbing) |
| `CLAUDE-MD-DERIVATION.md` | ○ |
| `NOTEBOOKLM-SNAPSHOT.md` | ○ |
| `PROSE-SUMMARY.md` | ○ |

### decisions/

| File | Status |
|---|---|
| `decisions/README.md` | ✓ |
| `decisions/0001-scaffold-establishment.md` | ✓ |
| `decisions/0002-handoff-model-probe.md` | ✓ |
| `decisions/0003-two-brand-scope.md` | ✓ |
| `decisions/0004-seed-contradictions-resolution.md` | ✓ |
| `decisions/0005-voice-pillar-count.md` | ✓ |
| `decisions/0006-audience-model-six.md` | ✓ |
| `decisions/0007-token-architecture-nested-source-split-exports.md` | ✓ |
| `decisions/0008-tier-sequencing.md` | ✓ |
| `decisions/0009-unverified-tripwires-disposition.md` | ✓ |
| `decisions/0010-persistence-and-numbering-reconciliation.md` | ✓ |
| `decisions/0011-connexusminds-aspirational-vs-deployed.md` | ✓ |
| `decisions/0012-anti-generic-protocol-and-infrastructure-additions.md` | ✓ (added v0.1.8) |

### assets/, examples/, prompts/, fixtures/, reviews/, scripts/, references/ (added v0.1.8)

| File | Status |
|---|---|
| `assets/README.md` + subfolder READMEs (fonts/, logos/, favicons/) | ✓ |
| `examples/README.md` | ✓ (specimens added per-context as authored) |
| `prompts/README.md` | ✓ (per-tier prompt files TBD) |
| `fixtures/README.md` | ✓ (initial fixtures TBD) |
| `reviews/README.md` + `reviews/MAI-REVIEW-PROTOCOL.md` | ✓ |
| `scripts/README.md` + `scripts/diff-tokens.sh` | ✓ (script logic activates when tokens authored) |
| `references/README.md` + 6 site files (craig-mod, stripe-press, frank-chimero, edward-tufte, the-pudding, stripe-docs) | ✓ (status: candidate, awaiting operator review) |

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
| To start a new authoring session | `SESSION-PLAYBOOK.md` (added v0.1.8) → `BRIEF.md` → `prompts/<tier>.md` |
| To author into the system | `BRIEF.md` → `docs/PROMPTING-PLAYBOOK.md` |
| To check tier dependencies before editing | `DEPENDENCIES.md` (added v0.1.8) |
| To avoid generic AI output | `1-FOUNDATIONS/ANTI-GENERIC-PROTOCOL.md` + `1-FOUNDATIONS/PERSONAL-MARKERS.md` (added v0.1.8) |
| To share an intro | `docs/intro-for-sharing.md` |
| Brand identity canonical | `SEED/STD-STYLE_GUIDE-excerpt.md` |
| Voice rules | `1-FOUNDATIONS/VOICE.md` (when populated); `SEED/VOICE-CONSTRAINTS.md` for hard constraints |
| Existing voice frameworks | `SEED/VOICE-FRAMEWORKS.md` |
| Existing visual frameworks | `SEED/VISUAL-FRAMEWORKS.md` |
| Design references / inspiration | `references/` (added v0.1.8) |
| Design tokens (canonical spec) | `2-TOKENS/*` |
| Design tokens (running CSS) | `SEED/tokens-reference.css` and `typography-reference.css` |
| How skills consume the design system | `5-INTERFACES/SKILL-ADAPTERS.md` (authored v0.1.8) |
| Mai's review packet shape | `reviews/MAI-REVIEW-PROTOCOL.md` (added v0.1.8) |
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
