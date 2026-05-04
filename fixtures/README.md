---
title: Test Fixtures
status: AUTHORED — regression suite for design-system fidelity
last_reviewed: 2026-05-04
---

# Test Fixtures

Sample real-world prompts the design system must handle correctly. Used for round-trip validation per `INTEGRATION-MAP.md` §"Round-trip validation".

## How fixtures work

Each fixture is a single markdown file:

```markdown
---
fixture: <slug>
prompt: |
  <the prompt fed to Claude Design or Claude Code>
expects:
  - <design property A — e.g. "uses ConnexusMinds palette, not HensPham">
  - <design property B — e.g. "Intelligence Flow gradient appears on hero only">
  - <design property C — e.g. "no em-dashes; semicolons used for connected thoughts">
forbids:
  - <anti-pattern A — e.g. "no purple gradient">
  - <anti-pattern B — e.g. "no 'unlock' or 'empower' vocabulary">
---

# <Title>

<context for the fixture>

## Reference output (if available)
<what a faithful output looks like>
```

## Initial fixture set (planned)

| Fixture | Tests |
|---|---|
| `fixture-sitruna-proposal-cover.md` | ConnexusMinds palette + corporate register + no marketing-speak |
| `fixture-mitch-hensman-blog-article.md` | HensPham restrained + UK English + evidence-based opening |
| `fixture-daily-report-html.md` | Daily report renderer template + Yesterday-section faithfulness |
| `fixture-cold-outbound-email.md` | Communicator-skill + register matching + signature policy |
| `fixture-twitter-thread.md` | SOCIAL.md application + no emoji in prose + bold ≤3 spans |
| `fixture-multilingual-pdf-thai.md` | Thai script renders correctly via Playwright; not weasyprint |
| `fixture-claude-conversation-response.md` | AI-CONVERSATION.md derivation + CLAUDE.md §0.3 alignment |

## Run cadence

- Before any minor-version bump (v0.1.x → v0.2.x): run all fixtures through Claude Design or Claude Code; record pass/fail
- After significant tier-2 / tier-4 edits: re-run fixtures touching the changed area
- Quarterly: full re-run

## Pass criteria

A fixture passes if the actual output satisfies every `expects` item and contains no `forbids` item. Partial fail surfaces in `CHANGELOG.md` as a known-divergence; full fail blocks the version bump.
