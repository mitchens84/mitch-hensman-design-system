---
title: Handoff response to Claude Design — sessions 1–3 review resolutions
from: Mitch Hensman (operator) + Claude Code (scribed; Mitch's local session)
to: Claude Design (web-based authoring agent)
date: 260427
purpose: Resolutions to the nine numbered findings + structural questions raised in CD's session-3 handoff, with ADR references for tier-2 unblock
status: draft pending integration commit; final on push of v0.1.7
---

# Handoff response — sessions 1–3 review resolutions

Thanks for the structured handoff. I've reviewed all nine findings against operator context and authored the resolutions as repo ADRs. Tier-2 Tokens is unblocked; sequencing endorsed; SEED contradictions adjudicated. Two items (§3 and §4) have a partial resolution pending an operator-side artefact survey — addenda will follow.

## Headline resolutions

| Finding | Resolution | ADR |
|---|---|---|
| §1 SEED contradictions | Six-colour palette (5 brand + 1 semantic-alert Coral); "Growth Trajectory" canonical; WCAG headline annotated as overstated; SEED contradictions adjudicate per ADR | `decisions/0004-seed-contradictions-resolution.md` |
| §2 Voice pillar count | **Three pillars retained.** Pillar 3 expanded with named sub-modes 3a (calibrated confidence) + 3b (refuse to mislead). CD ADR 0006 Proposed superseded. | `decisions/0005-voice-pillar-count.md` |
| §3 Composition rule | **Aspirational intent, not deployed.** Scoped to first-touch commercial only; status note "not yet deployed" carried in tier-4 | `decisions/0011-connexusminds-aspirational-vs-deployed.md` |
| §4 ConnexusMinds running CSS | **No site source; redirect-to-primary planned.** Tier-5 reconciliation marker generalised to "first-deployed artefact"; ConnexusMinds primary surface = documents-and-comms, not website | `decisions/0011-connexusminds-aspirational-vs-deployed.md` |
| §5 Audience model | **Six retained.** Cold-prospect = first-touch register modulation of audience 3, codified in tier-4 CLIENT-DELIVERABLES.md | `decisions/0006-audience-model-six.md` |
| §6 UI kit gating / sequencing | Endorsed in your proposed order (colour both brands → type/space/motion both brands → patterns → contexts → kits) | `decisions/0008-tier-sequencing.md` |
| §7 Open debts | Bundled into `docs/TIER-2-INHERITANCE-LOG.md` for tier-2 inheritance | (no ADR; tier-2 resolves per debt) |
| §8 Token architecture | **Nested source + per-brand exports.** Tier-2 sources nested in single files (`hensph.*`, `connexusminds.*`, `shared.*`); tier-5 generates per-brand exports | `decisions/0007-token-architecture-nested-source-split-exports.md` |
| §9 UNVERIFIED tripwires | Strip OPAL 94.3% and 90% rejection figures; retain principles; SEED UNVERIFIED annotations remain as audit trail | `decisions/0009-unverified-tripwires-disposition.md` |
| Structural | Push-to-repo is operator-driven post-session; ADR renumbering ratified per below | `decisions/0010-persistence-and-numbering-reconciliation.md` |

All ADRs land in repo at v0.1.7 (this integration commit).

## Per-finding detail

### §1 — ConnexusMinds palette closure, gradient name, WCAG headline, authority order

**1a. Palette closure: six.** Connection Coral `#DC2626` joins as the sixth colour, scoped to *semantic-alert role only* — error / priority / urgent CTA. The five-colour set remains the brand-identity palette (logo, hero, primary surfaces, body); coral is supporting-palette, not brand-identity. This matches the brand-design-guide's classification (§2.2 "Cognitive Contrast System") rather than promoting coral to a brand-identity peer.

Adjacency rule codified: Coral and Insight Amber must not appear as semantically distinct adjacent cues (your 1.52:1 measurement is right; treat as a hard ban).

`BRAND.md §3.1.2` and `ANTI-PATTERNS.md [ConnexusMinds] Palette drift` need correction at session-3 close (or session 4 open) to reflect the six-colour closure. The five-colour propagation in your current session-1 BRAND.md should update on integration.

**1b. Gradient name: Growth Trajectory.** The brand-design-guide names parallel-construction across three gradients (Intelligence Flow / Growth Trajectory / Insight Emergence). "Growth Path" breaks that pattern. ADR 0004 makes "Growth Trajectory" canonical. SEED colour-guide receives a CLARIFICATION annotation; body unchanged.

**1c. WCAG-AA SEED headline: annotated, not edited.** Following the v0.1.4 OPAL UNVERIFIED-precedent — SEED material is preserved verbatim with safety annotations as the only in-place modification. The CLARIFICATION annotation now sits above the §Accessibility section noting the headline is overstated; the operative constraint ("Never place Insight Amber text on white backgrounds") remains canonical. Tier-2 colour authoring derives accurate per-pair contrast tables; treat the SEED headline as aspirational.

**1d. Meta-rule on SEED authority.** Your recommendation accepted: treat SEED corpus as one canonical body; contradictions become ADRs. Neither colour-guide nor brand-design-guide has automatic priority; per-case adjudication.

### §2 — Voice pillars: three retained, pillar 3 expanded

I read your stress-test signal carefully. The collapse you observed is real — pillar 3 carries two distinct failure modes (epistemic-calibration "you overclaimed" and refuse-to-mislead "you should have declined"). But the right response is to **strengthen pillar 3's articulation**, not split it. Splitting would violate parsimony (CP8) and inflate the framework's memorisation tax without operational gain.

Final shape (per ADR 0005):

- **Pillar 1 — Claim before context** (structural; order)
- **Pillar 2 — Parsimony over performance** (density; restraint)
- **Pillar 3 — Honesty over reassurance** (calibration; content)
  - **Sub-mode 3a — Calibrated confidence**: never claim more certainty than substance carries; visible uncertainty markers
  - **Sub-mode 3b — Refuse to mislead**: declining is honest; partial deferral is honest; manufactured reassurance is not

**On the structural-honesty overlap with pillar 1**: this is the real finding from your stress-test. "Buried lede" is pillar-1 territory (order); "overclaimed" or "should have declined" is pillar-3 territory (content). VOICE.md should mark this boundary explicitly.

**Authoring guidance for VOICE.md update**: pillar 3's section grows to include both sub-modes with worked-example pairs (one structural-honesty failure showing it lives in pillar 1's enforcement; one calibration failure showing 3a; one refuse-to-mislead failure showing 3b). Downstream context files cite by sub-mode letter (e.g., "VOICE.md §3b") when the relevant manifestation governs a choice.

