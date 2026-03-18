#!/usr/bin/env bash
# ═══════════════════════════════════════════════════════════════════════════════
# Sharingan Installer
# ═══════════════════════════════════════════════════════════════════════════════

set -e

INSTALL_DIR="${HOME}/.local/bin"
SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Installing Sharingan..."
echo ""

# Create install directory if needed
mkdir -p "$INSTALL_DIR"

# Create symlink
ln -sf "${SOURCE_DIR}/sharingan" "${INSTALL_DIR}/sharingan"
chmod +x "${SOURCE_DIR}/sharingan"

echo "✓ Created symlink: ${INSTALL_DIR}/sharingan"
echo ""

# Check if ~/.local/bin is in PATH
if [[ ":$PATH:" == *":${INSTALL_DIR}:"* ]]; then
    echo "✓ ${INSTALL_DIR} is in your PATH"
else
    echo "⚠ ${INSTALL_DIR} is not in your PATH"
    echo "  Add this to your shell config (.bashrc, .zshrc, etc):"
    echo "  export PATH=\"\$HOME/.local/bin:\$PATH\""
fi

echo ""
echo "✓ Installation complete!"
echo "  Run 'sharingan --help' to get started."
