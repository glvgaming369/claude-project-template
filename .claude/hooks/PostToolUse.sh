#!/usr/bin/env bash
# Runs after each tool call. Reads the hook event JSON from stdin.
# Template default: no-op. Wire up a formatter/linter for this project's stack here, e.g.:
#   FILE=$(node -e "console.log(JSON.parse(require('fs').readFileSync(0,'utf8')).tool_input?.file_path||'')" < /dev/stdin)
#   [ -n "$FILE" ] && npx prettier --write "$FILE"
cat >/dev/null
exit 0