CD ADR 0006 (Proposed) is **superseded by repo ADR 0005**. Don't author it into the repo as 0006-voice-pillar-split.

### §3 — Composition rule for "ConnexusMinds by HensPham"

**Survey returned**: the composition is **aspirational intent, not deployed practice**. ADR 0011 codifies this.

Survey findings:
- The composition appears in exactly two artefacts — both prescriptive (`7A-PROJECTS-FRAMEWORK/2-BRANDING/LOGO/BUSINES_LOGO-DESIGN_GUIDE.md` "Combined Usage" line, and this repo's SEED + decisions/0003)
- **Zero deployed uses**: not in any signature template, proposal, SOW, deck, business card, social bio, website footer, or internal artefact
- The canonical signature template (`00-AREA/7A-PROJECTS/CONNEXUS/STD-SIGNATURE_POLICY.md` §3) still uses **"Connexus Intelligence / UK sole proprietorship — Mitchell Hensman"** — the brand-name evolution to ConnexusMinds has not propagated even within the operating system

**Resolved scope** (per ADR 0011):
- **Scope**: early-relationship commercial first-touch contexts only — proposal headers, SOW headers, early-pitch decks
- **Not applied to**: routine email signatures, business cards, website footers, social bios, internal artefacts, post-first-touch correspondence
- **Deployment status**: not yet exercised. Tier-4 CLIENT-DELIVERABLES.md authors the composition rule with an explicit "scoped intent; not yet deployed" status note; the note retires when first deployment lands.

**Authoring guidance**: tier-4 `CLIENT-DELIVERABLES.md` carries the composition rule plainly without claiming usage track-record. The honest framing is "this is the first-touch composition; the first proposal that uses it will exercise it for the first time".

**Operator-side note (separate from this design system)**: the ConnexusMinds rename has not propagated to `STD-SIGNATURE_POLICY.md`. ADR 0011 flags this as operator-side work; the design system can describe ConnexusMinds correctly regardless.

### §4 — ConnexusMinds running CSS / interim artefacts

**Survey returned**: no ConnexusMinds site source anywhere on disk. ADR 0011 generalises the tier-5 reconciliation marker.

Survey findings:
- `~/Local/WEB-PLATFORM/PAGES/CONNEXUSMINDS/` is empty (last touched June 2025)
- No Astro / Next / static source for ConnexusMinds exists anywhere on disk
- `connexusminds.com` is registered (Unstoppable Domains, expires Jun 2026); `mitch-hensman-com/netlify.toml` plans a 301 redirect to `mitch-hensman.com`; `DOMAIN_HOSTING_SPECS.md` confirms "decision deferred to P4"
- No deck / proposal / Figma sources encode brand tokens. `CONNEXUS/TEMPLATES/PROPOSAL-TEMPLATE.md` and `SOW-TEMPLATE.md` are README-referenced but not yet committed
- `#dc2626` exists in mitch-hensman.com CSS as commodity error-red, not as a branded "Connection Coral" token

**Resolved tier-5 reconciliation reframing** (per ADR 0011):

The reconciliation marker for ConnexusMinds tier-2 tokens reframes from "reconcile with running CSS when site source attaches" to:

> *Reconcile with the first-deployed ConnexusMinds artefact that exercises tokens. Likely sequence: (1) proposal / SOW template (markdown + token references); (2) signature template (HTML email signature carrying tokens); (3) any future standalone site, OR the redirect target's exercise of ConnexusMinds-branded surfaces if `connexusminds.com → mitch-hensman.com` lands.*

**Surface scope shift**: ConnexusMinds is codified as a **documents-and-comms surface primarily** in tier-4 contexts — `CLIENT-DELIVERABLES.md` is the primary ConnexusMinds surface; `WEBSITE.md` remains primarily HensPham (with possible per-section ConnexusMinds treatment if a future Connexus page lands on the redirected site).

**Tier-2 derivation method unchanged** — derive from spec; carry the (now generalised) reconciliation marker.

### §5 — Audience model: six retained

ADR 0006 codifies six-audience model retained. Cold-prospect ConnexusMinds counterparts are a *first-touch register modulation* of audience 3, not a distinct seventh audience.

The reasoning: audience-as-relationship-type is the cleaner abstraction; cold→warm is a temporal trajectory of one relationship, not two distinct types. Splitting by relationship-temperature would set a precedent forcing similar splits across audiences 2 and 4. The communicator skill already handles modulation by recipient state.

**Authoring guidance for tier-4 CLIENT-DELIVERABLES.md** (when it lands): audience-3 register section names two sub-modes:
- **Cold-first-touch** — credentialing posture; assumed shared context low; BLUF density high; CTA restraint high
- **Warm-active-discussion** — assumed shared context high; direct execution; BLUF still applies; CTA naturally embedded

If a future MARKETING.md is authored, it defaults to cold-first-touch sub-mode and cites CLIENT-DELIVERABLES.md as the register source.

### §6 — UI kit gating: sequence endorsed

ADR 0008 endorses your proposed sequence. Tier-2 colour (both brands) → tier-2 type/space/motion (both brands) → tier-3 patterns (largely shared) → tier-4 contexts → UI kits when source attaches.

ConnexusMinds tier-2 derivation from spec carries reconciliation markers (per §4 above). Tier-5 INTERFACES authoring includes the reconciliation task as standing item.

### §7 — Open debts: bundled

`docs/TIER-2-INHERITANCE-LOG.md` is new this commit. It bundles:

- **D1**. HensPham `--color-text-faint` AA failure (`#999999` = 2.85:1) — recommended split into text-faint (darken) + decoration-faint (preserve)
- **D2**. ConnexusMinds Amber text-bearing — recommended amber-on-white universal ban; sanctioned text colour for amber-fill components
- **D3**. ConnexusMinds Insight Emergence gradient text-overlay — recommended forbid direct text overlay; require solid-fill text container if needed
- **D4**. HensPham warm-greys curation — per-shade audit against named role; strip candidates without a use case
- **D5**. Tier-3 Thai-rendering pattern (Playwright not weasyprint) — logged here for bundle-resolution at tier-3

Each debt has scope, constraint, options, and a tier-2 (or tier-3) recommendation. Tier-2 sessions evaluate the options and resolve in the tier file with a back-reference. Status table at the bottom of the log tracks resolution.

### §8 — Token architecture: nested source, per-brand exports

ADR 0007 is the cleanest answer to your weak-preference + my consumer-side concern.

**Tier-2 sources** (single file per token kind):
```
2-TOKENS/colour.yaml
  hensph: {...}
  connexusminds: {...}
  shared: {...}
2-TOKENS/typography.yaml (same nesting)
2-TOKENS/spacing.yaml (likely shared.* + per-brand overrides)
2-TOKENS/motion.yaml (likely shared.* — default-off is brand-agnostic)
2-TOKENS/tokens.yaml (unified export — full nested)
```

**Tier-5 exports** (per-brand):
```
5-INTERFACES/css/hensph.css
5-INTERFACES/css/connexusminds.css
5-INTERFACES/yaml/hensph.yaml
5-INTERFACES/yaml/connexusminds.yaml
```

Each tier-5 export imports its namespace plus `shared.*`. Selective per-brand consumption happens at the export layer; source-of-truth is dense and consolidated.

This matches the ANTI-PATTERNS precedent (single file with brand-tagged sections) — cross-tier consistency. Drift detection is review-time-visible because parallel tokens sit lines apart in the same file.

Namespace discipline: any new token kind declares whether values are `shared.*` or per-brand from the start; never implicit.

### §9 — UNVERIFIED tripwires: strip figures; retain principles

ADR 0009. The strip pattern:

- **OPAL 94.3% accuracy** — stripped from any tier file. Tier-3 IMAGERY.md cites OPAL as a named framework for the "AI-augmented product imagery must preserve product appearance" principle, without quoting any accuracy figure.
- **90% trademark rejection rate** — stripped. Tier-3 IMAGERY.md and ANTI-PATTERNS.md declare the "abstract trademarked elements via descriptive composition rather than direct generation" principle without quoting any rejection rate.
- **WCAG-AA blanket headline** — covered at ADR 0004; SEED CLARIFICATION annotation; tier-2 derives accurate per-pair tables.

The principles are operationally identical with or without the percentages; the figures were rhetorical, not load-bearing. SEED UNVERIFIED annotations remain as audit trail; future re-tracing welcome.

Standing rule: any future SEED-aggregated quantitative claim that fails to trace gets the same treatment — strip figure, retain principle.

## Structural questions

### Persistence boundary

**Confirmed**: push-to-repo is operator-driven, post-session, manually. CD authors into its workspace; operator integrates per `docs/FIRST-SESSION-CHECKLIST.md` post-session steps (export → diff → ADR-renumber → cross-model review → commit → push).

CD's CHANGELOG entries are *drafts* until integration commit. Continue authoring as you have been; the operator reconciles versions at integration.

### CHANGELOG version reconciliation

**Repo versioning is repo-side authoritative**. Repo at session-3 open = v0.1.6. This integration commit bumps to **v0.1.7** (covers tier-1 authoring batch + the ten ADRs introduced this session). CD's workspace v0.2.0 / v0.2.1 entries fold under repo v0.1.7 with attribution preserved.

The repo will not jump to v0.2.x until a tier-completion warrants a feature-version bump (likely after tier-2 Tokens lands; possibly after tier-3 Patterns).

CD continues with workspace versions of its preference; operator continues sequential repo bumps.

### ADR numbering

**Your renumbering 0003→0004 (voice-dual-register) and 0004→0005 (session-1-scope) is ratified.** The supplement-relationship is correct: `0004-voice-dual-register.md` supplements (does not supersede) `0003-two-brand-scope.md` — voice and scope are orthogonal.

**At repo integration**, your web-side ADRs 0004–0008 renumber as follows to avoid collision with this commit's new 0004–0010:

| CD web-side ADR | Repo number | Note |
|---|---|---|
| 0004 voice-dual-register | `0011-voice-dual-register.md` | Supplements `0003-two-brand-scope.md` |
| 0005 session-1-scope | `0012-session-1-scope.md` | |
| 0006 voice-pillar-split (Proposed) | — | **Superseded by repo `0005-voice-pillar-count.md`. Do not author into repo.** |
| 0007 anti-patterns per-brand | `0013-anti-patterns-per-brand.md` | |
| 0008 memory-anchor emoji | `0014-memory-anchor-emoji.md` | |

Future sessions: continue your numbering from the highest known repo number at session open. Operator renumbers at integration if collisions appear.

## Tier-2 readiness checklist

What's unblocked before session 4 opens:

- [x] Palette closure (six; Coral semantic-alert)
- [x] Gradient names (Intelligence Flow / Growth Trajectory / Insight Emergence)
- [x] WCAG headline disposition (annotated; tier-2 derives per-pair tables)
- [x] SEED authority order (per-case ADR)
- [x] Voice pillar count (three; pillar 3 sub-modes 3a/3b)
- [x] Audience model (six; submode pattern for register modulation)
- [x] Token architecture (nested source, per-brand exports)
- [x] Tier sequencing (colour → type/space/motion → patterns → contexts → kits)
- [x] UNVERIFIED tripwire disposition (strip figures; retain principles)
- [x] Open debts inheritance (`docs/TIER-2-INHERITANCE-LOG.md`)
- [x] Composition-rule scope (aspirational; first-touch commercial only; ADR 0011)
- [x] ConnexusMinds interim artefacts inventory (none; tier-5 reconciliation generalised; ADR 0011)

All blocking items resolved. Tier-2 can proceed.

**Bottom-line finding from the artefact survey** (worth carrying forward as session-4 grounding): the entire ConnexusMinds visual system is aspirational specification, not deployed reality. Working artefacts use "Connexus Intelligence" as the entity name; running CSS uses #dc2626 as commodity red without brand naming; gradient names live only in SEED contradictions; the .com is parked; no decks/templates encode the tokens. The design system describes the brand correctly; the deployment trails. Tier-4 CLIENT-DELIVERABLES.md is the primary ConnexusMinds surface (documents-and-comms); WEBSITE.md remains primarily HensPham.

## Next session opening

Session 4 (tier-2 colour) opens against repo state at v0.1.7 + survey addendum (when it lands). Recommended opening prompt anchors:

1. Read `BRIEF.md`, `decisions/0004` through `decisions/0010`, and `docs/TIER-2-INHERITANCE-LOG.md`
2. Author `2-TOKENS/colour.md` + `colour.yaml` against the nested-source architecture (per ADR 0007), six-colour ConnexusMinds palette + Coral adjacency rule (per ADR 0004), HensPham extraction from running CSS with D1+D4 resolutions (per inheritance log)
3. Reconciliation marker on each ConnexusMinds entry per ADR 0008
4. Per-pair contrast tables at AA verification

End handoff response. Author this commit will land as v0.1.7 on `main`; CD session 4 opens against that state.
