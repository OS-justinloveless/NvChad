#!/usr/bin/env bash
set -euo pipefail

REPO_URL="git@github.com:OS-justinloveless/NvChad.git"
TARGET_DIR="${HOME}/.config/nvim"
BRANCH="v2.5"

if ! command -v git >/dev/null 2>&1; then
  echo "Error: git is required." >&2
  exit 1
fi

mkdir -p "${HOME}/.config"

if [ -d "${TARGET_DIR}" ]; then
  echo "Existing nvim config detected at ${TARGET_DIR}. Backing up to ${TARGET_DIR}.bak"
  ts=$(date +%Y%m%d-%H%M%S)
  mv "${TARGET_DIR}" "${TARGET_DIR}.${ts}.bak"
fi

echo "Cloning ${REPO_URL} into ${TARGET_DIR} (branch ${BRANCH})..."
GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=no" git clone --branch "${BRANCH}" --depth 1 "${REPO_URL}" "${TARGET_DIR}"

# Bootstrap plugins headlessly
if ! command -v nvim >/dev/null 2>&1; then
  echo "Warning: neovim not found in PATH. Please install Neovim >= 0.11 and run nvim once."
  exit 0
fi

# Headless: install plugins via lazy, then install mason tools
nvim --headless \
  "+lua require('lazy').sync()" \
  "+qa"

# Install Mason tools (requires the mason-tool-installer plugin)
# Run twice to ensure mason registry populated on first run
nvim --headless \
  "+Lazy! sync" \
  "+lua require('mason-tool-installer').run_on_start()" \
  "+MasonToolsInstall" \
  "+sleep 2" \
  "+qa" || true

# Final message
cat <<EOF

Installed custom NvChad config to: ${TARGET_DIR}
- Open Neovim once (nvim) to finish setup
- Optional: run :Mason to verify tools
- For Gemini set GOOGLE_API_KEY; for Copilot run :Copilot auth

EOF


