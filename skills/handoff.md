# Handoff

Package shaped context — plans, decisions, project state — into a structured document for handoff to another AI agent, your future self, or a coworker.

## Input

**Mode:** $ARGUMENTS

Parse the first word to determine mode:
- **"list"** — Show all existing handoffs
- **"update [slug]"** — Append new context to an existing handoff
- **"view [slug]"** — Read and summarize an existing handoff
- **Anything else (or empty)** — Create a new handoff (remaining args = description)

---

## Before Starting (Auto-Gather)

Silently gather this context before asking any questions:

1. **Plan files** — Read all `.claude/plans/*.md` files. These are the primary context source.
2. **Project instructions** — Read `CLAUDE.md` or `claude.md` in the repo root (if it exists).
3. **Git state** — Run `git log --oneline -20`, `git status`, and `git diff --stat`.
4. **Directory structure** — Run `ls` at the repo root.
5. **Existing handoffs** — Read the list of files in `.handoffs/` (if the directory exists).

Do NOT display or summarize what you gathered. Just hold it as context.

---

## Mode: Create (Default)

### Step 1: Determine context source

- If plan file(s) were found in `.claude/plans/`, use them as primary context. Tell the user: "I found a plan in `.claude/plans/` — I'll use that as the basis for this handoff."
- If NO plan files found, ask: "I don't see an active plan file. Can you describe the project state and what needs to happen next?"

### Step 2: Ask focused questions

Ask these two questions (together, not sequentially):

1. **"Who is this handoff for?"**
   - AI agent (another Claude Code session, Janet, OpenClaw, etc.)
   - Myself later (picking this up tomorrow/next week)
   - A coworker (human who needs context)

2. **"Anything to add beyond what's in the plan?"** — gotchas, failed approaches, environment setup notes, constraints for the receiving agent, things that aren't in the plan but matter.

If the user provided a description in the arguments (e.g., `/handoff auth system migration`), use that as the handoff title/topic. Still ask the two questions above.

### Step 3: Generate the handoff

Use the appropriate template based on audience. Generate a slug from the description or plan title (2-4 words, lowercase, hyphenated).

**Save to:** `.handoffs/YYYY-MM-DD-[slug].md`

Create the `.handoffs/` directory if it doesn't exist.

After saving, confirm the file path and show a brief summary of what was captured.

---

## Template: AI Agent

Use when the audience is another AI agent or Claude Code session. Optimize for an agent to pick up and start working immediately with zero additional context needed.

```markdown
# Handoff: [Title]

**Created:** YYYY-MM-DD
**Author:** [user or "Claude Code session"]
**For:** AI Agent
**Status:** Ready to execute

---

## Summary

[2-3 sentences: what this project/task is, current state, what needs to happen next. An agent reading only this section should understand the mission.]

## Project Context

[What the project is. Tech stack. Architecture notes. Repo structure highlights. Only what's needed to orient — not a full tour.]

## The Plan

[The shaped plan from .claude/plans/ — include the full plan content here. This is the core of the handoff. If no plan file existed, include whatever plan/approach was described by the user.]

## Key Files

| File | Why It Matters |
|------|---------------|
| [path] | [brief reason] |

[Only files that are directly relevant. Not every file in the repo.]

## Current State

**Done:**
- [Completed items]

**In Progress:**
- [Partially done items with notes on where they stand]

**Not Started:**
- [Items that haven't been touched]

## Decisions Made

[Decisions that were made during planning/implementation. Include the reasoning so the agent doesn't re-litigate them.]

- **[Decision]** — [Why. What was considered and rejected.]

## Important Context

[Gotchas, failed approaches, environment notes, things that aren't obvious from the code.]

- [Item]

## Next Steps

[Priority-ordered. Each step should be specific enough for an agent to execute without guessing.]

1. **[Step]** — [Acceptance criteria or definition of done]
2. **[Step]** — [Acceptance criteria or definition of done]

## Constraints

[Rules the receiving agent must follow. Files not to touch. Patterns to maintain. Performance requirements. Security considerations.]

- [Constraint]
```

