# ADR 0003 — Two-brand scope (ConnexusMinds + HensPham)

**Date**: 2026-04-24
**Status**: Accepted
**Author**: Mitch Hensman (ratified); Claude Code (scribed)

## Context

The BRIEF, CATALOGUE, and early SEED material described a single-brand design system scoped to `mitch-hensman.com` (personal). The operator's intended scope includes a second brand surface: **ConnexusMinds** (corporate consultancy; operated as a principal partnership with Mai Pham; formerly known as "Connexus Intelligence").

Review of the broader operating system surfaced canonical ConnexusMinds brand specifications that had not been incorporated into this repo:

- `7A-PROJECTS-FRAMEWORK/2-BRANDING/connexusminds-color-guide.md` — full colour palette, gradient specifications, accessibility notes, digital + print applications
- `7A-PROJECTS-FRAMEWORK/2-BRANDING/LOGO/BUSINES_LOGO-DESIGN_GUIDE.md` — full brand design guide including the Connexus Intelligence → ConnexusMinds transition rationale, network-topology visual metaphor, typography specification (Inter Variable), implementation architecture
- `00-AREA/7A-PROJECTS/CONNEXUS/ENGAGEMENT_POSTURE.md` (internal; not copied) — corporate voice commitments and language-discipline table
- `00-AREA/7A-PROJECTS/CONNEXUS/STD-SIGNATURE_POLICY.md` (internal; not copied) — individual-vs-entity signature rules
- `00-AREA/7A-PROJECTS/CONNEXUS/CLAUDE.md` — standing business-entity governance layer for ConnexusMinds as operator's own consultancy (not a client)

The CATALOGUE Out-of-scope line had read: "Client-specific brand deliverables — Sitruna/Connexus engagements have their own brand systems (referenced, not included)". Reading this literally had led to an incorrect scope narrowing to personal-brand only. In fact, "Sitruna/Connexus engagements" conflates two different things: brand work done *for* Sitruna (Sitruna's own identity — correctly out of scope) and ConnexusMinds itself (operator's own consultancy brand — should be in scope).

The discovery also revealed the brand name itself had evolved from "Connexus Intelligence" to "ConnexusMinds", not reflected in the BRIEF or CATALOGUE.

## Options considered

1. **Scope stays personal-only; ConnexusMinds remains external** — simplest, but fails the operator's explicit intent that this design system cover ConnexusMinds. Rejected.

2. **Unify into one brand with per-register variations** — treat ConnexusMinds as a "commercial register" variation of a single underlying brand. Rejected because the brand guides describe ConnexusMinds as a visually distinct system (network-topology metaphor, different palette, permitted gradients) rather than a register variation — it has its own visual identity, not a modulation of HensPham's.

3. **Two complementary brand surfaces; one design system articulates both** — accepted. The design system spans two brands in complementary layers: HensPham as personal foundation, ConnexusMinds as corporate layer above. Shared voice principles flow to both; visual language diverges cleanly. Composition ("ConnexusMinds by HensPham") is documented as the trust-building combined usage.

4. **Two separate design-system repos** — rejected. Over-engineering; voice principles are genuinely shared; maintenance cost of two repos exceeds the cost of one repo with clear separation.

## Decision

The design system covers two complementary brand surfaces — **HensPham** (personal) and **ConnexusMinds** (corporate) — under a single repo with clear per-brand separation at the tokens layer and shared foundations at the voice layer.

Scope updates applied to this repo (commit `v0.1.5`):

- `BRIEF.md §1` updated operator profile to name ConnexusMinds correctly
- `BRIEF.md §1a` new Two-brand architecture section documenting HensPham and ConnexusMinds specifications, divergences, and authoring expectations per tier
- `BRIEF.md §2` audiences clarified — ConnexusMinds is operator's own brand, not a client
- `CATALOGUE.md §1 Out of scope` clarified — client-brand work is out; operator's own brands (both) are in
- `CATALOGUE.md §1a` new "Two-brand architecture in scope" subsection
- `SEED/CONNEXUSMINDS-colour-guide.md` added (copied from `7A-PROJECTS-FRAMEWORK/2-BRANDING/`)
- `SEED/CONNEXUSMINDS-brand-design-guide.md` added (copied from same source)
- `SEED/CONNEXUSMINDS-voice-synthesis.md` authored — public-safe synthesis of corporate voice with pointers to internal canonical docs

