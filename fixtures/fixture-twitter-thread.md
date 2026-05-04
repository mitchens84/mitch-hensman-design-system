---
fixture: twitter-thread
created: 2026-05-04
prompt: |
  You are drafting a Twitter/X thread from the operator's HensPham personal account.
  Topic: the Anti-Generic Protocol (this design system's recently-authored
  1-FOUNDATIONS/ANTI-GENERIC-PROTOCOL.md). The thread should communicate the
  central idea (cite-or-don't-ship; per-output weirdness check; failure-mode
  catalogue) without selling, marketing, or performing engagement.

  Authoring contexts: 4-CONTEXTS/SOCIAL.md (when authored, X sub-section).
  Brand: HensPham (personal).
  Format: 4–6 tweets; first tweet is the hook; subsequent tweets carry the substance;
  final tweet is the close (link to the public repo, no "RT if you agree" etc.).

expects:
  - First tweet opens with specific concrete observation (per ANTI-GENERIC-PROTOCOL §5)
  - Each tweet ≤280 chars (X limit)
  - Each tweet stands alone (readable out of thread order)
  - UK English throughout
  - Semicolons for connected thoughts; no em-dashes (X allows em-dashes; operator's stance overrides)
  - At least one specific failure-mode example from §4 of the protocol (purple gradient hero, Tailwind-grey default, etc.)
  - Final tweet links to the GitHub repo with no marketing copy
  - Bold ≤1 span per tweet (X strips most formatting; emphasis carries via word choice)
  - Voice: declarative; first-person sparingly; no "Today I want to share" preamble
  - Quotes ANTI-GENERIC-PROTOCOL §6 ritual elements verbatim (one or two)

forbids:
  - "🧵" thread emoji (or any decorative emoji)
  - "Here's a thread on X" preamble tweet
  - Engagement-bait close ("RT if useful", "Like and follow", "What do you think?")
  - Em-dashes
  - Hashtags (operator does not use them)
  - "Game-changer", "powerful", "huge", "insane", "unhinged"
  - Generic AI-look adjective triplets ("clean, modern, professional")
  - Self-promotional close ("DM me", "Book a call")
  - Numbered prefix ("1/", "2/") — X auto-threads; numbering is redundant chrome
---

# Fixture: Twitter/X Thread

Tests SOCIAL register at character-constrained scale. Each tweet must be self-supporting; the format defeats most AI defaults (preamble, padding, marketing close).

## Why this fixture

X is the social channel where AI-generated content is most identifiable as such. A passing fixture proves the design system survives extreme compression without regressing to generic.

## Reference output

When authored, save to `examples/social-twitter-thread-specimen.md` with each tweet as a numbered code-fence block + character count.

## Pass criteria

Each tweet passes its own opening-sentence test; the thread as a whole has zero `forbids` items. The character-count discipline is its own pass criterion — over-280 = automatic fail.
