---
fixture: multilingual-pdf-thai
created: 2026-05-04
prompt: |
  You are generating a single-page PDF that contains mixed Latin (English) and
  Thai script content. Use case: a printed reference card the operator can hand
  to Thai-speaking suppliers or service providers in Chiang Mai, listing the
  operator's contact details and a short Thai-language summary of services.

  Authoring contexts: 3-PATTERNS/MULTILINGUAL.md (when authored);
  4-CONTEXTS/DOCUMENTS.md (when authored).
  Format: HTML source rendered to PDF via Playwright (Chromium headless),
  per MEMORY pattern #6 (weasyprint corrupts non-Latin layers).

expects:
  - Render pipeline is Playwright (Chromium headless), NOT weasyprint
  - Thai glyphs render correctly (no "tofu" □ characters; no missing diacritic positioning)
  - English Latin and Thai Sarabun (or equivalent Thai face) coexist without baseline drift
  - Body typography uses a Latin face that pairs visually with the Thai face (matching x-height where possible)
  - Phone number shown in both international format (+66 ...) and Thai-display format
  - Address in Thai on top line; English transliteration secondary
  - PDF has correct font embedding (no system-fallback substitution)
  - Generated PDF passes copy-paste extraction (Thai text round-trips, not flattened to images)
  - Date format: YYMMDD if dated; Buddhist Era (พ.ศ.) acknowledged as alternative if culturally relevant
  - Per BRIEF §3 multilingual: Thai typography support documented

forbids:
  - weasyprint as the rendering engine (corrupts Thai layer per MEMORY #6)
  - Thai text rendered as raster/image (defeats accessibility + copy-paste)
  - System-font fallback for Thai (must explicitly load the Thai face)
  - Mixed-script line where Thai and Latin baselines diverge visibly
  - Thai numerals where Arabic numerals are clearer for the audience (or vice versa) — pick one, justify
  - Unjustified motion / animation (PDF is static; motion is N/A but font-loading flicker on the source HTML must not produce a flash)
  - Right-to-left text direction (Thai is LTR; this fixture is not testing RTL — that would be a separate Vietnamese / Croatian-via-Latin fixture variant)
---

# Fixture: Multilingual PDF (Thai)

Tests MULTILINGUAL pattern + the documented operator-system constraint that Playwright is the only PDF engine that renders Thai correctly. This fixture is the only one with a hard implementation-pipeline assertion.

## Why this fixture

The operator lives in Chiang Mai; multilingual rendering is not aspirational, it is daily. A failure here means actual outputs (visa documents, service contracts, supplier instructions) are unusable.

## Reference output

When tier-3 MULTILINGUAL.md is authored, generate a real reference card and save to `examples/document-pdf-thai-specimen.pdf` with sibling `.review.md` documenting font choice + render pipeline + verification steps.

## Pass criteria

Strict: PDF opens in Preview, Acrobat, and a web browser without rendering errors; Thai text round-trips through copy-paste; font embedding verified via `pdffonts` CLI; render pipeline is Playwright (verified by inspecting generation logs).
