---
title: Personal Markers
status: AUTHORED — anchor catalogue (not Claude Design judgement)
last_reviewed: 2026-05-04
purpose: Unfakeable details an authoring AI can pull from to keep outputs non-generic. Operationalised by ANTI-GENERIC-PROTOCOL §3.
---

# Personal Markers

A catalogue of concrete, verifiable details about the operator that authoring AIs can invoke to satisfy the per-output weirdness check (`ANTI-GENERIC-PROTOCOL §3`). These are levers, not decorations — pull one when an output risks regressing to generic.

Use sparingly and accurately. The signal is presence-of-specificity, not density-of-trivia.

## 1. Place

- **Chiang Mai, Thailand** (UTC+7) since DTV-visa basis. Monsoon May–October; smoke season February–April (PM2.5 routinely exceeds 200; affects outdoor and air-quality references)
- Walking distance to several wat (Buddhist temples) — the soundscape includes bells and chants, not traffic
- Power-cuts during storm season are routine — affects work-continuity assumptions
- Time zone places operator 6h ahead of UK clients, 14h ahead of US east coast — every meeting is asymmetric
- Previously: Croatia (multi-year base), UK (origin)

## 2. People

- **Mai Pham** — Vietnamese national, business partner (ConnexusMinds), close friend, not a romantic partner. Vegan. Freelance Amazon operations specialist with multiple clients including Sitruna
- **Bean** — dog. Rescue. Co-cared with Mai. Walked daily. Has appeared in personal-blog footnotes
- **Megan** — sister. Croatia-based
- **Laurie + Renata** — family in Croatia (parental generation)
- **Sitruna** — primary commercial client (Amazon operations); reached via ConnexusMinds partnership

## 3. Origin + training

- **Born 25 May 1984**, British
- **MEng Civil Engineering, Imperial College London** — engineering rigour, not coding-bootcamp lineage; this affects how problems are framed (load paths, factor of safety, design codes)
- **Remote sole proprietor since 2020** — no office, no team-of-employees structure
- Currently **Analytics Manager + AI Solutions Architect at ActSEA**; consults via **ConnexusMinds**

## 4. Practice + values

- **Vegan** — affects food references, hospitality decisions, supply-chain framing
- **Minimalist-leaning** — possessions and information both
- **Evidence-based** — quantified claims preferred to assertions; hedges ("moderate evidence for…") are voice signals, not weakness
- **Systems-literate** — operates a personal triad (Airtable / TickTick / Google Drive) plus a multi-skill Claude Code harness
- **Anti-status-game** — outputs that perform expertise rather than demonstrate it fail the operator's review

## 5. Languages + scripts

- **UK English** — colour, organise, realise, centre. Hard rule
- **Thai script** — outputs may include Thai (e.g. address blocks, restaurant names). Multilingual rendering pipeline must handle it (Playwright, not weasyprint)
- **Vietnamese script** — appears in Mai-related artefacts; same multilingual rules
- **Croatian** — appears in family/property contexts (e.g. lease addenda); not in commercial outputs
- **Dates always YYMMDD** (260504, not 04 May 2026 or 2026-05-04 in body prose)

## 6. Voice tells

- Semicolons for connected thoughts; **never em-dashes**
- "Substance-first", "evidence-based", "functional-over-ornamental" — operator's own self-description; cite directly when used
- Hedges quantitative claims he cannot source ("approximately", "in the order of", "I haven't verified but…")
- Banned: "unlock", "empower", "journey", "transform", "seamless", "cutting-edge", "streamline" — these signal marketing-speak the operator rejects

## 7. Two brands

- **HensPham** — personal site `mitch-hensman.com`. Restrained, no gradients, no emoji in prose. The personal-authenticity layer
- **ConnexusMinds** — corporate consultancy with Mai. `connexusminds.com` (not yet deployed). Network-topology visual metaphor; permitted gradients (Intelligence Flow, Growth Trajectory, Insight Emergence). The commercial-authority layer
- Composition lockup "ConnexusMinds by HensPham" exists as scoped intent for first-touch commercial; not yet deployed (per ADR 0011)

## 8. Daily anchors

- Daily report renderer produces an HTML email; canonical template is the source-of-truth (no hand-crafted HTML per `feedback_daily_renderer_only_html.md`)
- Communication skill defaults to **Claude voice**, not Mitch voice, for outbound messages — Mitch voice only on explicit request (`feedback_communicator_default_voice.md`)
- Telegram is a single-channel inbound; outbound any-time via curl

## 9. How to use this file

When authoring, do not enumerate these. Pick **one** that is genuinely relevant to the current output and let it land naturally. A weekly-update mentioning a delayed Sitruna call because of a Chiang Mai power-cut is using §1 well. A design-system colour rationale that gratuitously references Bean is using this badly.

Test: would removing the marker damage the output's specificity? If yes, keep it. If no, remove it.

## 10. Maintenance

This file updates when material biographical facts change. It does **not** update for transient events (a trip, a project, a current-week deadline). Those live in session state, not here.

Operator reviews this annually or after any major life change.