## Rationale

**The two brands are genuinely distinct** — not variations. ConnexusMinds uses gradients (banned in HensPham), employs a network-topology visual metaphor (absent in HensPham's type-first layout), and specifies Inter Variable (HensPham uses site-specific type). Pretending they are one brand with two moods would produce incoherent tier content.

**Voice principles genuinely converge**. Both brands reject marketing-speak, both use UK English, both privilege substance over ornament, both require AA contrast minimums, both ban performative CTAs. This means Tier-1 Foundations is shared; the divergence appears cleanly at Tier-2 Tokens and Tier-4 Contexts.

**One repo, not two, matches operator reality**. The operator is one person making outputs across both surfaces; the design system is the contract governing those outputs. Split repos would require the operator to check two sources before any decision.

**ConnexusMinds as operator's brand, not client**. The `00-AREA/7A-PROJECTS/CONNEXUS/` CLAUDE.md is explicit: ConnexusMinds is "a standing business entity, not a single project … Mitch's UK sole proprietorship, jointly operated with Mai as business partner". This confirms the inclusion.

## Consequences

**Commits us to**:
- Tier-2 Tokens must accommodate two brand token sets cleanly — either nested namespaces (`colour.hensph.*` vs `colour.connexusminds.*`) or split files (`colour.hensph.yaml` + `colour.connexusminds.yaml`). Decide at first tokens session.
- `1-FOUNDATIONS/ANTI-PATTERNS.md` must disambiguate per-brand permissions; gradient ban is HensPham-specific while gradients are sanctioned in ConnexusMinds hero sections.
- `4-CONTEXTS/WEBSITE.md` either covers both sites or splits into two files; decide during Contexts session via ADR.
- `4-CONTEXTS/CLIENT-DELIVERABLES.md` applies ConnexusMinds corporate register, referencing `SEED/CONNEXUSMINDS-voice-synthesis.md`.
- `GOAL-OVERRIDES/7A-CONNEXUS.md` becomes the home for any register-specific overrides beyond what Contexts covers.
- `5-INTERFACES/CSS-CANONICAL.md` references both canonical CSS sources; ConnexusMinds site source is not yet locally available (empty folder at `~/Local/WEB-PLATFORM/PAGES/CONNEXUSMINDS/`) — token extraction for ConnexusMinds comes from brand specs, not running CSS. Flag as gap until the Connexus site repo is attached.

**Forecloses**:
- Single-brand simplifying assumptions in any future tier file
- Accidental application of HensPham anti-patterns (e.g., gradient ban) to ConnexusMinds surfaces

**Opens**:
- Clean per-brand authoring in Tier-2 Tokens with explicit composition rules
- Future additional brand surfaces (if any emerge) follow the same two-brand pattern
- A cleaner handoff to Phase 3 integration because each consumer (skill, CLAUDE.md, template) can reference the correct brand's tokens

## Related records

- Governing plan: `99-PLANS/260422-0A-SYS-DESIGN_SYSTEM_UNIFICATION-PLAN.md` — Status Log v7 records this scope expansion
- Prior ADRs: `0001-scaffold-establishment.md`, `0002-handoff-model-probe.md`
- Source brand documents:
  - `7A-PROJECTS-FRAMEWORK/2-BRANDING/connexusminds-color-guide.md`
  - `7A-PROJECTS-FRAMEWORK/2-BRANDING/LOGO/BUSINES_LOGO-DESIGN_GUIDE.md`
- Internal voice canons referenced (not copied): `00-AREA/7A-PROJECTS/CONNEXUS/ENGAGEMENT_POSTURE.md`, `STD-SIGNATURE_POLICY.md`
- Gap: ConnexusMinds running CSS (`~/Local/WEB-PLATFORM/PAGES/CONNEXUSMINDS/` is empty; site source not yet attached)
