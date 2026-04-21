#!/usr/bin/env bash
set -euo pipefail

# ─── Detect repo root (works from anywhere) ────────────────────────
REPO_DIR="$(cd "$(dirname "$0")" && pwd)"

# ─── Flags ─────────────────────────────────────────────────────────
MINIMAL=0
while [[ $# -gt 0 ]]; do
  case $1 in
    --minimal) MINIMAL=1 ;;
    --help|-h) echo "Usage: bootstrap.sh [--minimal]"; exit 0 ;;
    *) echo "Unknown flag: $1"; exit 1 ;;
  esac; shift
done

# ─── Run each step script in order ────────────────────────────────
for step in "$REPO_DIR"/scripts/[0-9][0-9]-*.sh; do
  STEP_NAME=$(basename "$step")
  echo "▶︎ $STEP_NAME"
  MINIMAL="$MINIMAL" bash "$step"
done

# ── Dotfile symlinks ──────────────────────────────────────────────
for dotfile in .aliases .zshrc; do
  ln -sf "${REPO_DIR}/${dotfile}" "${HOME}/${dotfile}"
  echo "• ${dotfile} linked."
done

echo "✅  All done! Open a new terminal or run 'exec \$SHELL -l'."

