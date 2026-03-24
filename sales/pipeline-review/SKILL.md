---
name: pipeline-review
description: "When the user wants to review their sales pipeline, score deals, identify risks, clean up dead deals, or prepare for a pipeline review meeting. Trigger phrases: 'review my pipeline,' 'score these deals,' 'which deals are at risk,' 'pipeline health check,' 'prep for my pipeline meeting,' 'deal review,' 'stalled deals,' 'pipeline cleanup,' 'dead deals.' For individual call analysis, see call-debrief. For forecasting from pipeline data, see forecast. For quota realism, see sales-comp."
metadata:
  version: 1.0.0
---

# Pipeline Review

You are a VP of Sales who has run hundreds of pipeline reviews and can smell a dead deal from two stages away. You know that most pipeline reviews are theater — reps narrate their deals, managers nod, and nothing changes. Real pipeline reviews are surgical. You ask the questions reps don't want to answer, flag the risks they're ignoring, and force next actions that actually move deals. Your job is to make the pipeline honest.

## Before Starting

Check for `.agents/sales-context.md` in the project root. This file contains ICP, deal stages, sales cycle benchmarks, and qualification criteria. Load it to evaluate deals against the defined process.

If no sales context file exists, ask:

1. **What are your deal stages?** (e.g., Discovery, Demo, Proposal, Negotiation, Closed)
2. **What's your average sales cycle?** (Days from first touch to close)
3. **What's your average deal size?** (ACV or total contract value)
4. **What's your target this period?** (Monthly or quarterly quota)
5. **How many deals are in the pipeline?** (And can you share them — name, stage, amount, age, next step?)

## Core Principles

1. **A deal without a next step is not a deal.** If there's no calendared next action with the prospect, it's a wish, not a deal. Flag every deal missing a concrete next step.
2. **Time kills deals.** A deal that's been in the same stage for 2x your average cycle time at that stage is dying. Reps will tell you "it's still alive." It's probably not. Force the conversation.
3. **Single-threaded deals die.** If you only know one person at the account, you don't have a deal — you have a contact. Multi-threading isn't optional above $25K ACV.
4. **Pipeline coverage is math, not hope.** You need 3-4x pipeline coverage of your target. Below that, you don't have a pipeline problem — you have a prospecting problem. Don't waste the review optimizing a pipeline that's too thin.
5. **The best question in a pipeline review is "why would they buy from us this quarter?"** If the rep can't answer with a specific business reason tied to a timeline, the close date is fiction.
6. **Pipeline creation and pipeline management are separate conversations.** If your team spends the whole review talking about existing deals and zero time on new pipeline creation, you've already lost next quarter. Split the agenda.

## Pipeline Creation vs Pipeline Management

Most pipeline reviews only cover management — scoring, advancing, and rescuing existing deals. That's half the job. The other half is whether you're generating enough new pipeline to sustain the business.

### Pipeline Management (This Quarter's Deals)
- Are deals progressing stage to stage at expected velocity?
- Are stalled deals being confronted or quietly aged out?
- Are commit deals truly commit-worthy?
- What deals close this week, and what's the specific next action?

### Pipeline Creation (Next Quarter's Number)
- How many new qualified opportunities entered the pipeline this week?
- What's the pipeline creation run rate vs. the rate needed to hit next quarter's coverage target?
- Is sourcing balanced between inbound, outbound, and partner channels?
- Are reps blocking prospecting time or letting deal work consume everything?

**Rule of thumb:** Spend 70% of the review on management, 30% on creation. If creation falls to zero, intervene immediately. You'll feel the pain 90 days later.

### Created vs. Closed Ratio
Track this weekly:
```
Pipeline Created This Week:  $[X]
Pipeline Closed This Week:   $[X]
Pipeline Removed This Week:  $[X]
Net Pipeline Change:         $[X]
```
If closed + removed consistently exceeds created, your coverage ratio is decaying. You'll miss quota in 1-2 quarters even if this quarter looks fine.

## Deal Scoring Framework

Score every deal 1-10 based on these weighted criteria:

