---
title: Fonts
status: SCAFFOLD — actual font files added when sourced
last_reviewed: 2026-05-04
---

# Fonts

Typeface library. Each typeface gets a subfolder with the font file (if licence permits commit) and a `README.md` documenting licence, source, and use.

## Currently in use (per BRIEF + SEED)

| Family | Where used | Licence | Committed here? |
|---|---|---|---|
| **Inter Variable** | ConnexusMinds (per BRIEF §1a); fallback Source Sans Pro | OFL 1.1 (open) | To be added |
| **Source Sans Pro** | ConnexusMinds fallback | OFL 1.1 | To be added |
| (HensPham primary) | Extract from `SEED/typography-reference.css` | TBD | TBD |

## Acquisition pointers

- **Inter** — `https://rsms.me/inter/` — download `Inter-3.x.zip`; commit `Inter-Variable.woff2` + `Inter-Variable.ttf`
- **Source Sans Pro** — `https://github.com/adobe-fonts/source-sans` — download latest release; commit `SourceSans3-VF.otf.woff2`

## Per-font README template

```markdown
---
family: <Name>
licence: <SPDX identifier or licence name>
source: <URL>
acquired: <YYMMDD>
used_by: [<brand>, ...]
---

# <Name>

Files in this folder:
- `<filename>` — <weight/style/variable axis>

Licence terms:
<short summary; full text in adjacent LICENSE file>
```

## What's NOT committed here

- Commercial-licensed fonts (record SHA256 + external location in a stub README)
- System fonts (operator does not bundle SF Pro, Segoe, etc.)
