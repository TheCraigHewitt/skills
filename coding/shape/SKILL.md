---
name: shape
description: Use when you have a rough product idea and want a complete PRD without sitting through an interactive grilling. Claude walks the full decision tree (edge cases, modules, schema, testing, security), self-answers with software-engineering best practices, streams the Q&A live so you can override, and writes the PRD locally with an option to push as a GitHub issue.
---

# Shape — Auto-Grill to PRD

Take a rough product idea and turn it into a complete PRD in one shot. No interactive grilling — Claude walks the decision tree itself, answers each question with software-engineering best practices, streams the Q&A live so you can spot bad assumptions, and writes the PRD.

Use `/shape` when you trust Claude's judgment and want speed. Use `/grill-me` + `/write-a-prd` when you want hands-on control over every decision.

## Pipeline Position

| Step | Command | What It Does |
|------|---------|--------------|
| 1a | `/grill-me` + `/write-a-prd` | Manual path — interactive interview, then PRD |
| 1b | **`/shape`** | **Fast path — auto-grill + PRD in one shot** |
| 2 | `/prd-to-issues` | Break the PRD into vertical-slice sub-issues |
| 3 | `/ralph` | Implement each sub-issue autonomously with TDD + code review |

`shape` produces the same PRD format as `write-a-prd`, so `/prd-to-issues` and `/ralph` consume its output without changes.

## Instructions

When the user invokes this skill:

### 1. Capture the idea

If the user passed an idea as an argument, use it. Otherwise ask once:

> What do you want to build? (one paragraph is fine)

Then proceed without further interactive questions until step 8.

### 2. Explore the codebase

Before answering anything, ground your decisions in reality:

- Read `README.md`, `CLAUDE.md`, and any architecture docs
- Identify existing modules, conventions, test patterns, and prior art the feature should match
- Verify any factual assertions in the user's idea — don't trust them, check
- Note the language, framework, test runner, and directory layout

If there is no codebase (empty directory or greenfield), skip to step 3 and record this in the PRD's Further Notes.

### 3. Walk the decision tree

For each branch below, generate the questions a thorough engineer would ask, then answer each one yourself. **Do not skip a branch even if it feels obvious — that is the entire point of this skill.**

- **Actors & user stories** — who uses this, what they want, what success looks like
- **Happy-path flow** — primary interaction step by step
- **Edge cases** — empty inputs, large inputs, concurrent access, partial failures, network errors, permission denied, missing data, unicode/encoding, time zones
- **Data model & schema** — entities, relationships, indexes, migrations
- **Module boundaries** — deep modules, public interfaces, what stays internal
- **API contracts** — request/response shapes, error codes, idempotency, versioning
- **Testing strategy** — what to test, what to mock (only at boundaries), prior art in the repo
- **Security** — authn/authz, input validation, secrets, rate limiting
- **Observability** — what to log, what to surface as metrics
- **Out of scope** — explicit non-goals to prevent scope creep
- **Dependencies & blockers** — what must exist first

### 4. Best-practice defaults

When self-answering, prefer:

- **Boring over clever** — simple, well-understood patterns
- **Deep modules** (Ousterhout) — wide functionality behind a simple, stable interface
- **Match the codebase** over external standards — project conventions win
- **TDD-friendly design** — testable through public interfaces, not internals
- **Validate at system boundaries** — trust internal callers, fail loudly at the edge
- **YAGNI** — no speculative abstractions, no features the user didn't ask for
- **Parameterized queries**, never string concatenation
- **Rate limit auth endpoints**
- **Never log secrets, tokens, or PII**
- **Mock only at system boundaries** (external APIs, DBs, time, randomness, filesystem) — never mock internal collaborators

**Codebase facts always beat generic best practices.** If the project already does X, the answer is X.

### 5. Stream the Q&A live

For every decision, emit a block in this exact format as you make the call — do not batch:

```
Q: <the question>
A: <the chosen answer>
Why: <one sentence — cite a codebase reference if relevant>
```

This is the user's chance to spot a bad assumption early.

### 6. Write the PRD

Use this template exactly. It matches `/write-a-prd`, so the rest of the pipeline accepts it unchanged.

```markdown
## Problem Statement

The problem the user is facing, from the user's perspective.

## Solution

The solution, from the user's perspective.

## User Stories

A long, numbered list:
1. As a <actor>, I want a <feature>, so that <benefit>

Cover every aspect of the feature surfaced in your decision tree.

## Implementation Decisions

- Modules to build or modify
- Public interfaces of those modules
- Architectural decisions
- Schema changes
- API contracts
- Specific interactions

Do NOT include file paths or code snippets — they go stale fast.

## Testing Decisions

- What makes a good test here (test external behavior, never implementation details)
- Which modules will be tested
- Prior art for the tests (similar patterns already in the codebase)

## Out of Scope

Explicit non-goals.

## Further Notes

Anything else worth recording.

## Decisions Log

Every Q/A/Why block from step 5, in the order they were decided.
```

### 7. Save the PRD locally

- Generate a kebab-case slug from the idea (e.g. "rate-limited /healthz endpoint" → `rate-limited-healthz-endpoint`)
- Create `./prds/` if it doesn't exist
- Write the PRD to `./prds/<slug>.md`
- Print the absolute path

### 8. Offer to push to GitHub

After saving, ask the user once:

> Push this as a GitHub issue? [y/N]

On `y`, run:

```bash
gh issue create --title "<slug>" --body-file ./prds/<slug>.md
```

Print the issue URL.

On `n` or no answer, stop. The local file is enough — the user can push later.

## Rules

- **Don't ask the user questions during the decision tree.** The whole point is auto-answering. The only interactive moments are: capturing the idea (if not given) and the GitHub push prompt at the end.
- **Don't skip branches.** Even trivial-feeling branches get walked — completeness is the value.
- **Codebase facts beat generic best practices.** If the project already does X, X is the answer.
- **No speculative scope.** If the user didn't ask for it and the codebase doesn't require it, it goes in Out of Scope.
- **The PRD template is fixed.** It must match `/write-a-prd` exactly so `/prd-to-issues` and `/ralph` keep working.
