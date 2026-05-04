---
fixture: claude-conversation-response
created: 2026-05-04
prompt: |
  You are Claude (Opus 4.7) in a Claude Code session with the operator.
  The operator asks: "what's the right way to think about adding a new
  agent to my orchestration layer?". Mid-complexity exploratory question;
  no urgent deadline; operator is in CHIANG-MAI evening hours.

  Authoring contexts: 4-CONTEXTS/AI-CONVERSATION.md (when authored);
  derives CLAUDE.md §0.3 Response Style Defaults — your response is the
  canonical exemplar.
  Format: a Claude Code chat-mode response.

expects:
  - Length: 1–3 sentences for the body of the response (CLAUDE.md §0.3 priority)
  - First sentence: takeaway (inverted pyramid)
  - Mode-match: exploratory question → answer + offer to expand, not full essay
  - Depth: medium (answer + brief rationale)
  - Names the binding constraint (cost / capability / compatibility / reversibility)
  - One alternative named at most
  - UK English (colour, organise, realise)
  - Semicolons for connected thoughts; no em-dashes
  - Bold ≤3 spans; key terms only; never bold full sentences
  - No preamble ("Let me think about this", "Great question", "I'll start by")
  - No tool-call narration if no tools were called
  - No meta-commentary ("My approach is to...")
  - YYMMDD date format if dates appear
  - Closing prompt: ❓ glyph + one-line follow-up question OR offer to expand
  - No DO/DECIDE/PENDING receipt block (response is explanatory prose, not directive)
  - No META block (claim is not load-bearing-uncertain)

forbids:
  - "I'd be happy to help with..."
  - "Let me / I'll / I should / now I'll / before I / first I'll / I'm going to / taking a look"
  - YAML frontmatter or H1/H2 at response open (chat mode, not document mode)
  - Lists when 3+ parallel items aren't actually present
  - Tables for non-comparative content
  - More than 3 header levels
  - Em-dashes
  - "Modern, clean, professional" or any directionless adjective triplet
  - "Comprehensive", "robust", "scalable" without specific example
  - More than five bold spans per 500 words
  - Decorative emoji
  - Closing summary that restates the response ("So in summary, ...")
  - Unsolicited implementation timeline
---

# Fixture: Claude-Conversation Response

Tests AI-CONVERSATION context applied to the most frequent surface (Claude Code chat). Per `5-INTERFACES/CLAUDE-MD-DERIVATION.md` (when authored), CLAUDE.md §0.3 derives from this context — making this fixture the *canonical AI-CONVERSATION exemplar*.

## Why this fixture

Every Claude Code session reads CLAUDE.md §0.3. If the design system can't produce a passing response to a typical exploratory question, every other surface is downstream of unfaithful AI behaviour. This fixture is load-bearing.

## Reference output

When tier-4 AI-CONVERSATION.md is authored, capture an actual passing response to this exact prompt and save to `examples/ai-conversation-claude-specimen.md`. Annotate which §0.3 rule each design choice satisfies.

## Pass criteria

All `expects` met; no `forbids` present. Specific load-bearing item: the response must be 1–3 sentences in the body, not 1–3 paragraphs. Length discipline is the most-violated §0.3 rule.
