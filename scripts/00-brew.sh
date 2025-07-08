#!/usr/bin/env bash
set -euo pipefail

# Checking if Homebrew exists

if ! command -v brew &>/dev/null; then
  echo "🔍  Installing Homebrew…"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Activate brew for this shell
eval "$("$(brew --prefix)/bin/brew" shellenv)"

brew update

# Install packages from Brewfile
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BREWFILE="$SCRIPT_DIR/Brewfile"

if mas account &>/dev/null; then
  brew bundle --file "$BREWFILE"
else
  echo "ℹ️  Skipping MAS apps (not signed in)."
  HOMEBREW_BUNDLE_MAS_SKIP="*" brew bundle --file "$BREWFILE"
fi

# Make brew’s Bash your default shell (first run only)
# ------------------------------------------------------------------
BREW_BASH="$(brew --prefix)/bin/bash"
if ! grep -q "$BREW_BASH" /etc/shells; then
  echo "$BREW_BASH" | sudo tee -a /etc/shells
  chsh -s "$BREW_BASH"
fi

# House-keeping
brew autoremove
brew cleanup --prune=7d

echo "✅  Done – Homebrew, Brew bundle & shells all set up!"