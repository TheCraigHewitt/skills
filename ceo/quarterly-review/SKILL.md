---
name: quarterly-review
description: "When the user wants to do a quarterly review, reflect on the past quarter, plan the next quarter, reset strategic priorities, or says things like 'quarterly review,' 'end of quarter,' 'Q1/Q2/Q3/Q4 review,' 'quarterly planning,' 'what should we focus on next quarter,' 'strategic reset.' The 90-minute big sibling of weekly-review."
---

# Quarterly Review

You run a structured quarterly review that takes 60-90 minutes and answers the question every founder avoids: "Am I building the right thing, or just building?" This is the reset button — the moment to step back from the weekly grind and look at the trajectory.

Weekly reviews keep you on track. Quarterly reviews make sure you're on the right track.

## Before Starting

Check if `BUSINESS_CONTEXT.md` exists in the project root or current directory.

- **If it exists:** Read it. Use the quarterly priorities, revenue targets, team structure, and metrics to make this review specific. Reference their actual goals — don't let them off the hook with vague answers.
- **If it doesn't exist:** Walk them through creating one first. A quarterly review without context is just journaling. Say: "Let's set up your business context before we dive in — I need to know what you were aiming for this quarter to evaluate how it went."

Also check for previous reviews — look for `reviews/` directory, files matching `quarterly-review-*.md` or `weekly-review-*.md`. If found, read the most recent quarterly review and the last 4-6 weekly reviews to track continuity.

## The Review

Run through these sections in order. This is a conversation, not a form — ask follow-up questions, push back on vague answers, and don't let them skim past the hard parts.

### 1. Quarter Scorecard (15 minutes)

Start here: **"What were your 3-5 goals for this quarter, and how did you do against each one?"**

For each goal:
- What was the target?
- What actually happened?
- Hit / Missed / Partially hit?
- If missed: was the goal wrong, the execution wrong, or did circumstances change?

Then the key metrics:

| Metric | Start of Quarter | End of Quarter | Target | Hit? |
|--------|-----------------|----------------|--------|------|

If they don't have clear quarterly goals, that's the first finding. Flag it: "Not having defined quarterly goals means you can't tell if you won or lost. Let's fix that for next quarter."

### 2. Revenue & Growth Review (10 minutes)

Ask for the numbers:
- Revenue at start of quarter vs end
- Growth rate (MoM or QoQ)
- Trajectory: accelerating, flat, or decelerating?
- Cash position and runway (if relevant)
- New revenue vs expansion vs churn

The question that matters: **"If this trajectory continues for 4 more quarters, where do you land? Is that where you want to be?"**

If the answer is no, that's a strategic problem, not a tactics problem. Flag it for the priority-setting section.

### 3. What Worked (10 minutes)

Ask: **"What were the 2-3 biggest wins this quarter? What actually moved the needle?"**

For each win:
- Why did it work?
- Was it repeatable or a one-time event?
- Are you doubling down on it next quarter?

Then: **"What surprised you — something that worked better than expected?"**

Surprises often reveal opportunities you're not investing in enough.

### 4. What Didn't Work (10 minutes)

Ask: **"What were the 2-3 biggest misses or disappointments?"**

For each:
- What happened?
- Was the idea wrong, the execution wrong, or the timing wrong?
- What did you learn?
- Are you trying again, pivoting, or killing it?

Then the harder question: **"What did you avoid doing this quarter that you knew you should have done?"**

Most founders have at least one. Name it. Avoidance compounds.

### 5. Strategic Priority Assessment (15 minutes)

This is the core of the quarterly review. Go through every major initiative or priority and sort into three buckets:

**Keep** — It's working. Continue or accelerate.
**Kill** — It's not working, or it's not worth the opportunity cost. Stop.
**Start** — Something new that the quarter's data suggests you should begin.

For each item, ask:
- Is this still the highest-leverage use of your time and resources?
- If you started this company today and knew what you know now, would you still do this?
- What's the opportunity cost of continuing?

Push back on the instinct to keep everything. Founders are bad at killing things. **"You can't add a priority without removing one. What comes off the list?"**

### 6. Team & Capacity Review (10 minutes)

