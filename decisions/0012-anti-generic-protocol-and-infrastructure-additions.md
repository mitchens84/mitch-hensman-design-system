# ADR 0012 — Anti-generic protocol, personal markers, skill adapters, and infrastructure additions (v0.1.8)

**Date**: 2026-05-04
**Status**: Accepted
**Author**: Mitch Hensman (ratified); Claude Code (scribed)

## Context

After Claude Design session-3 handoff resolved (v0.1.7), operator review surfaced gaps that the existing scaffold did not address:

1. **Generic-AI-content risk had no active mitigation.** BRIEF §4 lists negative anti-patterns; nothing positive ensured outputs would feel like the operator's, not generic. Admiration references (DESIGN-SIGNALS §7) remained `CANDIDATE` and were never operationalised.
2. **Skill invocation was empty scaffold.** `5-INTERFACES/SKILL-ADAPTERS.md` was a stub. Operator's question — "how will skills invoke design guidelines?" — had no answer in the repo.
3. **Missing scaffolds in tiers** vs BRIEF §11: `IMAGERY.md` flagged as "(new)" but absent; iconography had no standalone file; logo / mark guidance had no Tier-1 file; several token files (radii, elevation, breakpoints, iconography) were missing.
4. **No assets infrastructure.** Fonts, logo masters, favicons had no committed home in the repo.
5. **No reusable session prompts, no test fixtures, no maintenance scripts** — operator was re-briefing Claude Design from scratch each session and had no regression suite for design-system fidelity.
6. **No protocol for Mai's downstream review.** Operator confirmed Mai is a downstream consumer (not co-author) but the review packet shape, channel, and cadence were undefined.
7. **No per-session entry point.** Operator had to re-derive next-session focus from `CHANGELOG.md` + ADR 0008 each time.
8. **No tier-dependency map.** Cross-tier contradiction is forbidden by BRIEF §11 but no map made dependencies legible.

## Options considered

1. **Defer all of these to future Claude Design sessions** — rejected. Most are operator-side plumbing or scope-extension scaffolds, not design judgement; authoring them in Claude Design would mis-route the work and burn session capacity.
2. **Author all in Claude Code in one batch (this ADR)** — accepted. Clearly separates plumbing-from-judgement; lets the next Claude Design session focus on Tier-2 colour authoring per ADR 0008, not on filling structural gaps.
3. **Author piecemeal as needed** — rejected. Coherence improves when the additions land together (cross-references resolve; CATALOGUE updates once; CHANGELOG entry single-version).

## Decision

Author the following in Claude Code, ratified by operator, committed at v0.1.8:

### Scaffolds (empty, matching v0.1.7 convention)
- `1-FOUNDATIONS/LOGO.md`
- `3-PATTERNS/IMAGERY.md`, `ICONOGRAPHY.md`, `AUDIO-VIDEO.md`
- `2-TOKENS/iconography.{md,yaml}`, `radii.{md,yaml}`, `elevation.{md,yaml}`, `breakpoints.{md,yaml}`

### Operator-side substantive authoring (not Claude Design judgement)
- `1-FOUNDATIONS/ANTI-GENERIC-PROTOCOL.md` — confirmed-anchors + cite-or-don't-ship + per-output weirdness check + failure-mode catalogue + opening-sentence test + per-session ritual
- `1-FOUNDATIONS/PERSONAL-MARKERS.md` — concrete unfakeable details catalogue
- `5-INTERFACES/SKILL-ADAPTERS.md` — per-skill loading spec, caching, version-pin, drift detection
- `SESSION-PLAYBOOK.md` (root) — per-session entry point with current state + sequencing
- `DEPENDENCIES.md` (root) — tier dependency map
- `reviews/MAI-REVIEW-PROTOCOL.md` — packet shape + cadence
- `assets/{,fonts,logos,favicons}/README.md` — asset library structure
- `examples/README.md`, `prompts/README.md`, `fixtures/README.md`, `scripts/README.md` — supporting infrastructure
- `scripts/diff-tokens.sh` — initial drift-detection script (scaffold logic)
- `references/<six>.md` — confirmed-anchor inspection records (Craig Mod, Stripe Press, Frank Chimero, Tufte, The Pudding, Stripe Docs)

### BRIEF updates
- §0 required-reading list expanded to require ANTI-GENERIC-PROTOCOL.md and PERSONAL-MARKERS.md at every session open
- §11 per-tier completeness tests amended where the new tier files are now scaffolded

### CATALOGUE updates
- §2 coverage table updated to reflect new files
- §3 entry-point map updated with SESSION-PLAYBOOK + DEPENDENCIES + assets/

## Rationale

**Plumbing belongs in Claude Code, not Claude Design.** Skill-loading specs, dependency maps, asset structures, review protocols, and maintenance scripts are mechanical operator-side work; routing them through Claude Design would waste session capacity meant for design judgement.

**Anti-generic protocol is the load-bearing addition.** Without it, output regression to generic AI default is the predicted failure mode. The protocol does not guarantee non-generic output — it sets a floor below which output is rejected. PERSONAL-MARKERS is the lever set the protocol invokes.

**Coherence beats sequencing.** Landing all additions in one version makes cross-references resolve cleanly (e.g. SKILL-ADAPTERS cites PERSONAL-MARKERS; SESSION-PLAYBOOK cites ANTI-GENERIC-PROTOCOL). Piecemeal would leave dangling references and require multiple CATALOGUE edits.

**Browser inspection of admiration references** (`references/`) operationalises DESIGN-SIGNALS §7. Operator can mark each `confirmed_anchor` / `candidate` / `reject` after review. References are inputs to ANTI-GENERIC-PROTOCOL §1.

## Consequences

**Commits us to**:
- ANTI-GENERIC-PROTOCOL §6 ritual at every Claude Design session open
- Skill files (content-architect, build-engineer, communicator) carrying `## Design system bindings` sections — to be added during INTEGRATION-MAP wave 3
- Maintenance of PERSONAL-MARKERS as biographical facts evolve (annual review)
- MAI-REVIEW-PROTOCOL packet discipline for ConnexusMinds tier files
- SESSION-PLAYBOOK §1 status-table updates after every session
- Author-time validation that each example specimen (when added) has a sibling `.review.md`

**Forecloses**:
- Default-AI design judgement passing review without citation per ANTI-GENERIC-PROTOCOL §2
- Skills duplicating design rules (must reference, not copy)

**Opens**:
- Round-trip validation via `fixtures/` once initial fixtures land
- Anchor-confirmation as a discrete operator decision (post-`references/` inspection)
- A reusable session-prompt template library that reduces re-briefing cost

## Related records

- Prior ADRs: 0001-scaffold-establishment, 0008-tier-sequencing, 0011-connexusminds-aspirational-vs-deployed
- Operator brief: BRIEF.md §0, §4, §11
- Synthesis input: SEED/DESIGN-SIGNALS.md §7 (admiration references)
- Downstream files created in this ADR: see "Decision" §
- INTEGRATION-MAP wave 3 — skill bindings to be added per SKILL-ADAPTERS spec
