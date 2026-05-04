#!/usr/bin/env bash
# diff-tokens.sh
# Compare 2-TOKENS/*.yaml against SEED/tokens-reference.css (and typography-reference.css).
# Surfaces drift between the design-system spec and the running website CSS.
#
# Status: scaffold. Logic activates once 2-TOKENS/colour.yaml is authored.
#
# Usage:
#   ./scripts/diff-tokens.sh           # all token kinds
#   ./scripts/diff-tokens.sh colour    # one kind only

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
TOKENS_DIR="$REPO_ROOT/2-TOKENS"
SEED_DIR="$REPO_ROOT/SEED"

KIND="${1:-all}"

check_colour() {
  local spec="$TOKENS_DIR/colour.yaml"
  local css="$SEED_DIR/tokens-reference.css"

  if grep -q '^# status: EMPTY' "$spec" 2>/dev/null; then
    echo "[colour] SKIP — spec is scaffold-only ($spec)"
    return 0
  fi

  if [ ! -f "$css" ]; then
    echo "[colour] FAIL — reference CSS missing ($css)" >&2
    return 1
  fi

  echo "[colour] TODO — diff logic not yet implemented; spec just became authored"
  # Future: extract colour custom properties from $css; extract semantic tokens from $spec;
  # report tokens in spec missing from CSS, and tokens in CSS not specified.
  return 0
}

check_typography() {
  echo "[typography] TODO — implement when 2-TOKENS/typography.yaml authored"
  return 0
}

case "$KIND" in
  all)
    check_colour
    check_typography
    ;;
  colour)
    check_colour
    ;;
  typography)
    check_typography
    ;;
  *)
    echo "Unknown kind: $KIND" >&2
    echo "Usage: $0 [colour|typography|all]" >&2
    exit 2
    ;;
esac
