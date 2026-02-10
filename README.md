# Skills

Claude Code skills — custom slash commands that extend what Claude Code can do in your projects.

## Available Skills

| Skill | Description | Install |
|-------|-------------|---------|
| [`/handoff`](skills/handoff.md) | Package context for AI agents, your future self, or coworkers | [Install](#handoff) |

## Install

Each skill is a single markdown file. Drop it into your project's `.claude/commands/` directory.

### /handoff

```bash
mkdir -p .claude/commands && curl -o .claude/commands/handoff.md \
  https://raw.githubusercontent.com/TheCraigHewitt/skills/main/skills/handoff.md
```

Packages shaped context — plans, decisions, project state — into structured handoff documents. Auto-detects plan files from `.claude/plans/`, reads git state and CLAUDE.md, and generates audience-optimized output for AI agents, yourself later, or coworkers.

**Modes:** `/handoff` (create) | `/handoff list` | `/handoff update [slug]` | `/handoff view [slug]`

See [examples](examples/) for sample output: [AI agent handoff](examples/handoff-ai-agent.md) | [Self/later handoff](examples/handoff-self-later.md)

## How Skills Work

Skills are Claude Code's [custom slash commands](https://docs.anthropic.com/en/docs/claude-code/tutorials#create-custom-slash-commands). A `.md` file in `.claude/commands/` becomes a `/command` you can run in any Claude Code session. The markdown defines the skill's behavior — what context to gather, what questions to ask, and what to generate.

Skills are portable. They work in any repo. Drop the file in, use the command.

## Requirements

- [Claude Code](https://docs.anthropic.com/en/docs/claude-code) CLI

## License

MIT
