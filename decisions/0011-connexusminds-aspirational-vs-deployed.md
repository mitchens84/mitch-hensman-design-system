# ADR 0011 — ConnexusMinds: aspirational specification vs deployed reality (composition scope + tier-5 reconciliation)

**Date**: 2026-04-27
**Status**: Accepted
**Author**: Mitch Hensman (ratified); Claude Code (scribed)

## Context

Claude Design's session-3 handoff §3 and §4 asked Claude Code to verify two claims against the operator's broader system:

- §3 — whether the dual-brand composition "ConnexusMinds by HensPham" is actually used in the wild and what scope it occupies
- §4 — whether ConnexusMinds running CSS (or interim deck/proposal/Figma artefacts) exists locally that tier-2 derivation could draw on

A targeted survey across both the GDrive operating system (`00-AREA/7A-PROJECTS/CONNEXUS/`, `00-AREA/7A-PROJECTS/SITRUNA/`, `00-AREA/7A-PROJECTS-FRAMEWORK/2-BRANDING/`) and the local filesystem (`~/Local/WEB-PLATFORM/PAGES/CONNEXUSMINDS/`, `~/Local/WEB-PLATFORM/mitch-hensman-com/`, all `.pptx` / `.key` / `.fig` / template locations) returned a single coherent finding: **the ConnexusMinds visual system is aspirational specification, not deployed reality.**

Specific findings:

1. **Composition "ConnexusMinds by HensPham"** appears in exactly two artefacts — both prescriptive, never deployed:
   - `7A-PROJECTS-FRAMEWORK/2-BRANDING/LOGO/BUSINES_LOGO-DESIGN_GUIDE.md`: prescriptive ("for trust-building in early client relationships")
   - This repo's `SEED/CONNEXUSMINDS-brand-design-guide.md` and `decisions/0003-two-brand-scope.md` — both reference the composition as design-system intent
   - **Zero occurrences** in: CONNEXUS folder operational docs (signature policy, templates, service catalogue, pricing, contracts), SITRUNA folder, mitch-hensman-com source, email signature templates, any deck or Figma file

2. **Canonical signature template** at `00-AREA/7A-PROJECTS/CONNEXUS/STD-SIGNATURE_POLICY.md` §3 still specifies the entity name as **"Connexus Intelligence / UK sole proprietorship — Mitchell Hensman"** — not "ConnexusMinds" and not "by HensPham". The brand-name evolution (Connexus Intelligence → ConnexusMinds, captured in `SEED/CONNEXUSMINDS-brand-design-guide.md` strategic-brand-evolution intro) has not propagated fully even within the operating system.

3. **Connection Coral `#DC2626`** appears in `~/Local/WEB-PLATFORM/mitch-hensman-com/src/styles/global.css` (`.fit-grid .fit-icon--no { color: #dc2626; }`) and as `--color-blocked-text: #dc2626` in `AuditReport.astro` — both as commodity error-red, not as a branded "Connection Coral" token. The branded naming exists only inside `SEED/CONNEXUSMINDS-brand-design-guide.md`.

4. **Gradient names** ("Intelligence Flow", "Growth Trajectory", "Insight Emergence", or the SEED-internal "Growth Path") appear nowhere outside the two SEED files plus the resolution at ADR 0004. No scripts, alt text, asset filenames, or running CSS exercise them.

5. **`~/Local/WEB-PLATFORM/PAGES/CONNEXUSMINDS/` is empty** (only `.` and `..`, last touched June 2025). No Astro / Next / static source for ConnexusMinds exists anywhere on disk. `connexusminds.com` is registered (Unstoppable Domains, expires Jun 2026); `mitch-hensman-com/netlify.toml` plans a 301 redirect from `connexusminds.com → mitch-hensman.com`. `~/Local/WEB-PLATFORM/mitch-hensman-com/docs/REFERENCE/INFRASTRUCTURE/DOMAIN_HOSTING_SPECS.md` confirms: *"Secondary domain ... 301 redirect to primary (decision deferred to P4)"*.

6. **No deck / proposal / Figma sources** encode brand tokens. `CONNEXUS/TEMPLATES/PROPOSAL-TEMPLATE.md` and `SOW-TEMPLATE.md` are referenced in templates README but the files themselves are not committed yet — only `README.md` exists. All `.pptx` files on disk are pre-Connexus historical artefacts (Arcadis / Sitruna meeting prep).