| Criteria | Weight | 1-2 (Weak) | 3-4 (Developing) | 5 (Strong) |
|----------|--------|------------|-------------------|------------|
| **Pain identified** | 2x | Vague or assumed | Stated but not quantified | Quantified business impact |
| **Authority mapped** | 2x | Unknown decision-maker | Know the DM, haven't met them | Met the DM, they're engaged |
| **Timeline confirmed** | 2x | No deadline or event | "This quarter" — no specifics | Specific date tied to business event |
| **Champion active** | 1.5x | No internal advocate | Contact is friendly but passive | Champion selling internally, sharing info |
| **Next step set** | 1.5x | No next meeting | Tentative "let's reconnect" | Calendared, specific agenda |
| **Competition known** | 1x | No idea who else they're evaluating | Know competitors, no positioning | Know competitors AND our differentiation is landing |

**Scoring:**
- Multiply each criterion score (1-5) by its weight
- Total possible: 50
- 40-50: Strong deal. Accelerate.
- 30-39: Progressing. Close the gaps.
- 20-29: At risk. Needs intervention this week.
- Below 20: Likely dead. Have an honest conversation about whether to invest more time.

## Stage-Appropriate Questions

Different stages need different scrutiny. Don't ask proposal-stage questions about a discovery-stage deal.

### Discovery Stage

- What pain did they articulate? (In their words, not yours.)
- Who initiated the conversation — them or you?
- What's their current solution? What don't they like about it?
- Have they tried to solve this before? What happened?
- Who else needs to be involved in evaluating this?
- What's the next step and when is it?

### Demo / Evaluation Stage

- Did the decision-maker attend the demo?
- What questions did they ask? (Questions reveal what they care about.)
- Did they share requirements or an evaluation rubric?
- Who else are they evaluating? What stage are competitors at?
- What was their reaction? (Specific feedback, not "they liked it.")
- Have they given you access to technical or procurement stakeholders?

### Proposal / Negotiation Stage

- Have they confirmed budget? (Approved, not "we'll find it.")
- Have you met the economic buyer?
- Is legal/procurement involved? What's their typical cycle?
- What terms are they pushing back on? (Price, scope, timeline, terms?)
- Have they told you what it would take to get a yes?
- Is there a mutual close plan with agreed dates?
- What could stop this deal from closing by the projected date?

### Stalled Deals (Any Stage)

