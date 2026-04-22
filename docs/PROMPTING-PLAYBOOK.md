# Prompting Playbook — Design-System Authoring

Design-system-authoring-specific patterns for driving Claude Design against this repo. General Claude Design prompting is broader; system-level tool guidance lives in the operator's `STD-TOOL_CLAUDE_DESIGN.md`. Revise this file with lessons learned after each Claude Design session.

## 1. Opening prompt pattern (session grounding)

```
I'm authoring my personal design system. You have access to this GitHub repo:
https://github.com/mitchens84/mitch-hensman-design-system

Read the following files in order before responding:
1. BRIEF.md — operator profile, hard constraints, target output structure, anti-patterns
2. SEED/DESIGN-SIGNALS.md — synthesised design signals from existing work
3. SEED/PHILOSOPHY-2024.md — archived 8-principle design philosophy (serious prior art)
4. SEED/VOICE-CONSTRAINTS.md — hard voice/typographic/behavioural constraints
5. SEED/STD-STYLE_GUIDE-excerpt.md — canonical brand identity excerpt
6. SEED/tokens-reference.css + SEED/typography-reference.css — working CSS tokens from mitch-hensman.com
7. SEED/VOICE-FRAMEWORKS.md + SEED/VISUAL-FRAMEWORKS.md — existing framework libraries

Confirm you've read them. In one paragraph, describe back to me: my voice in your own words; my top 3 design constraints; the 2 most important anti-patterns you'll avoid. Don't start generating yet.
```

**Why**: grounds before generation; surfaces misread seeds early; establishes shared language.

## 2. Structured-output requests

**For a specific file format**:

```
Propose a tokens.yaml for the colour tier.
Requirements:
- Semantic naming (colour.surface.base, not colour.grey-100)
- Dark + light variants per semantic role
- WCAG AA contrast against text layer
- 5–7 roles max; parsimony
- Output: valid YAML, no commentary in the file
- Separately in chat: one-paragraph rationale for the choices
```

**For a prose doc**:

```
Draft 1-FOUNDATIONS/VOICE.md (~500 words).
Structure: (1) three voice pillars, each with 2–3 sentence explanation;
(2) tone modulation rules (personal vs commercial register);
(3) hard constraints from brief as a compact checklist.
Write as if this will be the canonical source — authoritative, not hedging.
Reference VOICE-FRAMEWORKS.md where relevant (Minto, BLUF, Trust Triad).
```

## 3. Iteration loops

**When output is close but not right**:

```
That's 70% there. Keep [specifics]; change [specifics: less corporate, more considered-essayist];
drop [specifics: third voice pillar duplicates the first]. Re-author the same file.
```

**When output is fundamentally off**:

```
Stop. That's generic AI-design — [specifics: pastel gradient, glassmorphism, 4 buttons per screen].
Re-read BRIEF.md anti-patterns. Try again using only these primitives: [list].
```

## 4. Extract vs generate

**When existing implementation exists, prefer extract**:

```
Before proposing colour tokens, extract the current palette from SEED/tokens-reference.css.
List what you find (name, hex, usage count if visible).
Then propose: which to keep as-is, which to rename semantically, which are gaps.
Don't invent colours unless extraction + brief reveal a genuine gap.
```

**When seed is thin, prefer constrained generate**:

```
Brief + seed don't declare a motion/animation language.
Propose 3 options: (A) no motion, static only; (B) minimal functional motion (focus rings, reveals);
(C) expressive within restraint (micro-interactions on user input).
For each: one-paragraph rationale, example use case, failure mode.
Recommend one.
```

## 5. Anti-pattern steering (keep on hand; paste when drifting)

```
Anti-pattern guardrails for this session:
- No gradients unless they encode data
- No glassmorphism / frosted backgrounds
- No emoji in generated prose (status indicators OK)
- No em-dashes (use semicolons)
- Greys sparingly; never default Tailwind greys
- No pastel palettes; saturated or muted, not washed-out
- No "card with big rounded corners + drop shadow + hover lift" default
- No marketing-speak, fake urgency, or performative CTAs
- No vague directional adjectives (modern, clean, professional) — be specific
Confirm you've internalised these. Break them only with explicit permission.
```

## 6. When to restart the session

Restart when:
- Output has drifted for 3+ iterations in same direction
- Context window saturated; Claude Design stops referencing brief details
- Major pivot needed (system-authoring → exemplar-prototyping)
- Cumulative decisions feel internally contradictory; re-grounding cheaper than repair

Keep from old session:
- Explicit list of decisions + rationale
- Output files worth preserving

## 7. End-of-session prompt

```
Summarise this session:
1. Decisions made (each with one-line rationale)
2. Files created or modified (list)
3. Open questions / unresolved items (with context)
4. Suggested next session focus

Output in two forms:
- Markdown suitable for CHANGELOG.md entry
- ADR-formatted entry for decisions/ if any architectural decisions were made
```

**Commit the output + summary before closing the session.**

## 8. Cross-session prompt hygiene

- Each Claude Design session gets a date-stamped notes file in `sessions/` of this repo (create on demand)
- Each session file: date, opening prompt, key decisions, output refs, unresolved questions
- Open future sessions with context: "last session we decided X; today I want to work on Y"
- Prevents re-debating settled decisions across sessions

## 9. What NOT to ask Claude Design

- **"What should my voice be?"** — yours to decide, not Claude Design's to invent. Give it your voice signals (SEED); have it refine into a pillar statement.
- **"Design me a brand"** — too open; brief has to carry constraints or output is generic
- **"Make it more [modern / professional / cool]"** — vague directionals produce AI-look defaults. Always: "more like [specific reference]" or "less like [specific anti-pattern]".
- **"Fix all the problems"** — unscoped; name the specific problem

## 10. Session length discipline

Aim for 60–90 minute sessions; stop when:
- A tier is provisionally complete (not perfect)
- Output quality has plateaued
- Token cost per useful decision has climbed notably

Rest and review in main Claude session (Opus) between Claude Design sessions. Cross-model review catches drift Claude Design missed.

---

*Playbook evolves. Update this file after every Claude Design session with patterns that worked + patterns that didn't.*
