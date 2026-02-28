#!/bin/bash
set -euo pipefail

# Only run in remote (web) environments
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# Activate the interview coach by copying SKILL.md -> CLAUDE.md
if [ ! -f "$CLAUDE_PROJECT_DIR/CLAUDE.md" ]; then
  cp "$CLAUDE_PROJECT_DIR/SKILL.md" "$CLAUDE_PROJECT_DIR/CLAUDE.md"
  echo "Interview coach activated: SKILL.md -> CLAUDE.md"
fi
