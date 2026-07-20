#!/usr/bin/env bash
# Runs once when a Claude Code session starts in this project.
# Surfaces quick orientation info so Claude doesn't have to rediscover it every session.
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/../.." || exit 0

if [ -d .git ]; then
  branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null || echo "unknown")
  dirty=$(git status --porcelain 2>/dev/null | wc -l | tr -d ' ')
  echo "[SessionStart] branch=$branch uncommitted_files=$dirty"
else
  echo "[SessionStart] not a git repository yet"
fi
