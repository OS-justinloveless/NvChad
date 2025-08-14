#!/usr/bin/env bash
set -euo pipefail

if [[ "${OSTYPE}" != "darwin"* ]]; then
  echo "This script is intended for macOS." >&2
  exit 1
fi

# Ensure Homebrew
if ! command -v brew >/dev/null 2>&1; then
  echo "Homebrew not found. Install from https://brew.sh/ then re-run this script." >&2
  exit 1
fi

# Ensure PATH has Homebrew prefix for Apple Silicon
if [[ -d "/opt/homebrew/bin" ]] && ! echo ":$PATH:" | grep -q ":/opt/homebrew/bin:"; then
  echo "Note: /opt/homebrew/bin not in PATH. Add 'eval \"$(/opt/homebrew/bin/brew shellenv)\"' to your shell profile."
fi

echo "Installing system prerequisites with Homebrew..."
brew install \
  node \
  python \
  go \
  ruby \
  shellcheck \
  shfmt \
  hadolint || true

echo
echo "Done. Next:"
echo "- Open Neovim (nvim)"
echo "- Run :Lazy sync"
echo "- Run :MasonToolsInstall and wait for all tools to complete"
echo "- If something fails, check :MasonLog"


