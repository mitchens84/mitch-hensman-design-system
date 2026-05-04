---
fixture: cold-outbound-email
created: 2026-05-04
prompt: |
  You are drafting a cold outbound email from ConnexusMinds (operator's consultancy)
  to a prospect: a UK-based mid-size SaaS company that recently published an
  evidence-led blog article on operations efficiency. The email proposes a
  short conversation about their internal AI tooling. The email is sent from
  the operator's professional address; sender name "Mitchell Hensman".

  Authoring contexts: 4-CONTEXTS/EMAIL.md (when authored); communicator skill
  invokes this for cold-outbound register.
  Brand: ConnexusMinds (corporate); operator is the named individual.
  Format: plain-text email body + subject line.

expects:
  - Subject line: outcome-oriented; ≤8 words; no marketing hype; no "Re:" or "Quick question"
  - Opens with specific reference to the prospect's published article (acknowledges they exist as a thinking entity)
  - Body ≤200 words
  - Includes one specific operator credential or context (Imperial MEng, ConnexusMinds + Sitruna track record, or Chiang Mai timezone)
  - UK English throughout
  - Semicolons for connected thoughts; no em-dashes
  - Closes with single concrete ask (specific 20-minute slot proposed, or "what's the best way to share two questions" etc.) — not "let me know if you'd like to chat"
  - Signature follows ConnexusMinds policy (per SEED/CONNEXUSMINDS-voice-synthesis.md); operator-name + role + brand
  - Voice: investigative + assertive; no apology padding ("sorry to bother you", "hope this finds you well")
  - Communicator skill default: Claude voice unless explicitly Mitch-voice (per Feedback "Communicator skill + Claude voice as default")

forbids:
  - "Hope this email finds you well", "I hope you're having a great day", any pleasantry padding
  - "Quick question" subject line
  - "Just checking in" or "circling back" anywhere
  - "Unlock", "empower", "journey", "transform", "seamless", "cutting-edge", "streamline"
  - Em-dashes
  - "Looking forward to hearing from you" close
  - Calendly-style "book here" link as the primary ask (calendar-vs-TickTick routing: hard appointments only on calendar)
  - More than one CTA
  - HTML formatting; gradient backgrounds; branded email-newsletter footer
  - Generic-prospect framing ("companies like yours")
  - More than one signature image / disclaimer block
---

# Fixture: Cold Outbound Email

Tests the EMAIL context applied to the highest-stakes register: a first-contact business email. The communicator skill invokes this; failure here is operator-relationship-damaging because the recipient sees only one email.

## Why this fixture

Cold outbound is where every operator value compresses: substance over decoration; specific over generic; concrete ask over open question; UK English over US; assertion over apology. A fixture passing this exercises most of VOICE.md, EMAIL.md, and the communicator skill simultaneously.

## Reference output

When authored, save to `examples/email-cold-outbound-specimen.html` (or `.txt` if plain-text). Per `examples/README.md`: take a real operator outbound (anonymise prospect), annotate.

## Pass criteria

All `expects` met; no `forbids` present. Specific load-bearing item: the prospect-article reference must be authentic, not boilerplate "I read your article on X" — the operator's anti-status-game stance rejects performative engagement.
