---
fixture: mitch-hensman-blog-article
created: 2026-05-04
prompt: |
  You are authoring a blog article for mitch-hensman.com (HensPham personal brand).
  Topic: a retrospective on running a personal operating system (Airtable + TickTick + GDrive)
  for two years; what worked, what didn't, three quantified observations.

  Authoring contexts: 4-CONTEXTS/WEBSITE.md.
  Brand: HensPham (per BRIEF §1a).
  Format: markdown article (.md) for Astro static site.
  Frontmatter: per the website repo's content schema (lbs_domains: ['intellect'] minimum
  per Memory Pattern §"Website Patterns").

expects:
  - Opens with a specific concrete observation, not abstract framing (per ANTI-GENERIC-PROTOCOL §5)
  - UK English throughout (colour, organise, realise, centre)
  - Semicolons for connected thoughts; no em-dashes
  - At least three quantified claims (operator's evidence-based voice)
  - Bold spans ≤5 per 500 words; bold = key terms or decision points only
  - Headings: inverted-pyramid structure (H1 = topic + outcome; H2s = sub-claims; H3s rare)
  - Body text measure: 60–70 ch (per references/craig-mod.md and references/edward-tufte.md)
  - At least one numbered footnote with primary-source citation (per references/craig-mod.md)
  - One PERSONAL-MARKERS lever invoked (Bean / Chiang Mai / Imperial / vegan / family / partnership / language) — naturally, not gratuitously
  - Frontmatter complies with website schema; lbs_domains lowercase enum
  - Section breaks use `* * *` (per references/craig-mod.md), not extra blank lines or H3 promotion
  - Concludes with author colophon pattern OR newsletter subscribe pointer (per references/craig-mod.md), not a blog-style "thanks for reading"

forbids:
  - Em-dashes (—) anywhere
  - "Unlock", "empower", "journey", "transform", "seamless", "cutting-edge", "streamline"
  - "Modern, clean, professional" or any adjective triplet without specific reference
  - Emojis in prose (functional status indicators in tables only, if any)
  - Bold full sentences
  - Generic stock photography (the article's hero image, if any, must be specific to the operator)
  - Marketing-style CTA at article close ("Get started", "Sign up", "Discover")
  - "In today's fast-moving X world" or any equivalent generic opener
  - LBS_DOMAINS in uppercase (must be lowercase per website zod schema)
  - More than one H1
---

# Fixture: HensPham Blog Article

Tests HensPham personal-register on a long-form article. The prompt is intentionally broad ("retrospective on personal operating system") to surface whether the design system steers toward a specific, evidence-based opener vs a generic abstract framing.

## Why this fixture

The website is the operator's most-published surface. A faithful blog article is a high-leverage exemplar of HensPham voice + WEBSITE context + TYPOGRAPHY-HIERARCHY + DOCUMENT-STRUCTURE + LAYOUT. Failure here implicates multiple tiers.

## Reference output

When authored, save to `examples/website-article-specimen.md` with sibling `.review.md`. Specimen sourcing rule (per `examples/README.md`): take a real operator article, redact sensitive content, annotate.

## Pass criteria

All `expects` satisfied; no `forbids` present. Frontmatter validation — run `pnpm check && pnpm build` against the website repo before declaring pass.
