# First Session Checklist — Claude Design

The ten-step guide to opening session 1 of Claude Design authoring against this repo. Keep this file open in a side tab during the session.

---

## Before you open Claude Design (10 minutes)

### 1. Confirm access

Visit `claude.ai/design` in your browser. You need a Claude Pro, Max, Team, or Enterprise subscription; access rolls out gradually so the URL may redirect if your account is not yet provisioned. If it redirects, check access status in your Claude subscription settings before continuing.

### 2. Load operator-side context

Read or re-scan (pick the level that suits your recall):

- Dense: `00-AREA/6I-CYBORG/02-ARTIFACTS/260423-DESIGN_LITERACY-STUDY_GUIDE-CLAUDE.md` — the 10 prompt templates in §2 and pitfalls table in §3 are the most useful during a session
- Medium: the session's audio overview — `00-AREA/6I-CYBORG/02-ARTIFACTS/260423-DESIGN_LITERACY-AUDIO-NOTEBOOKLM.mp3`
- Light: this checklist plus `docs/PROMPTING-PLAYBOOK.md` §1 (opening prompt pattern)

### 3. Open adjacent tools

In separate tabs or windows:

- The repo on GitHub (`https://github.com/mitchens84/mitch-hensman-design-system`) — you'll reference the public URL in the opening prompt
- `BRIEF.md` and `SEED/DESIGN-SIGNALS.md` open locally — you'll verify Claude Design's grounding summary against them
- A timer (phone or menu bar) — target 60–90 minutes; stop at plateau or tier-provisional completion

### 4. Pick the tier for session 1

Strong recommendation: **start with `1-FOUNDATIONS/`**. Downstream tiers depend on it. Within Foundations, the natural order is:

1. `PHILOSOPHY.md` — governing stance; blocks nothing but anchors everything
2. `BRAND.md` — audiences, positioning
3. `VOICE.md` — pillars, modulation, hard constraints (the workhorse file)
4. `ANTI-PATTERNS.md` — forbidden defaults
5. `ACCESSIBILITY.md` — WCAG AA+ baseline

For session 1 specifically, aim to complete one or two of these rather than half-completing all five. `VOICE.md` is the highest-leverage single file if you have to pick one.

---

## Opening Claude Design — the first 10 minutes

### 5. Paste the opening prompt

Copy verbatim from `docs/PROMPTING-PLAYBOOK.md §1`, or use this exact text:

```
I'm authoring my personal design system. You have access to this public GitHub repo:
https://github.com/mitchens84/mitch-hensman-design-system

Read in order:
1. BRIEF.md
2. SEED/DESIGN-SIGNALS.md
3. SEED/VOICE-CONSTRAINTS.md
4. SEED/STD-STYLE_GUIDE-excerpt.md
5. SEED/tokens-reference.css
6. SEED/typography-reference.css
7. SEED/VOICE-FRAMEWORKS.md + SEED/VISUAL-FRAMEWORKS.md
8. SEED/PHILOSOPHY-2024.md

Then describe back to me, in one paragraph: (a) my voice in your own words,
(b) my top three design constraints, (c) the two anti-patterns you will most actively avoid.
Do not generate anything until I confirm your grounding is accurate.
```

### 6. Verify the grounding summary carefully

This is the single highest-leverage step of the entire session. If Claude Design misreads your voice, your constraints, or your anti-patterns, everything downstream compounds the error.

Check three things:

- **Voice**: does the description align with the substance-first, evidence-based, UK-English voice captured in `SEED/VOICE-CONSTRAINTS.md` and the voice samples in `SEED/DESIGN-SIGNALS.md §5`? If Claude Design describes you as "warm", "approachable", "modern" — that is drift; correct it.
- **Top three constraints**: UK English, semicolons (not em-dashes), no emojis in prose, no marketing-speak, WCAG AA, Thai/multilingual support — any three from the documented list is fine; any that are *not* on the list is a red flag.
- **Top two anti-patterns**: should be drawn from `BRIEF.md §4` — gradients without data, glassmorphism, default Tailwind greys, vague directionals, rounded-card-drop-shadow defaults, emoji in prose. If Claude Design names something not in §4, ask it to cite its source.

If any of the three is wrong: do not proceed. Ask Claude Design to re-read the specific SEED file and re-summarise. A correct grounding is the gate to substantive work.

### 7. Confirm admiration references (one-time)