This is a substantive finding for tier-2 onward authoring. It does not invalidate the design system; it scopes it correctly.

## Options considered

### A. Composition scope (§3)

1. **Codify the composition as actively-deployed across multiple surfaces** (CD's session-2 inference if it had assumed deployment) — rejected; nowhere in the wild.
2. **Drop the composition entirely from the design system** — rejected; the operator's intent is documented in two SEED locations; dropping would discard the intent without operator input.
3. **Codify as scoped intent for early-relationship commercial contexts; flag as not-yet-deployed** (accepted) — preserves the documented intent; matches the brand-design-guide §5.1 wording verbatim ("for trust-building in early client relationships"); honest about deployment status; gives tier-4 CLIENT-DELIVERABLES.md a clear sub-mode rule without overclaiming usage history.

### B. ConnexusMinds running CSS gap (§4)

1. **Block tier-2 ConnexusMinds derivation on site source** — rejected at ADR 0008; same here. Site source may never land in the form CD imagined; redirect-to-primary is the likely deployment.
2. **Reframe the tier-5 reconciliation step** (accepted) — what tier-5 reconciles with may be: (a) a future ConnexusMinds standalone site if one is ever built; OR (b) the redirect target's CSS (mitch-hensman.com) if connexusminds.com simply redirects there; OR (c) an interim artefact (proposal template, deck, signature) when one is authored. The reconciliation marker at tier-2 is unchanged; the reconciliation *target* is open.
3. **Treat ConnexusMinds as a documents-and-comms surface, not a website surface** — partial accept; codify as a sub-finding. ConnexusMinds visual identity primarily applies to proposal / SOW / pitch-deck / signature surfaces, not to a website-component layer. Tier-4 contexts reflect this scope.

## Decision

### Composition scope (§3 resolution)

The "ConnexusMinds by HensPham" composition is codified as **scoped intent, not deployed practice**:

- **Scope**: early-relationship commercial first-touch contexts only — proposal headers, SOW headers, early-pitch decks
- **Not applied to**: routine email signatures, business cards, website footers, social bios, internal artefacts, or any post-first-touch correspondence (default header treatment in steady-state work is ConnexusMinds-only or individual-voice per `SEED/CONNEXUSMINDS-voice-synthesis.md §4`)
- **Deployment status**: not yet exercised in any working artefact. The composition is documented intent; the design system describes it correctly but does not claim a usage track-record.
- **Pre-deployment readiness**: tier-4 CLIENT-DELIVERABLES.md authors the composition rule with an explicit "intent; not yet deployed" status note. When the first proposal or SOW that uses the composition is authored, the usage backfills the intent and the status note retires.

### Tier-5 reconciliation reframing (§4 resolution)

The tier-5 reconciliation marker for ConnexusMinds tier-2 tokens (per ADR 0008) reframes from "reconcile with ConnexusMinds running CSS when site source attaches" to:

> *Reconcile with the first-deployed ConnexusMinds artefact that exercises tokens. Likely sequence: (1) proposal / SOW template (markdown + token references); (2) signature template (HTML email signature carrying tokens); (3) any future standalone site, OR the redirect target's exercise of ConnexusMinds-branded surfaces if `connexusminds.com → mitch-hensman.com` lands.*

The reconciliation marker is unchanged in form; the *target* is now open across multiple possible artefacts rather than gated on a website source that may never exist.

ConnexusMinds is codified as a **documents-and-comms surface primarily** in tier-4 contexts. Tier-3 patterns (largely shared) and tier-2 tokens (per ADR 0007) remain unchanged.

### Surfaced operator-side finding (separate from this design-system decision)

The brand-name evolution (Connexus Intelligence → ConnexusMinds) has not propagated to the canonical signature template at `00-AREA/7A-PROJECTS/CONNEXUS/STD-SIGNATURE_POLICY.md`. This is operator-side work, not a design-system decision; flagged here so the operator can decide whether to propagate the rename across operating-system canonical docs. The design system can describe ConnexusMinds correctly regardless of that propagation.

## Rationale

**Honest scoping beats inflated claims.** The temptation when authoring a brand specification is to describe the brand as deployed. The survey makes clear that ConnexusMinds is a forward-design — specification preceding deployment. Codifying the gap explicitly preserves design-system honesty (the operating system's CP3 verify-before-asserting principle) and prevents the design system from carrying a deployment-history claim that doesn't exist.

**The composition rule is right; the deployment is the next step.** The brand-design-guide §5.1 wording ("Combined Usage: 'ConnexusMinds by HensPham' for trust-building in early client relationships") is a sound rule. The design system's job is to describe the rule clearly so that when the first proposal-with-composition is authored, the rule is ready to apply. That is exactly what tier-4 CLIENT-DELIVERABLES.md does.

**The redirect-target reality matters.** If `connexusminds.com` simply 301-redirects to `mitch-hensman.com`, then ConnexusMinds visual identity may primarily live in documents-and-comms (proposals, SOWs, signatures, pitch decks) rather than in a website-component layer. The tier-4 context split should reflect this — CLIENT-DELIVERABLES is the primary ConnexusMinds surface; WEBSITE.md remains primarily HensPham (with possible per-section ConnexusMinds treatment if a future Connexus page lands on the redirected site).

**Tier-5 reconciliation generalises.** The original reconciliation framing assumed running CSS as the canonical reference. The survey shows the canonical reference may be a different artefact type entirely (proposal template, signature, deck). Generalising the marker preserves the reconciliation intent without precommitting to one artefact.

## Consequences

**Commits us to**:
- Tier-4 `CLIENT-DELIVERABLES.md` codifying the composition rule with an explicit "scoped intent; not yet deployed" status note
- Tier-4 `CLIENT-DELIVERABLES.md` authored as the *primary* ConnexusMinds surface; `WEBSITE.md` remains primarily HensPham
- Tier-2 ConnexusMinds derivation from spec (per ADR 0008) with a generalised reconciliation marker (any first-deployed artefact, not specifically running CSS)
- Tier-5 INTERFACES authoring including a "ConnexusMinds reconciliation" task whose target is open across artefact types
- A standing operator-side note: brand-name propagation gap at `STD-SIGNATURE_POLICY.md` (Connexus Intelligence → ConnexusMinds) — not a design-system decision; flagged for operator action

**Forecloses**:
- Claims that the composition is actively deployed
- Tier-2 ConnexusMinds derivation gated on website source
- WEBSITE.md as primary ConnexusMinds surface
- Tier-5 reconciliation target gated on running CSS specifically

**Opens**:
- A clean honest scope for ConnexusMinds: documents-and-comms primary; website secondary; composition intent codified for first deployment
- Reconciliation pattern that handles whichever artefact exercises tokens first (proposal / signature / deck / future site)
- Operator-side decision space for whether to propagate brand-name rename across operating-system docs (separate from design system)

## Related records

- Governing plan: `99-PLANS/260422-0A-SYS-DESIGN_SYSTEM_UNIFICATION-PLAN.md`
- Prior ADRs: `0003-two-brand-scope.md`, `0004-seed-contradictions-resolution.md`, `0007-token-architecture-nested-source-split-exports.md`, `0008-tier-sequencing.md`
- Survey artefact: `sessions/260427-handoff-response-to-claude-design.md` — survey findings summarised under §3 and §4
- Source documents:
  - `7A-PROJECTS-FRAMEWORK/2-BRANDING/LOGO/BUSINES_LOGO-DESIGN_GUIDE.md` — composition prescription
  - `00-AREA/7A-PROJECTS/CONNEXUS/STD-SIGNATURE_POLICY.md` — brand-name propagation gap (operator-side)
  - `~/Local/WEB-PLATFORM/PAGES/CONNEXUSMINDS/` — empty as of 260427
  - `~/Local/WEB-PLATFORM/mitch-hensman-com/netlify.toml` — redirect intent
  - `~/Local/WEB-PLATFORM/mitch-hensman-com/docs/REFERENCE/INFRASTRUCTURE/DOMAIN_HOSTING_SPECS.md` — secondary-domain disposition
- Downstream files affected:
  - `4-CONTEXTS/CLIENT-DELIVERABLES.md` — composition rule + status note + primary-ConnexusMinds-surface positioning
  - `4-CONTEXTS/WEBSITE.md` — primarily HensPham; ConnexusMinds treatment if redirect target exercises Connexus pages
  - `2-TOKENS/colour.md` (ConnexusMinds half) — generalised reconciliation marker
  - `5-INTERFACES/CSS-CANONICAL.md` — reconciliation task generalised