---

## Template: Self/Later

Use when the user is creating a handoff for themselves to pick up later. Optimize for fast context recovery — "where was I and what was I thinking?"

```markdown
# Handoff: [Title]

**Created:** YYYY-MM-DD
**Status:** Paused — pick up from here

---

## Where I Left Off

[Specific breadcrumbs. "I was in the middle of..." / "The last thing I did was..." / "I stopped because..."]

## The Plan

[The shaped plan. Full content from .claude/plans/ or user description.]

## What's Working

- [Verified/done items — things that are solid and don't need revisiting]

## What's Not Working Yet

- [Bugs, failing tests, half-done implementations. Be specific about symptoms.]

## My Current Thinking

[The approach being taken. Hypotheses. What I was about to try. Mental model of the problem.]

## Decisions I've Made

[So I don't re-litigate them next time.]

- **[Decision]** — [Why]

## Things I Tried That Didn't Work

[Save future-me the time of going down these paths again.]

- **[Approach]** — [Why it didn't work]

## Next Time I Pick This Up

[Ordered list of what to do first when resuming.]

1. [First thing]
2. [Second thing]

## Open Questions

[Unresolved items. Things I need to figure out. Unknowns.]

- [Question]
```

---

## Template: Coworker

Use when the audience is a human coworker. Optimize for readability — assume they have no context on this work.

```markdown
# Handoff: [Title]

**Created:** YYYY-MM-DD
**Author:** [name]
**Status:** [Handing off / Pausing / FYI]

---

## TL;DR

[3-4 sentences max. What is this, what state is it in, what needs to happen.]

## Background

[Why this work exists. Business context. What problem it solves.]

## The Plan

[What's been planned. High-level approach.]

## What's Done

- [Completed items]

## What's Left

- [Remaining items with rough effort estimates if useful]

## Key Decisions

[Decisions made and why — so they aren't revisited without reason.]

- **[Decision]** — [Rationale]

## Things to Watch Out For

[Gotchas, fragile areas, known issues, technical debt.]

- [Item]

## Where to Get Help

[Who to ask. Relevant docs. Slack channels. Related PRs.]

- [Resource]
```

---

## Mode: List

Read all files in `.handoffs/` and display them as a table:

```
| Date | Slug | For | Status | Summary |
```

For each file, read just the frontmatter (first ~10 lines) to extract date, audience, and status. Show the first sentence of the Summary section.

If no `.handoffs/` directory or no files exist, say: "No handoffs found in this repo. Run `/handoff` to create one."

---

## Mode: Update

**Parse the slug from arguments** (everything after "update").

Find the matching file in `.handoffs/`. Match on slug (the part after the date). If no exact match, list available handoffs and ask which one.

**Ask:**
1. What's changed since the last handoff?
2. Any new decisions, blockers, or completed items?
3. Should the status change?

**Append to the file** — add an update section at the bottom. Never overwrite existing content.

```markdown

---

## Update — YYYY-MM-DD

[New context, decisions, progress, blockers. Written in the same style as the original template.]
```

After saving, confirm what was added.

---

## Mode: View

**Parse the slug from arguments** (everything after "view").

Find the matching file in `.handoffs/`. If no exact match, list available handoffs and ask which one.

Read the full file and present a conversational summary:
- What this handoff is about
- Who it's for
- Current status
- Key next steps
- Any updates that have been appended

Keep it brief — the user can read the full file if they want details.

---

## After Delivering

For **create** mode, offer to:
- Create another handoff for a different audience (e.g., "Want an AI agent version too?")
- Review and adjust the handoff before sharing

For **update** mode, offer to:
- Continue updating
- View the full handoff

For **list** mode, offer to:
- View a specific handoff
- Create a new one
