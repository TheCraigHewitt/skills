# Skills

AI skills for founders, sales teams, and creators. Install them in Claude Code, use them in Claude Projects, or drop them into any AI agent that reads markdown.

Each skill is a standalone prompt that makes your AI assistant dramatically better at a specific task. No API keys, no setup, no dependencies.

Works with [Claude Code](https://claude.ai/code), [Cursor](https://cursor.com), [Windsurf](https://windsurf.ai), [Codex](https://openai.com/codex), and any tool that supports the [Agent Skills spec](https://agentskills.io).

---

## Install

**Everything:**

```bash
npx skills@latest add TheCraigHewitt/skills --full-depth
```

**By category:**

```bash
npx skills@latest add TheCraigHewitt/skills/ceo       # 5 CEO skills
npx skills@latest add TheCraigHewitt/skills/sales      # 21 sales skills
npx skills@latest add TheCraigHewitt/skills/youtube     # 15 YouTube skills
npx skills@latest add TheCraigHewitt/skills/general     # General-purpose skills
```

**Individual skill:**

```bash
npx skills@latest add TheCraigHewitt/skills/ceo -s strategic-sparring
```

### Other agents (Cursor, Windsurf, Codex)

```bash
git clone https://github.com/TheCraigHewitt/skills.git .agents/skills
```

### Claude Projects (Web)

Copy a SKILL.md file's content into your Project's custom instructions.

---

## CEO Skills (5)

Skills for the founder running the business -- decisions, meetings, content, sales prep, and weekly operating rhythm.

All CEO skills check for a `BUSINESS_CONTEXT.md` file in your project. On first run, the skill walks you through creating one. After that, every skill uses it automatically. See the [template](ceo/BUSINESS_CONTEXT_TEMPLATE.md).

| Skill | What It Does |
|-------|-------------|
| [strategic-sparring](ceo/strategic-sparring/) | Pressure-test decisions with an AI sparring partner that challenges assumptions, models scenarios, and finds blind spots. |
| [meeting-prep](ceo/meeting-prep/) | Walk into any meeting with a sharp briefing and walk out with action items + follow-up email sent in 10 minutes. |
| [content-repurpose](ceo/content-repurpose/) | Turn one video, podcast, or post into a week of content -- newsletter, social posts, short-form scripts, threads. |
| [prospect-research](ceo/prospect-research/) | Generate a pre-call intelligence brief so you walk into sales conversations with context, not cold air. |
| [weekly-review](ceo/weekly-review/) | 15-minute structured weekly check-in -- scorecard, wins, lessons, priority check, next week's focus. |

---

## Sales Skills (21)

Your AI agent already writes code. Now teach it to sell. These 21 skills give your AI agent the same frameworks, instincts, and pushback that experienced sales leaders use.

All sales skills check for a `sales-context.md` file. Run `sales-context` first to set up your ICP, value prop, and proof points -- every other skill reads it automatically.

### Foundation

| Skill | What It Does |
|-------|-------------|
| [sales-context](sales/sales-context/) | Build your sales playbook -- ICP, value prop, sales motion, proof points. Every other skill reads this first. |
| [buyer-persona](sales/buyer-persona/) | Deep buyer personas -- pain points, decision criteria, day-in-the-life, champion vs. blocker profiles. |
| [competitive-intel](sales/competitive-intel/) | Battle cards, positioning against competitors, trap-setting questions, win/loss patterns. |

### Prospecting & Outbound

| Skill | What It Does |
|-------|-------------|
| [cold-email](sales/cold-email/) | Cold emails that get replies. Subject lines, personalization, follow-up sequences. Plain text, under 100 words, one ask. |
| [cold-call](sales/cold-call/) | Cold call scripts -- openers that don't get hung up on, gatekeeper navigation, voicemail that earns callbacks. |
| [linkedin-outreach](sales/linkedin-outreach/) | Connection requests, InMails, DM sequences that don't read like spam. |
| [direct-mail](sales/direct-mail/) | Physical mail that lands on desks, not in trash -- dimensional mailers, handwritten notes, gift sequences. |
| [lead-research](sales/lead-research/) | Account and contact research -- trigger events, org charts, tech stack, intent signals. |
| [outbound-sequence](sales/outbound-sequence/) | Multi-channel sequence design -- cadence, timing, channel mix. Orchestrates the channel skills above. |
| [referral-intro](sales/referral-intro/) | Warm intro requests that make it easy for your connector to say yes. |
| [event-networking](sales/event-networking/) | Conference outreach -- pre-event targeting, booth conversations, post-event follow-up that converts. |

### Deal Execution

| Skill | What It Does |
|-------|-------------|
| [discovery-call](sales/discovery-call/) | Discovery call planning -- SPIN, MEDDIC, Gap Selling frameworks. The questions that surface real pain. |
| [demo-script](sales/demo-script/) | Demo scripts by persona and deal stage -- story arcs that connect features to outcomes, not feature tours. |
| [objection-handling](sales/objection-handling/) | Objection playbooks -- price, timing, competition, status quo. Responses that move deals forward, not just deflect. |

### Deal Close

| Skill | What It Does |
|-------|-------------|
| [proposal-pricing](sales/proposal-pricing/) | Proposals, SOWs, pricing presentations -- packaging, anchoring, ROI justification that makes the business case. |
| [negotiation](sales/negotiation/) | Negotiation prep -- BATNA analysis, concession planning, deal structure, knowing your red lines before you sit down. |

### Deal Intelligence

| Skill | What It Does |
|-------|-------------|
| [call-debrief](sales/call-debrief/) | Post-call analysis -- what actually happened, next steps, risk signals, coaching notes. |
| [win-loss-analysis](sales/win-loss-analysis/) | Pattern recognition across closed deals -- competitive insights, process gaps, what to fix next quarter. |

### Sales Ops

| Skill | What It Does |
|-------|-------------|
| [pipeline-review](sales/pipeline-review/) | Pipeline reviews -- deal scoring, risk flagging, the hard questions reps don't want to answer. |
| [forecast](sales/forecast/) | Sales forecasts -- weighted pipeline, conversion math, commit vs. upside vs. best-case. |
| [sales-comp](sales/sales-comp/) | Comp plan design -- OTE, quotas, accelerators, SPIFs. Model plans before you roll them out. |

---

## YouTube Skills (15)

Your AI agent already writes code. Now teach it to grow a YouTube channel. These 15 skills give your AI agent the same frameworks, instincts, and pushback that experienced creators and strategists use.

All YouTube skills check for a `youtube-context.md` file. Run `youtube-context` first to set up your niche, audience, and content pillars -- every other skill reads it automatically.

### Foundation

| Skill | What It Does |
|-------|-------------|
| [youtube-context](youtube/youtube-context/) | Build your channel playbook -- niche, audience, content pillars, goals, competitive position. Every other skill reads this first. |

### Pre-Production

| Skill | What It Does |
|-------|-------------|
| [channel-strategy](youtube/channel-strategy/) | Niche positioning, content pillar design, competitive differentiation, growth levers. |
| [content-calendar](youtube/content-calendar/) | Batch planning, pillar balance, series/playlist strategy, publishing rhythm that compounds. |
| [idea-generation](youtube/idea-generation/) | Ideation frameworks, idea scoring, validation against audience fit, batch brainstorming. |

### Packaging

| Skill | What It Does |
|-------|-------------|
| [title-craft](youtube/title-craft/) | Title formulas, search vs. browse optimization, A/B variants, mobile-first formatting. |
| [thumbnail-design](youtube/thumbnail-design/) | Thumbnail psychology, composition rules, design briefs, emotion-to-concept mapping. |
| [hook-writing](youtube/hook-writing/) | First 30 seconds that stop the scroll -- hook formulas, multi-channel alignment, retention openers. |

### Production

| Skill | What It Does |
|-------|-------------|
| [script-structure](youtube/script-structure/) | Script frameworks, pacing, story arcs, retention beats, audience retention curve design. |
| [retention-editing](youtube/retention-editing/) | Edit for retention -- pattern interrupts, pacing, mid-roll hooks, re-engagement techniques. |

### Post-Production

| Skill | What It Does |
|-------|-------------|
| [description-seo](youtube/description-seo/) | Descriptions, tags, timestamps, metadata, search discoverability that actually drives views. |
| [end-screen-cta](youtube/end-screen-cta/) | End screens, CTAs, next-video strategy, playlist funneling, subscriber conversion. |

### Analysis

| Skill | What It Does |
|-------|-------------|
| [video-analysis](youtube/video-analysis/) | Post-publish video review -- retention curves, CTR diagnosis, comment analysis, what to repeat. |
| [channel-audit](youtube/channel-audit/) | Full channel health check -- growth blockers, content gaps, strategy misalignment, reset plan. |

### Growth

| Skill | What It Does |
|-------|-------------|
| [audience-research](youtube/audience-research/) | Viewer psychology, comment mining, demographic insights, content-market fit signals. |
| [collab-outreach](youtube/collab-outreach/) | Collaboration strategy, outreach templates, cross-promotion, guest appearance pitches. |

---

## General Skills

| Skill | What It Does |
|-------|-------------|
| [handoff](general/handoff/) | Package context for AI agents, your future self, or coworkers. Modes: create, list, update, view. |

---

## How Skills Work

Skills are markdown files that define how an AI assistant should behave for a specific task. They include the persona, workflow, questions to ask, output format, and rules. Drop a skill file where your AI agent reads instructions, and it just works.

No framework. No runtime. No dependencies. Just a well-written prompt.

---

## About

Built by **[Craig Hewitt](https://founderlevel.co)** -- founder/CEO of [Castos](https://castos.com) ($1.5M ARR podcast hosting), building [FounderLevel](https://founderlevel.co) on YouTube, and coaching founders through AI transformation with [The AI-Ready CEO](https://founderlevel.co).

- [YouTube](https://youtube.com/@founderlevel) -- AI + founder leadership
- [Substack](https://founderlevel.substack.com) -- Weekly newsletter
- [X/Twitter](https://twitter.com/thecraighewitt)

## License

MIT -- see [LICENSE](LICENSE).