Before authoring, run the CANDIDATE confirmation from `SEED/DESIGN-SIGNALS.md §7`. Seven references are listed. Prompt:

```
In SEED/DESIGN-SIGNALS.md §7, seven admiration references are candidates awaiting
operator confirmation. Present each reference. I'll mark each CONFIRMED, DROP,
or REPLACE-WITH-[X]. Start with Craig Mod and go through the list in order.
```

Step through each. The list becomes canonical after this exchange; commit the decisions to a session note (`sessions/260xxx-session-01.md`) or an ADR. Claude Design will use the confirmed list as aesthetic anchors for the rest of the session.

---

## Authoring — the next 45–70 minutes

### 8. Work with structured prompts

Prefer structured prompts from `docs/PROMPTING-PLAYBOOK.md §2`. For a foundation prose file:

```
Draft 1-FOUNDATIONS/VOICE.md (~500 words).
Structure: (1) three voice pillars, each with 2-3 sentence explanation;
(2) tone modulation rules (personal / commercial / client / AI / social registers);
(3) hard constraints from brief as a compact checklist.
Write as if this is the canonical source — authoritative, not hedging.
Reference SEED/VOICE-FRAMEWORKS.md frameworks (Minto, BLUF, Trust Triad)
where they drive a specific choice. Do not over-academicise.
Test against BRIEF.md §11 completeness criteria for VOICE.md.
```

When it gets close-but-not-right, use the §3 iteration prompt:

```
That's 70% there. Keep [specifics]; change [specifics]; drop [specifics].
Re-author the same file with those adjustments.
```

When it drifts fundamentally:

```
Stop. That drifted toward [specific — marketing / corporate / generic-AI].
Re-read BRIEF.md §4 anti-patterns. Try again using only these primitives: [list].
```

### 9. Watch for the three stopping rules

Stop the session when any of these is true — do not push through:

- **Tier provisionally complete** — the current file meets the `BRIEF.md §11` completeness test for that file. Commit; review cold in a fresh Claude main session before session 2.
- **Quality plateau** — three iterations without meaningful improvement. Either restart the session with tighter grounding, or stop and review.
- **Cost climb** — your feel for tokens-per-decision says it is rising without gain. Stop regardless of where you are.

Keep the timer honest: 60 minutes is the target; 90 is the ceiling. Longer sessions fatigue Claude Design's reference to the brief.

---

## Closing the session (last 10 minutes)

### 10. Run the end-of-session prompt and commit

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

Then:

- Commit the authored tier file(s) + the CHANGELOG update + any ADR to the repo
- Create a `sessions/YYMMDD-session-01.md` file using `sessions/TEMPLATE.md`; fill in decisions, drift observed, prompts that worked
- Push to GitHub if you want the repo state visible to Claude Design for the next session

### After the session

Before session 2 opens, review the committed output in a fresh Claude main session (Opus). Ask the main session: "What did Claude Design draft here? What's missing, what's drifted, what's good?" Cross-model review catches in-session blind spots. Adjust the PROMPTING-PLAYBOOK with any pattern that worked (or reliably failed).

---

## Quick-reference: the five things that matter most

1. **Grounding summary is the gate.** Don't proceed past a misread.
2. **Start with Foundations.** Downstream depends on it.
3. **Use structured prompts** from the playbook, not freeform requests.
4. **Stop at completeness, not perfection.** 80% shippable; refine next session.
5. **Cross-model review between sessions.** Fresh context catches drift.

---

## If you get stuck

- Output is generic? → paste `docs/PROMPTING-PLAYBOOK.md §5` anti-pattern guardrail into the chat
- Claude Design is looping? → restart the session with a tighter opening prompt that names the specific failure mode
- Token cost climbing fast? → stop; advanced prototypes (voice / video / 3D) consume disproportionately; commit what you have
- Not sure if it looks like you? → compare side-by-side with a known-good page from `mitch-hensman.com`; name the specific drift in the next prompt
- Claude Design won't author structured files, only prototypes? → that's the Phase 1.5 probe outcome (see `decisions/0002-handoff-model-probe.md`). Fallback: have Claude Design generate an exemplar prototype; scribe the decisions into the tier file in your main Opus session afterward

---

*Update this checklist after sessions 1–2 with patterns observed. Anything that worked twice is worth codifying; anything that failed is worth adding to the "if you get stuck" section.*
