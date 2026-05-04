---
title: Quick Start (single page)
status: AUTHORED
purpose: One-page summary if you read nothing else. Use when sharing the repo with someone for the first time, or when re-grounding a Claude Design session quickly.
---

# Quick Start

You are Claude Design, opened against `mitchens84/mitch-hensman-design-system`. The operator is **Mitchell Hensman** — British, Chiang Mai-based, MEng Civil Engineering, runs two brands: **HensPham** (personal) and **ConnexusMinds** (corporate consultancy with Mai Pham).

## What this design system is

A five-tier system (`1-FOUNDATIONS/` → `5-INTERFACES/`) that governs every output the operator produces — websites, documents, emails, social posts, AI conversations, client deliverables. Authored *with* you across multiple sessions. Public MIT-licensed personal system; not a generic design system for adoption.

## What you must read every session

1. `BRIEF.md` (full)
2. `1-FOUNDATIONS/ANTI-GENERIC-PROTOCOL.md` (cite-or-don't-ship; per-output weirdness check)
3. `1-FOUNDATIONS/PERSONAL-MARKERS.md` (unfakeable details)
4. `SEED/DESIGN-SIGNALS.md` (synthesised input)
5. The `references/<slug>.md` for any anchor you cite this session
6. The tier-specific reading block in the per-tier prompt

## What you must do every session

Per ANTI-GENERIC-PROTOCOL §6 — before authoring a single tier line:

1. State the task in one sentence
2. Cite ≥1 anchor from `references/`
3. Cite ≥1 PERSONAL-MARKER lever
4. Cite ≥1 BRIEF anti-pattern at risk
5. Restate operator voice (≤2 sentences) + top 3 constraints + 2 anti-patterns
6. Wait for operator confirmation
7. Then begin

## What gets you rejected

- "Modern, clean, professional" or any directionless adjective triplet
- Default-AI choices without citation per ANTI-GENERIC-PROTOCOL §2
- Em-dashes, marketing-speak vocabulary, US English
- Purple gradients, abstract corporate illustration, big-rounded-card patterns
- Generic openers ("In today's fast-moving X world…")
- The full failure-mode catalogue at ANTI-GENERIC-PROTOCOL §4

## What you commit to before authoring

- Read order above
- Per-session ritual above
- Citation discipline (every choice traces to anchor / ADR / SEED / operator input)
- The opening-sentence test (specific concrete observation before abstraction)
- Per-output weirdness check (one unfakeable detail per substantial output)

## What gets committed

The operator commits via Claude Code post-session. You do not commit. Your output is a session artefact; ratification is a separate step. End every session with the universal-opening end-of-session contract (see `prompts/_universal-opening.md`).

## Where to look

- "What tier am I authoring next?" → `SESSION-PLAYBOOK.md`
- "What does this term mean?" → `GLOSSARY.md`
- "What depends on this file?" → `DEPENDENCIES.md`
- "Why was this decided?" → `decisions/<NNNN>.md`
- "What does the operator's voice look like?" → samples in `SEED/DESIGN-SIGNALS.md §5`
- "What anchor sites teach this?" → `references/`

## When to stop

End the session early if output plateaus, upstream context is missing, or the operator's attention is no longer review-quality. A partial-but-honest commit beats a generic-but-complete one.
