---
name: ralph
description: Autonomous PRD implementation loop — turns GitHub issues into shipped code using TDD, code review gates, and Docker sandbox isolation. The execution engine for the grill-me → write-a-prd → prd-to-issues → ralph pipeline.
---

# RALPH — Autonomous PRD Implementation

RALPH (Repeated Autonomous Loop for PRD Handling) implements a PRD stored as GitHub issues — autonomously, with TDD, and a code review gate after every iteration.

## The Pipeline

This skill is the execution engine for a 4-step coding workflow:

| Step | Command | What It Does |
|------|---------|-------------|
| 1 | `/grill-me` | Stress-test your idea with relentless questions before building |
| 2 | `/write-a-prd` | Turn the idea into an engineering spec (PRD) as a GitHub issue |
| 3 | `/prd-to-issues` | Break the PRD into vertical-slice sub-issues with dependencies |
| 4 | `/ralph` | Implement each sub-issue autonomously with TDD + code review |

Steps 1-3 use skills from [Matt Pocock](https://github.com/mattpocock/skills). Install them:

```bash
npx skills@latest add mattpocock/skills -s grill-me
npx skills@latest add mattpocock/skills -s write-a-prd
npx skills@latest add mattpocock/skills -s prd-to-issues
```

## Setup

After installing this skill, copy the RALPH scripts to your project root:

```bash
mkdir -p ralph
cp .agents/skills/ralph/afk-ralph.sh ralph/
cp .agents/skills/ralph/ralph-once.sh ralph/
cp .agents/skills/ralph/prompt.md ralph/
cp .agents/skills/ralph/review-prompt.md ralph/
chmod +x ralph/*.sh
```

### Requirements

- [Claude Code](https://claude.ai/code) CLI
- [GitHub CLI](https://cli.github.com/) (`gh`) — authenticated
- [Docker Desktop](https://www.docker.com/products/docker-desktop/) with Sandbox support (AFK mode only)
- Git

## Usage

### `/ralph <issue-number>` — Human-in-the-loop (start here)

```bash
./ralph/ralph-once.sh 42
```

Implements one sub-issue from PRD #42, then stops for your review. Run again for the next one. Recommended for your first few iterations.

### `/ralph <issue-number> afk [max-iterations]` — Autonomous

```bash
./ralph/afk-ralph.sh 42 20
```

Runs up to 20 iterations inside a Docker sandbox. Each iteration: implement one sub-issue, run tests, commit, code review, close issue. When all sub-issues are done, pushes the branch and opens a PR.

## Instructions

When the user invokes this skill:

1. Parse arguments: first is the PRD issue number (required), second is mode (`once` or `afk`, default `once`), third is max iterations for afk mode (default 20)
2. If no issue number is provided, ask for it
3. Verify `ralph/` directory exists at the project root. If not, guide the user through setup (copy scripts from `.agents/skills/ralph/`)
4. For `once` mode (default):
   ```bash
   ./ralph/ralph-once.sh <issue-number>
   ```
5. For `afk` mode:
   ```bash
   ./ralph/afk-ralph.sh <issue-number> <max-iterations>
   ```
6. Report the result when complete

## How It Works

1. Scripts fetch the PRD issue and all sub-issues via `gh` CLI
2. Sub-issues are found by searching for `Parent PRD #<number>` in their body
3. Each iteration: Claude picks one open, unblocked sub-issue and implements it using TDD
4. Tests must pass before every commit (auto-detected from project config)
5. After committing, a code review gate checks for bugs, logic errors, security issues, and architecture violations
6. Claude closes the sub-issue on GitHub with a comment linking the commit
7. Loop continues until all sub-issues are closed

## Sub-Issue Format

Sub-issues created by `/prd-to-issues` follow this format:

```markdown
## Parent PRD
#42

## What to build
Description of the work...

## Acceptance criteria
- [ ] Criterion 1
- [ ] Criterion 2

## Blocked by
- #43
```

## Tips

- **Start with `/ralph` (once mode).** Validate the first iteration before going AFK.
- **Keep sub-issues small.** One logical change per sub-issue prevents context rot.
- **Use `/grill-me` first.** The more you think before coding, the better RALPH performs.
- **Use blocked-by.** Declare dependencies so RALPH works in the right order.
