---
description: Run project checks, commit, and push the current branch — the final step before opening a PR.
---

# Ship Command

`/ship [commit message]`

Runs this project's pre-ship checklist, then commits and pushes. Stops at the first failing step — never skips a check to force a push through.

## Steps

1. **Status check** — `git status` to see what's staged/unstaged/untracked. Confirm nothing unexpected (stray debug files, secrets) is about to be committed.
2. **Lint/typecheck** — run the project's lint and typecheck commands (see `CLAUDE.md` → "Lệnh lint/typecheck"). Fix or report failures; do not proceed on a red check.
3. **Tests** — run the project's test command (see `CLAUDE.md` → "Lệnh test dự án"). Same rule: stop on failure.
4. **Build** — run the project's build command if one exists, to catch anything tests don't cover.
5. **Review** — run `/code-review` (or the `code-reviewer` agent) against the diff. Address CRITICAL/HIGH findings before continuing.
6. **Commit** — stage the relevant files by name (never `git add -A` blindly) and commit with a message describing *why*, following the conventional-commit types in `.claude/rules/model_routing.md`'s sibling git-workflow conventions if this project has one.
7. **Push** — push the current branch with `-u` if it has no upstream yet.

If any step is not yet configured for this project (no test command, no CI), say so explicitly instead of silently skipping it.
