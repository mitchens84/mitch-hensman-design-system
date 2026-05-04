---
fixture: sitruna-proposal-cover
created: 2026-05-04
prompt: |
  You are authoring a proposal cover page for Sitruna (existing Amazon-operations client).
  The engagement is a 6-week pilot of an AI-assisted listing-quality audit.
  Use the ConnexusMinds brand (corporate consultancy register), with the optional
  "ConnexusMinds by HensPham" composition lockup since this is a first-touch
  expansion of an existing relationship.

  Authoring contexts: 4-CONTEXTS/CLIENT-DELIVERABLES.md (when authored).
  Brand: ConnexusMinds (per BRIEF §1a).
  Format: single-page PDF cover (markdown source acceptable for review).

expects:
  - Uses ConnexusMinds palette (Deep Teal #0F766E primary; Network Navy #1E3A8A; Intelligence Sage #166534; Insight Amber #D97706; Wisdom Grey #475569; Connection Coral #DC2626 reserved for urgent CTA only)
  - Typography: Inter Variable (600 for "CONNEXUS", 400 for "Minds"); Source Sans Pro fallback
  - "ConnexusMinds by HensPham" composition appears in lockup position only (first-touch context per ADR 0011)
  - Proposal title is task-oriented and outcome-named (not feature-named) — e.g. "Listing-quality audit pilot" not "AI listing tool"
  - Date in YYMMDD format (260504 not 04 May 2026)
  - Six-week scope stated with explicit start/end dates
  - Pricing position visible but not the dominant element
  - Voice: investigative verbs ("audit", "examine", "report"), not marketing verbs
  - Single Intelligence Flow gradient permitted in hero/header band only (per ADR 0004); no other gradients
  - Includes one specific reference to Sitruna's actual operating context (not generic "your business") — e.g. catalogue size, marketplace, prior engagement number

forbids:
  - HensPham typography stack (this is the corporate brand, not personal)
  - Any of: "transform", "unlock", "empower", "journey", "seamless", "cutting-edge", "streamline" (BRIEF §4)
  - Em-dashes (semicolons or full stops only)
  - Generic stock photography or abstract corporate illustration
  - Coral and Amber adjacent (1.52:1 hue confusion per ADR 0004)
  - Insight Amber as body text on white (3.19:1, fails WCAG AA)
  - "Get started", "Learn more", "Discover" CTAs
  - Drop-shadow or "card with big rounded corners + drop shadow + hover lift" patterns
  - Marketing-newsletter-style hero pattern (banned per BRIEF §4)
---

# Fixture: Sitruna Proposal Cover

Tests the operator's ConnexusMinds register applied to a real first-touch commercial deliverable. Sitruna is the operator's most active commercial relationship via the partnership; a proposal cover for them is the canonical exercise of CLIENT-DELIVERABLES.md as primary ConnexusMinds surface (per ADR 0011).

## Why this fixture

The composition lockup ("ConnexusMinds by HensPham") has zero deployed exemplars (per ADR 0011); this fixture forces the design system to commit a first-deployment specimen. The result becomes the reconciliation target for CM tier-2 tokens.

## Reference output (placeholder)

To be authored as part of `examples/client-proposal-specimen.pdf` once tier-4 CLIENT-DELIVERABLES.md is populated. Until then, evaluate against `expects` / `forbids` directly.

## Pass criteria

All `expects` items satisfied; no `forbids` item present. Particularly load-bearing:

- The composition lockup appears (this fixture is partly *about* deploying the composition)
- The Sitruna-specific anchor (catalogue size or prior engagement) is present and accurate (PERSONAL-MARKERS §2 + ANTI-GENERIC-PROTOCOL §3 weirdness check)
- Coral-Amber adjacency rule respected
