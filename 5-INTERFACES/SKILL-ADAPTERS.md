---
title: Skill Adapters
status: AUTHORED — operator-side plumbing (not Claude Design judgement)
last_reviewed: 2026-05-04
---

# Skill Adapters

How Claude Code skills consume this design system. This file is operator-side plumbing — it specifies *mechanism*, not design judgement. It is authored directly (not in Claude Design) and updates whenever a skill changes its consumption pattern.

## 1. Consumption rule

Skills **reference** this repo; they **do not duplicate** its content. A skill that restates a design rule risks drift the moment the design system updates. Where a skill needs to enforce a rule (e.g. "no em-dashes"), it cites the canonical source by file + section, not by inline copy.

## 2. Per-skill adapter spec

Each skill below is mapped to: which files it must load, at what point in its workflow, and what it does on drift.

### 2.1 `content-architect`

**Loads at session start** (not per request — design rules are stable within a session):

| File | Why |
|---|---|
| `1-FOUNDATIONS/VOICE.md` | Voice pillars + tone-modulation matrix |
| `1-FOUNDATIONS/ANTI-PATTERNS.md` | Forbidden defaults |
| `1-FOUNDATIONS/ANTI-GENERIC-PROTOCOL.md` | Cite-or-don't-ship + per-output weirdness check |
| `1-FOUNDATIONS/PERSONAL-MARKERS.md` | Unfakeable detail catalogue |
| `4-CONTEXTS/<surface>.md` | Surface-specific rules (selected by output type) |
| `3-PATTERNS/DOCUMENT-STRUCTURE.md` | Frontmatter schema + section conventions |
| `3-PATTERNS/TYPOGRAPHY-HIERARCHY.md` | Heading scale application |

**Adapter format**: `content-architect/SKILL.md` carries a `## Design system bindings` section with relative paths to this repo (operator-local clone at `~/Local/WEB-PLATFORM/mitch-hensman-design-system/`). No content copied.

**On drift**: if a skill output contradicts a design rule, the skill flags it via `IMPROVEMENT PROPOSAL` annotation per `SYS-GUARDRAILS.md`. Operator decides resolution: update skill, update design system, or scope-exception ADR.

### 2.2 `build-engineer`

**Loads at session start**:

| File | Why |
|---|---|
| `4-CONTEXTS/WEBSITE.md` | Web-surface application rules |
| `3-PATTERNS/INTERACTION.md` | Link / button / form patterns |
| `3-PATTERNS/LAYOUT.md` | Grid, scannability |
| `2-TOKENS/colour.yaml`, `typography.yaml`, `spacing.yaml`, `motion.yaml`, `radii.yaml`, `breakpoints.yaml` | Token values |
| `5-INTERFACES/CSS-CANONICAL.md` | Sync direction; what's source-of-truth |
| `1-FOUNDATIONS/ACCESSIBILITY.md` | WCAG AA+ floor |

**On drift**: build-engineer never silently rewrites canonical CSS in `mitch-hensman-com`. If a token mismatch is detected (via `scripts/diff-tokens.sh`), it surfaces and asks.

### 2.3 `communicator`

**Loads at session start**:

| File | Why |
|---|---|
| `1-FOUNDATIONS/VOICE.md` | Voice pillars + register modulation |
| `1-FOUNDATIONS/ANTI-PATTERNS.md` | Bans (em-dash, marketing-speak, etc.) |
| `4-CONTEXTS/EMAIL.md` | Email register, signatures, salutations |
| `4-CONTEXTS/SOCIAL.md` | Per-channel: X, LinkedIn, Telegram, WhatsApp |
| `1-FOUNDATIONS/PERSONAL-MARKERS.md` | Authentic-detail anchors |

**Special case — Mai-voice messages**: communicator skill notes that Mai-voice has a documented em-dash waiver (per `feedback_emdash_ban_universal.md` — waiver doesn't apply when Mitch is the reviewing operator). Skill must check operator before applying waiver.

### 2.4 Other skills (lightweight reference)

These skills consume the design system selectively, not at session start:

- `frontend-design` — loads `2-TOKENS/*` + `3-PATTERNS/LAYOUT.md` + `4-CONTEXTS/WEBSITE.md` when generating UI
- `image-generator` — loads `3-PATTERNS/IMAGERY.md` + `1-FOUNDATIONS/BRAND.md` (per-brand visual metaphor) when prompting
- `content-architect` (for slide decks specifically) — additionally loads `4-CONTEXTS/PRESENTATIONS.md`
- `legal-reviewer`, `research-analyst`, `strategic-advisor`, `system-orchestrator`, `project-manager`, `email-manager`, `personal-knowledge-manager` — bind only to `1-FOUNDATIONS/VOICE.md` (output voice consistency)
- `estimator` — binds to `4-CONTEXTS/CLIENT-DELIVERABLES.md` (proposal/quote register)

## 3. Caching + freshness

- **Within session**: design rules cached at first read; not re-fetched per output
- **Across sessions**: skill re-reads on every Claude Code session start (cheap; files are small)
- **Repo updates**: when this repo's `CHANGELOG.md` advances a minor version (v0.2.x → v0.3.x), operator triggers a manual sweep — re-validate every skill's `## Design system bindings` section against new tier files

## 4. Version pin (for reproducibility)

Each skill records the design-system commit SHA it was last validated against, in its `## Design system bindings` section frontmatter:

```yaml
design_system:
  repo: mitchens84/mitch-hensman-design-system
  validated_against: <git-sha>
  validated_on: YYMMDD
```

If `git rev-parse HEAD` in the design-system repo differs from `validated_against`, the skill SHOULD warn at startup (does not block).

## 5. Drift-detection script

`scripts/skill-binding-audit.sh` — to be authored — walks every `~/Local/00-ENABLEMENT/SKILLS/*/SKILL.md`, extracts `## Design system bindings` blocks, checks: (a) every cited file path resolves; (b) `validated_against` SHA is within last 30 commits; (c) no skill carries inline copies of design rules (heuristic: searches for VOICE.md substrings inside SKILL.md bodies).

## 6. Anti-pattern: skill duplication

A skill that contains its own version of "use UK English; no em-dashes; no emojis in prose" has duplicated this design system. Detect and remove. The single canonical source is `1-FOUNDATIONS/VOICE.md`; the skill cites it.

Exception: skills that pre-date this design system may temporarily carry duplicated rules; flag during integration sweep (per `INTEGRATION-MAP.md` wave 3) and remove on next skill edit.
