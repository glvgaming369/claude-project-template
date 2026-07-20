#!/usr/bin/env bash
# Runs before conversation history is compacted. Use this to persist anything
# that would otherwise be lost when older context is summarized away.
# Template default: no-op.
cat >/dev/null
exit 0