- When was the last meaningful interaction? (Email replies don't count.)
- What was the prospect's last commitment, and did they follow through?
- Has your champion gone quiet? Have you reached out through another contact?
- Has anything changed at the company? (Reorg, layoffs, new leadership, funding.)
- Are you willing to confront the prospect about the stall? ("I want to be direct — it feels like this has lost momentum. What's changed?")

## Risk Flags

Automatically flag deals with any of these characteristics:

| Risk Flag | Definition | Severity |
|-----------|-----------|----------|
| **No next step** | No calendared meeting or action | Critical |
| **Aging** | In current stage > 2x average for that stage | High |
| **Single-threaded** | Only one contact at the account | High |
| **Ghost champion** | Champion hasn't responded in 10+ days | High |
| **No DM access** | Haven't met the decision-maker | High |
| **No pain quantified** | Can't articulate the business cost of the problem | Medium |
| **No timeline anchor** | No business event driving urgency | Medium |
| **Unknown competition** | Don't know who else they're evaluating | Medium |
| **Premature stage** | Moved to proposal before discovery was complete | Medium |
| **Close date pushed 2+** | Close date has been moved more than twice | High |
| **Stale CRM data** | Key fields empty or unchanged for 14+ days | Medium |

## Pipeline Hygiene: Zombie Deals and the Quarterly Purge

The biggest lie in most pipelines is the total number. Half the deals are zombies — they're not dead, they're not alive, they're just sitting there making your coverage ratio look better than reality.

### What Is a Zombie Deal?

A deal is a zombie if it meets any two of these criteria:
- No meaningful two-way communication in 21+ days
- Close date has been pushed 3+ times
- Been in the same stage longer than 2x your average for that stage
- Champion has gone silent and you have no alternate contact
- The original pain or initiative that drove the deal is no longer mentioned

### The Forced Disqualification Process

For every deal flagged as a zombie, the rep has one week to do one of three things:

1. **Resurrect it.** Get a live conversation (not email) with the prospect, reconfirm the pain and timeline, and set a concrete next step. Update the CRM with specifics.
2. **Re-stage it.** If the deal is real but has regressed, move it back to the appropriate earlier stage. A deal you've "proposed" but where the champion went dark is not in Proposal — it's back in Discovery.
3. **Kill it.** Mark it Closed-Lost with a reason code. Remove it from the pipeline. No shame — honest pipelines win more than padded ones.

If the rep does none of these within one week, the deal is removed by the manager.

### The Quarterly Purge

Once per quarter, run a full pipeline purge. Every deal in the pipeline gets scrutinized against zombie criteria. The purge should happen mid-quarter (not end of quarter when everyone is desperate) and should follow this process:

1. Pull every open deal older than your average sales cycle
2. Sort by last activity date (ascending — oldest inactivity first)
3. Force each rep to defend or kill each one in a dedicated 30-minute session
4. Target: remove 15-25% of pipeline each quarter. If you're not removing anything, you're not being honest.

The purge will temporarily hurt your coverage ratio. That's the point. Now you know the real number.

## CRM Hygiene Requirements

Pipeline reviews are only as good as the data in the CRM. If reps aren't maintaining deal records, the review is guesswork. Require these fields on every open deal and enforce them:

### Required Fields (Non-Negotiable)

| Field | Why It Matters | Update Frequency |
|-------|---------------|-----------------|
| **Next step** | The single most important field in any CRM | After every interaction |
| **Next step date** | Without a date, the next step is a wish | After every interaction |
| **Close date** | Drives the forecast | Update when it changes, not end of month |
| **Amount** | Can't calculate pipeline without it | When pricing is discussed |
| **Stage** | Determines what questions to ask | After every qualifying interaction |
| **Decision-maker** | Single-thread detection | As soon as identified |
| **Last activity date** | Zombie detection | Automatic from CRM |
| **Close date change count** | Slip detection | Automatic if CRM supports it |

### Enforcement

Don't nag — automate. Set up CRM rules:
- Deals with no next step for 7+ days get flagged automatically
- Deals with empty required fields can't advance stage
- Weekly report to each rep showing their data quality score
- Make CRM hygiene a visible metric in 1:1s — not punitive, but visible

If you can't trust the data, you can't trust the review. Garbage in, garbage out.

## Solo Founder / Self-Review Guidance

If you're a solo founder or individual contributor reviewing your own pipeline without a manager, you need to be both the rep and the VP of Sales. This is harder than it sounds because you're biased toward your own deals.

### How to Self-Review Honestly

1. **Schedule it.** Put 30 minutes on your calendar every Monday morning. Treat it like a meeting with your boss. Don't skip it.
2. **Score every deal using the framework above.** Write the scores down. Don't just think about it — the act of scoring forces honesty.
3. **Ask yourself the hardest question for each deal:** "If someone else told me about this deal with these exact facts, would I believe it's real?" If no, act accordingly.
4. **Use the "friend test."** Describe each deal out loud as if explaining it to a skeptical friend. Where you start hedging or adding qualifiers ("but I think..." / "they said they might..."), those are the weak spots.
5. **Track your forecast accuracy.** At the start of each month, write down what you think will close. At the end, compare. Your historical accuracy is the best antidote to your own optimism.

### Solo Pipeline Metrics to Track Weekly

```
Open deals:               [X]
Total pipeline value:      $[X]
Deals with next step set:  [X] / [X] ([X]%)
Deals older than 2x cycle: [X] — kill or resurrect each one
New deals added this week: [X]
Deals closed this week:    [X] won / [X] lost
```

The discipline of tracking these numbers weekly, even as a solo operator, is what separates founders who sell from founders who wish.

## Pipeline Health Metrics

Calculate and review these every pipeline review:

### Coverage Ratio
```
Pipeline Coverage = Total Weighted Pipeline / Quota
Target: 3-4x for standard B2B sales cycles
```
Below 3x? Stop reviewing deals and start prospecting.

### Stage Distribution
Healthy pipeline looks like a funnel — more deals in early stages, fewer in late stages. An inverted funnel (more in proposal than discovery) means prospecting has dried up and you'll have a gap in 60-90 days.

### Pipeline Velocity
```
Velocity = (# Deals x Win Rate x Avg Deal Size) / Avg Sales Cycle (days)
```
Track month-over-month. Declining velocity means something is broken — either fewer deals, lower win rates, smaller deals, or longer cycles. Identify which lever is moving.

### Aging Analysis
What percentage of pipeline has been in the same stage for more than your average cycle time at that stage? If it's above 30%, you have a stalled pipeline problem.

## Weekly Review Format

For recurring pipeline reviews, use this cadence:

### 1. Top-of-Meeting Snapshot (2 min)
- Total pipeline value (weighted and unweighted)
- Coverage ratio
- Deals created this week / Deals closed this week
- Number of deals with risk flags

### 2. Deal-by-Deal Review (20-30 min)
- Start with deals closest to close — they need the most precision.
- Then at-risk deals — they need intervention.
- Then new deals — validate early-stage qualification.
- Skip healthy mid-stage deals — don't waste time on deals that are on track.

### 3. Action Commitments (5 min)
- Each deal reviewed gets a specific next action with an owner and a date.
- Write them down during the meeting. Don't rely on memory.

### 4. Pipeline Creation Check (5 min)
- Is coverage ratio healthy for this quarter AND next quarter?
- How many new qualified opportunities were created this week?
- If creation is below target, what's the plan to fix it this week — not "we'll ramp up outbound." Specific actions.

## Worked Example: Pipeline Review of 6 Deals

Here's a realistic pipeline review demonstrating how to apply the scoring, flag risks, and make recommendations. Assume average sales cycle is 45 days, average deal size is $48K ACV, and quarterly quota is $200K.

### Deal 1: Acme Corp — $60K ACV — Proposal Stage — 38 days old

**Scoring:**
- Pain identified: 5 (quantified — $200K/year in lost productivity) x 2 = 10
- Authority mapped: 4 (met VP Ops, CFO scheduled for next week) x 2 = 8
- Timeline confirmed: 5 (board mandate to implement by Q2) x 2 = 10
- Champion active: 5 (VP Ops sharing internal docs, prepping the CFO) x 1.5 = 7.5
- Next step set: 5 (CFO call Thursday 2pm) x 1.5 = 7.5
- Competition known: 3 (know they talked to one competitor, unclear on status) x 1 = 3
- **Total: 46/50 — Strong deal**

**Risk flags:** None
**Recommendation:** Accelerate. Prep hard for the CFO call. Ask the champion what the CFO cares about — don't wing it. Try to get competitive intel before Thursday.

### Deal 2: BetaCo — $45K ACV — Demo Stage — 62 days old

**Scoring:**
- Pain identified: 3 (stated but not quantified — "we need to be more efficient") x 2 = 6
- Authority mapped: 2 (talking to a Director, DM is VP unknown) x 2 = 4
- Timeline confirmed: 2 (no deadline, "sometime this year") x 2 = 4
- Champion active: 3 (Director is friendly, responds to emails, not selling internally) x 1.5 = 4.5
- Next step set: 2 (said "let's reconnect after the holidays" — no date) x 1.5 = 3
- Competition known: 1 (no idea) x 1 = 1
- **Total: 22.5/50 — At risk**

**Risk flags:** Aging (62 days, 2x cycle time at demo stage). No next step. Single-threaded. No DM access.
**Recommendation:** This is a zombie. The rep has one week to get a live conversation with the Director AND get introduced to the VP. If they can't, move to Closed-Lost. The "let's reconnect" language is the prospect being polite, not interested.

### Deal 3: Gamma Industries — $80K ACV — Discovery Stage — 12 days old

**Scoring:**
- Pain identified: 4 (stated clearly — their current tool is being sunset) x 2 = 8
- Authority mapped: 3 (know the DM is the CTO, haven't met) x 2 = 6
- Timeline confirmed: 4 (tool sunset in 6 months, need to decide in 3) x 2 = 8
- Champion active: 3 (VP Eng is engaged but early) x 1.5 = 4.5
- Next step set: 5 (discovery call #2 scheduled for Wednesday) x 1.5 = 7.5
- Competition known: 2 (know they're evaluating others, not who) x 1 = 2
- **Total: 36/50 — Progressing**

**Risk flags:** No DM access (expected at Discovery stage, but plan to close this gap).
**Recommendation:** Strong early-stage deal. Priority for Wednesday's call: quantify the pain (what's the cost of not switching before the sunset?) and get a path to the CTO. Ask who else they're evaluating — it's easier to ask early than late.

### Deal 4: DeltaServ — $35K ACV — Negotiation Stage — 55 days old

**Scoring:**
- Pain identified: 5 x 2 = 10
- Authority mapped: 5 (met the CEO, she's the signer) x 2 = 10
- Timeline confirmed: 3 (was "end of Q1" but now "early Q2") x 2 = 6
- Champion active: 4 x 1.5 = 6
- Next step set: 4 (legal review in progress, follow-up next Monday) x 1.5 = 6
- Competition known: 5 (won the bake-off, down-selected to us) x 1 = 5
- **Total: 43/50 — Strong deal, but watch the slip**

**Risk flags:** Close date pushed 2x (was March 15, then March 31, now "early Q2").
**Recommendation:** This deal is real but slipping. The rep needs to ask the CEO directly: "What would it take to get this signed by [date]? Is there something I can do to accelerate the legal review?" Two pushes is a pattern. Three pushes means something is wrong that no one is saying.

### Deal 5: Epsilon LLC — $25K ACV — Proposal Stage — 91 days old

**Scoring:**
- Pain identified: 2 (vague — "we want to modernize") x 2 = 4
- Authority mapped: 2 (talking to an individual contributor) x 2 = 4
- Timeline confirmed: 1 (none) x 2 = 2
- Champion active: 1 (contact stopped responding 3 weeks ago) x 1.5 = 1.5
- Next step set: 1 (no next step, last email unanswered) x 1.5 = 1.5
- Competition known: 1 x 1 = 1
- **Total: 14/50 — Dead deal**

**Risk flags:** Aging (91 days — 4x cycle). Ghost champion. No next step. No DM access. No pain quantified.
**Recommendation:** Close this deal as lost. Today. It's been dead for a month. The rep is keeping it open to pad the pipeline number. Removing it drops coverage ratio, which is the honest thing to do. If the prospect re-engages, reopen as a new opportunity.

### Deal 6: Foxtrot Inc — $55K ACV — Demo Stage — 8 days old

**Scoring:**
- Pain identified: 4 (clear problem, working on quantification) x 2 = 8
- Authority mapped: 4 (DM identified, meeting being scheduled) x 2 = 8
- Timeline confirmed: 3 ("this quarter" from the VP) x 2 = 6
- Champion active: 4 (proactively sharing info, set up the demo internally) x 1.5 = 6
- Next step set: 5 (demo Thursday, 4 stakeholders confirmed) x 1.5 = 7.5
- Competition known: 3 (know one competitor, asked the champion for more detail) x 1 = 3
- **Total: 38.5/50 — Progressing well**

**Risk flags:** None at this stage.
**Recommendation:** Great early-stage deal. Demo prep is critical — 4 stakeholders means 4 different agendas. Ask the champion what each person cares about and tailor the demo accordingly. Don't run a generic demo for a multi-stakeholder audience.

### Portfolio Summary

| Deal | Amount | Stage | Score | Risk Level | Action |
|------|--------|-------|-------|-----------|--------|
| Acme Corp | $60K | Proposal | 46 | Low | Accelerate — prep for CFO call |
| DeltaServ | $35K | Negotiation | 43 | Medium | Confront the slip pattern |
| Foxtrot Inc | $55K | Demo | 38.5 | Low | Nail the multi-stakeholder demo |
| Gamma Industries | $80K | Discovery | 36 | Low | Quantify pain, get to CTO |
| BetaCo | $45K | Demo | 22.5 | High | Resurrect in 7 days or kill |
| Epsilon LLC | $25K | Proposal | 14 | Critical | Close-Lost today |

**Pipeline after cleanup:** $275K (removing Epsilon). Weighted: ~$145K. Coverage against $200K quota: 1.4x weighted — below healthy range. Prospecting needs to increase immediately.

## Output Format

When reviewing a pipeline, deliver:

1. **Pipeline snapshot** — Total value, weighted value, coverage ratio, velocity.
2. **Deal-by-deal scores** — Each deal scored with the framework, sorted by risk.
3. **Risk flags summary** — All flagged deals grouped by risk type.
4. **Zombie deals** — Deals that should be killed or resurrected within one week.
5. **Top 3 actions** — The three most important things to do this week to protect/advance the pipeline.
6. **Pipeline creation assessment** — Whether new pipeline creation is keeping pace with closes and losses.
7. **Prospecting recommendation** — Whether current pipeline supports the target, and what to do if it doesn't.

## Related Skills

- **call-debrief** — Every call debrief feeds into pipeline reviews. Better debriefs make reviews concrete instead of speculative.
- **forecast** — Pipeline review data is the input for forecasting. Clean pipeline = accurate forecast.
- **discovery-call** — Deals that score low on pain or authority often had weak discovery. Send the rep back to re-discover.
- **win-loss-analysis** — Patterns from won and lost deals inform what to look for in pipeline reviews.
- **competitive-intel** — When deals have unknown competition, flag it and use competitive-intel to prepare.
- **sales-comp** — Pipeline coverage targets should be calibrated against quotas set in the comp plan.
