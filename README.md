# claude-project-template

A starting-point scaffold for new projects using [Claude Code](https://claude.com/claude-code). Clone this into a new project and fill in the `TODO`s — everything else already works.

## Using this template

```bash
git clone https://github.com/glvgaming369/claude-project-template.git my-new-project
cd my-new-project
rm -rf .git && git init
```

Then open `CLAUDE.md` and fill in the three `TODO` sections at the top: build/test/lint commands, directory layout, and any project-specific conventions. That's the only file you strictly need to edit — everything else is optional and already wired up.

## What's in here

| Path | Purpose |
|---|---|
| `CLAUDE.md` | Project instructions for Claude. Leads with the minimal essentials (commands, structure, conventions); everything else is an opt-in "extend when needed" section. |
| `CLAUDE.local.md` | Per-machine overrides — gitignored, never committed. |
| `.claude/rules/api.md` | API conventions placeholder — fill in once the project has an API, delete otherwise. |
| `.claude/rules/model_routing.md` | Optional policy that auto-switches model per phase (Opus plan → Sonnet code → Opus review). Delete if you don't want this behavior. |
| `.claude/agents/*.md` | Project-local agents (`code-reviewer`, `log-analyzer`, `researcher`) for when the global agents don't have enough project context. |
| `.claude/commands/ship.md` | `/ship` — runs lint/test/build/review, then commits and pushes. |
| `.claude/hooks/*.sh` | `SessionStart.sh` (orientation banner), `PostToolUse.sh` (wire up a formatter here), `PreCompact.sh` (persist state before context compaction). All no-ops by default except `SessionStart.sh`. |
| `.claude/output-styles/terse.md` | Optional low-narration output style. |
| `settings.json` | Wires the hooks and status line above; adjust `permissions` per project. |
| `settings.local.json` | Per-machine settings override — gitignored. |
| `.mcp.json` | Empty MCP server config — add project-specific MCP servers here. |
| `statusline` | Status line script showing model name, directory, and git branch. |

## Design principle

Don't pre-scaffold empty files "for completeness." Everything under `.claude/` here is either functional as-is or clearly marked `TODO`/optional. Add new rules, agents, or commands only when a real, recurring need shows up — not in advance.
