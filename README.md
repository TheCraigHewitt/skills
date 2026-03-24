# Skills

AI skills for founders — install them in Claude Code, use them in Claude Projects, or drop them into any AI agent that reads markdown.

Each skill is a standalone prompt that makes your AI assistant dramatically better at a specific task. No API keys, no setup, no dependencies.

## CEO Skills

Skills for the founder running the business — decisions, meetings, content, sales prep, and weekly operating rhythm.

**Install all CEO skills:**

```bash
npx skills@latest add TheCraigHewitt/skills/ceo
```

**Or install individually:**

| Skill | What it does | Install |
|-------|-------------|---------|
| **[strategic-sparring](ceo/strategic-sparring/SKILL.md)** | Pressure-test decisions with an AI sparring partner that challenges your assumptions, models scenarios, and finds blind spots | `npx skills@latest add TheCraigHewitt/skills/ceo -s strategic-sparring` |
| **[meeting-prep](ceo/meeting-prep/SKILL.md)** | Walk into any meeting with a sharp briefing and walk out with action items + follow-up email sent in 10 minutes | `npx skills@latest add TheCraigHewitt/skills/ceo -s meeting-prep` |
| **[content-repurpose](ceo/content-repurpose/SKILL.md)** | Turn one video, podcast, or post into a week of content — newsletter, social posts, short-form scripts, threads | `npx skills@latest add TheCraigHewitt/skills/ceo -s content-repurpose` |
| **[prospect-research](ceo/prospect-research/SKILL.md)** | Generate a pre-call intelligence brief so you walk into sales conversations with context, not cold air | `npx skills@latest add TheCraigHewitt/skills/ceo -s prospect-research` |
| **[weekly-review](ceo/weekly-review/SKILL.md)** | 15-minute structured weekly check-in — scorecard, wins, lessons, priority check, next week's focus | `npx skills@latest add TheCraigHewitt/skills/ceo -s weekly-review` |

All CEO skills check for a `BUSINESS_CONTEXT.md` file in your project. On first run, the skill walks you through creating one. After that, every skill uses it automatically — your AI gets smarter about your business over time.

See the [business context template](ceo/BUSINESS_CONTEXT_TEMPLATE.md) to set one up in advance.

## General Skills

| Skill | What it does | Install |
|-------|-------------|---------|
| **[handoff](skills/handoff.md)** | Package context for AI agents, your future self, or coworkers | `npx skills@latest add TheCraigHewitt/skills -s handoff` |

## Sales Skills (21 skills)

A complete B2B sales toolkit — discovery calls, cold email, proposals, forecasting, and more.

**See the full collection:** [TheCraigHewitt/sales-skills](https://github.com/TheCraigHewitt/sales-skills)

```bash
npx skills@latest add TheCraigHewitt/sales-skills
```

## Coming Soon

- **YouTube Skills** — ideation, scripting, thumbnail strategy, analytics review
- More categories as they're built

---

## How to Use

### Claude Code / Cowork

Install with `npx`:

```bash
npx skills@latest add TheCraigHewitt/skills/ceo
```

Skills appear as slash commands — type `/strategic-sparring`, `/meeting-prep`, etc.

### Claude Projects (Web)

1. Open a skill's SKILL.md file
2. Copy the content
3. Paste it into your Project's custom instructions
4. The skill is now available in every conversation in that project

### Codex / Other Agents

Clone the repo into your project:

```bash
git clone https://github.com/TheCraigHewitt/skills.git .skills
```

Or grab individual files — each SKILL.md is self-contained.

### Manual Install (any agent)

```bash
mkdir -p .claude/commands && curl -o .claude/commands/strategic-sparring.md \
  https://raw.githubusercontent.com/TheCraigHewitt/skills/main/ceo/strategic-sparring/SKILL.md
```

## How Skills Work

Skills are markdown files that define how an AI assistant should behave for a specific task. They include the persona, workflow, questions to ask, output format, and rules. Drop a skill file where your AI agent reads instructions, and it just works.

No framework. No runtime. No dependencies. Just a well-written prompt.

## License

MIT
