---
title: Assets
status: AUTHORED
last_reviewed: 2026-05-04
---

# Assets

Binary and licensed-asset library. Files here are referenced by `1-FOUNDATIONS/LOGO.md`, `2-TOKENS/typography.{md,yaml}`, and the website repo.

## Subfolders

- `fonts/` — typeface files (`.woff2`, `.woff`) + licensing notes
- `logos/` — logo and mark masters (`.svg`) for HensPham + ConnexusMinds
- `favicons/` — generated favicon assets (`.ico`, `.png` at standard sizes)

## Licensing rule

Every binary in this repo is either:
- MIT/SIL/OFL-licensed (open redistribution permitted), OR
- Operator-original work (Mitch's own artwork)

Commercial-licensed fonts (e.g. Mark Pro, Brown, Söhne) are **not committed**; instead, a `fonts/<name>/README.md` records the licence, where the file lives outside this repo, and the SHA256 of the canonical file for verification.

## Naming

- Logo files: `<brand>-<variant>-<colour>.svg` — e.g. `hensph-wordmark-mono.svg`, `connexusminds-mark-teal.svg`
- Font files: `<family>-<weight>-<style>.woff2` — e.g. `inter-variable.woff2`
- Favicons: `favicon-<size>.png` for raster; `favicon.svg` for vector source

## Source-of-truth

For HensPham assets, the website repo (`mitch-hensman-com/public/`) is canonical; this folder mirrors. For ConnexusMinds, this folder is canonical until a site repo exists.
