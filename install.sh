#!/usr/bin/env bash
# AI Agent Pro Kit - Linux / macOS Installer
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET="${1:-all}"

echo "=========================================================="
echo "       AI Agent Pro Kit: 1-Click Installer (Unix)         "
echo "=========================================================="

SKILLS_DIR="$SCRIPT_DIR/skills"

# 1. Antigravity Setup
if [ "$TARGET" = "antigravity" ] || [ "$TARGET" = "all" ]; then
    AG_SKILLS="$HOME/.gemini/config/skills"
    mkdir -p "$AG_SKILLS"
    echo "[*] Installing skills into Antigravity ($AG_SKILLS)..."
    cp -R "$SKILLS_DIR"/* "$AG_SKILLS/"
    echo "    [OK] Antigravity skills installed."
fi

# 2. Cursor Setup
if [ "$TARGET" = "cursor" ] || [ "$TARGET" = "all" ]; then
    mkdir -p ".cursor/rules"
    echo "[*] Installing Cursor rule into current project (.cursor/rules)..."
    cp "$SCRIPT_DIR/.cursor/rules/agent-superkit.mdc" ".cursor/rules/"
    echo "    [OK] Cursor rules installed."
fi

# 3. Windsurf Setup
if [ "$TARGET" = "windsurf" ] || [ "$TARGET" = "all" ]; then
    echo "[*] Installing Windsurf rules (.windsurfrules)..."
    cp "$SCRIPT_DIR/.windsurfrules" .
    echo "    [OK] Windsurf rules installed."
fi

# 4. Claude Code Setup
if [ "$TARGET" = "claude" ] || [ "$TARGET" = "all" ]; then
    echo "[*] Installing Claude Code guide (CLAUDE.md)..."
    cp "$SCRIPT_DIR/CLAUDE.md" .
    echo "    [OK] Claude Code rules installed."
fi

echo ""
echo "Installation completed successfully!"
echo "To initialize memory, copy 'templates/memory' to your workspace or home directory."
echo "=========================================================="
