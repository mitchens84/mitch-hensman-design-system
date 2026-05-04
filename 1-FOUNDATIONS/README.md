# Tier 1 — Foundations

Invariant layer. Philosophy, brand identity, voice, anti-patterns, accessibility baseline. Downstream tiers reference; never contradict.

## Files (authored in Claude Design)

- `PHILOSOPHY.md` — governing stance; what the system privileges and guards against
- `BRAND.md` — identity, audiences, positioning
- `VOICE.md` — voice pillars, tone modulation, hard constraints
- `ANTI-PATTERNS.md` — forbidden defaults; explicit "generic AI-look" avoidance
- `ACCESSIBILITY.md` — WCAG AA+ baseline; inclusive design specifics
- `LOGO.md` — logo and mark usage per brand (added v0.1.8)

## Files (operator-side, authored in Claude Code)

- `ANTI-GENERIC-PROTOCOL.md` — operationalises anti-generic stance; required reading every session (added v0.1.8)
- `PERSONAL-MARKERS.md` — concrete unfakeable details catalogue used by ANTI-GENERIC-PROTOCOL §3 (added v0.1.8)

Tier-1 design files are authored in Claude Design from `SEED/` material; operator-side protocol files are authored in Claude Code and reviewed by operator. See SESSION-PLAYBOOK.md §3 for the recommended sequencing — Tier-1 design files (PHILOSOPHY/BRAND/VOICE/ANTI-PATTERNS/ACCESSIBILITY) are deliberately authored *late*, after downstream tiers reveal what is genuinely invariant.