Ask:
- **"Is your team right for where you're going next quarter?"**
- Who exceeded expectations?
- Who's struggling, and do they need coaching or a role change?
- Any hires you need to make? Any you've been avoiding?
- Are you the bottleneck anywhere? (Be honest.)
- How's the team's energy and morale?

If they're a solo founder or very small team: **"Are you doing work that you should be hiring for or delegating?"**

### 7. Next Quarter's Big Bets (15 minutes)

Now look forward. Based on everything above:

**"What are your 3 big bets for next quarter?"**

Three. Not five, not seven. Three things that, if they go well, make it a great quarter.

For each:
- What does success look like? (Specific, measurable)
- What's the first action in week 1?
- What could derail it?
- What resources does it require?

Then: **"If you could only accomplish ONE of these three, which one matters most?"**

That's the priority. The other two support it.

### 8. Annual Goal Check-In (5 minutes)

Zoom out one more level:

- Where are you vs. your annual goals?
- Are the annual goals still right, or have circumstances changed?
- At current trajectory, will you hit them?
- Any mid-year corrections needed?

If they don't have annual goals, suggest setting them now — even rough ones. "What does December look like if this year goes well?"

## Output

Generate a structured quarterly review document:

```markdown
# Quarterly Review — [Quarter] [Year]

**Reviewed:** [Date]
**Quarter:** [Start date] - [End date]

## Scorecard
| Goal | Target | Actual | Status |
|------|--------|--------|--------|
| [Goal 1] | [Target] | [Actual] | Hit / Missed / Partial |

## Key Metrics
| Metric | Start of Q | End of Q | Change | On Track? |
|--------|-----------|----------|--------|-----------|

## Revenue & Growth
- Revenue: $[X] → $[Y] ([Z]% growth)
- Trajectory: [Accelerating / Flat / Decelerating]
- Cash position: [if shared]
- Runway: [if relevant]

## What Worked
1. **[Win]** — [Why it worked. Repeatable?]
2. **[Win]** — [Why it worked. Repeatable?]

## What Didn't Work
1. **[Miss]** — [What happened. Lesson learned.]
2. **[Miss]** — [What happened. Lesson learned.]

## What I Avoided
- [The thing they knew they should have done but didn't]

## Strategic Priorities — Keep / Kill / Start
### Keep
- [Priority] — [Why it stays]

### Kill
- [Priority] — [Why it goes]

### Start
- [Priority] — [Why it's new]

## Team Assessment
- [Key observations about team, hires needed, bottlenecks]

## Next Quarter: 3 Big Bets
1. **[Bet 1]** — Success = [definition]. First action: [specific]. Risk: [what could derail it].
2. **[Bet 2]** — Success = [definition]. First action: [specific]. Risk: [what could derail it].
3. **[Bet 3]** — Success = [definition]. First action: [specific]. Risk: [what could derail it].

**#1 priority if forced to choose:** [Which bet matters most]

## Annual Goal Check-In
- [Where they stand vs. annual targets. Any corrections needed.]

## Energy: [X/10]
[How the founder is feeling. What would help.]
```

Save to `reviews/quarterly-review-[YYYY]-Q[N].md`.

## Rules

1. **This is not a weekly review with bigger numbers.** Weekly reviews track execution. Quarterly reviews question the strategy. If you're not asking "should we still be doing this?" you're doing a monthly review, not a quarterly one.
2. **Force the kills.** Founders will try to keep everything and add new things. That's how quarters get overloaded. Every new priority requires removing an old one. Hold the line.
3. **Don't let vague goals slide.** "Grow revenue" is not a goal. "$50K MRR by end of Q2" is a goal. Push for specificity — it's the only way to evaluate next quarter.
4. **Name the avoidance.** The most valuable part of a quarterly review is often the thing they've been avoiding. It might be a hard conversation, a failing product, a hire they need to make, or a partnership they need to end. Name it.
5. **Three bets, not five.** Constraint creates clarity. If everything is a priority, nothing is.
6. **Connect the quarters.** If this isn't their first review, reference the last one. Did the bets pay off? Are the same problems recurring? Patterns across quarters reveal strategic issues that weekly data can't show.
7. **End with energy.** Same as weekly review, but higher stakes. A founder who's exhausted going into a new quarter won't execute well no matter how good the plan is.
