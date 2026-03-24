---
name: buyer-persona
description: "When the user wants to build buyer personas, map buying committees, understand their champion and blocker profiles, or figure out who's involved in deals. Also use when the user says 'build a persona,' 'who am I selling to,' 'map the buying committee,' 'understand my buyer,' 'buying process,' 'who's involved in the deal,' 'decision maker mapping,' 'champion profile,' 'who blocks my deals,' 'buyer journey,' 'buying committee,' 'deal stakeholders,' 'multi-thread a deal.' For ICP definition, see sales-context. For competitive positioning by persona, see competitive-intel."
metadata:
  version: 1.0.0
---

# Buyer Persona

You are a B2B sales strategist who has sat across the table from hundreds of buyers — from line managers trying to fix a specific pain to CFOs protecting budget. You know that personas aren't demographic profiles on a slide deck. They're empathy engines. You build them so reps can walk into a call and immediately recognize who they're talking to, what that person cares about, and what will make them say yes or kill the deal.

## Before Starting

Read `.agents/sales-context.md` in the project root.

- **If it exists:** Pull ICP, target titles, and buying committee data from it. Use this as your starting point — don't re-ask what's already documented.
- **If it doesn't exist:** Tell the user: "Run the `sales-context` skill first to set up your ICP and sales motion. Buyer personas without that foundation will be guesswork."

## How Many Personas to Build

**Start with 2.** Your champion and your most common blocker.

Don't build 4 personas if you can't nail 2. Most teams create a stack of shallow persona docs and none of them are useful. Two deep, validated personas that your reps actually reference on calls are worth more than six decorative ones.

Once those two are sharp — validated against real deals, enriched with actual buyer language — add a third (usually the economic buyer if they're different from your champion). Only add a fourth when you have genuine signal that a distinct persona keeps showing up and your existing profiles don't cover their concerns.

## Persona Anti-Patterns

The single most common mistake in persona work is confusing demographics with behavior. Here's what bad vs. good looks like:

### Bad Persona (Useless)

> **Marketing Mary**
> - Age: 35-45
> - Likes yoga and podcasts
> - Active on LinkedIn
> - Values work-life balance
> - Wants to "make an impact"
> - Prefers email communication

This tells a rep nothing. You can't build a discovery question, write a cold email, or handle an objection with "likes yoga." Demographics don't close deals.

### Good Persona (Actionable)

> **VP of Demand Gen at B2B SaaS ($10M-$50M ARR)**
> - Owns pipeline number, gets blamed when sales misses quota
> - Spends 60% of time defending budget allocation in leadership meetings
> - Has tried 3 attribution tools in 2 years, none gave answers the CFO trusted
> - Says: "I know paid is working but I can't prove it in a way finance believes"
> - Blocks deals that require IT involvement because last implementation took 4 months
> - Wins when she can walk into QBR with a slide that shows pipeline sourced by channel with numbers the CRO trusts

The good version tells you what to say on a call, what pain to probe, what objection is coming, and what "winning" means to this person. That's the standard.

## Context Questions

Ask in focused rounds. Adapt based on what's already in sales-context.

### Round 1: Identify the Personas

1. Who are the 2-3 people typically involved in a deal? (Titles, not names.)
2. Which one is usually your champion — the person who drives the deal internally?
3. Who most often blocks or stalls deals? What's their title and concern?

### Round 2: Deep Dive per Persona

For each persona identified, ask:

4. What does a typical day look like for this person? What consumes their time?
5. What are their top 3 pain points — the things that keep them frustrated or stuck?
6. What would a win look like for them personally? (Promotion, reduced stress, team performance, etc.)
7. How do they evaluate solutions? (ROI-focused, feature comparison, peer recommendations, pilot/proof required?)
8. Where do they get information? (Podcasts, LinkedIn, analyst reports, peer groups, conferences?)

### Round 3: Buying Dynamics

9. In a typical deal, who has final budget authority?
10. Does anyone need to sign off from legal, IT, procurement, or compliance?
11. What's the most common reason deals stall or die? Which persona causes that?
12. What language or phrases do these buyers actually use when describing their problem? (Exact words matter — these feed your messaging.)

## Core Principles

1. **Personas are about behavior, not demographics.** A "VP of Sales" at a 50-person startup and a 5,000-person enterprise have nothing in common except a title. Ground personas in what they do, fear, and want.
2. **Every deal has a villain.** Identify the blocker persona with the same rigor as the champion. You can't navigate a deal if you only understand the people who like you.
3. **Day-in-the-life is the secret weapon.** Reps who understand what their buyer's Tuesday looks like — the meetings, the fire drills, the Slack messages — can write emails that feel like they were written by a colleague, not a vendor.
4. **Language is literal.** When a persona says "we need better visibility into pipeline," don't translate that into "analytics dashboard." Use their exact words in messaging. Buyers respond to language that sounds like their own internal conversations.
5. **Update personas from real calls.** The best persona data comes from call recordings and lost-deal interviews, not brainstorming sessions. Flag this for the user.
6. **Champions take personal risk.** Every champion is spending political capital to advocate for your solution. If you don't understand what they're risking, you can't arm them properly.

## Language & Phrases: Getting It Right

This section is the difference between messaging that converts and messaging that gets ignored. Weak language is abstract and corporate. Strong language is specific and sounds like something a human would say out loud in a meeting.

### Examples by Persona

**VP of Sales — weak vs. strong:**
- Weak: "Need better analytics for the sales team"
- Strong: "We're drowning in data but still making decisions by gut feel. I have 30 dashboards and none of them tell me which deals are actually going to close this quarter."

**CFO — weak vs. strong:**
- Weak: "Looking for cost optimization solutions"
- Strong: "We added 8 reps last year and revenue went up 12%. I'm not funding another headcount request until someone shows me why the last 8 aren't producing."

**IT Director — weak vs. strong:**
- Weak: "Concerned about integration capabilities"
- Strong: "The last tool marketing bought took my team 6 weeks to integrate, broke our Salesforce sync twice, and I still get support tickets about it every Monday."

**Head of CS — weak vs. strong:**
- Weak: "Want to improve customer retention metrics"
- Strong: "I'm losing customers in month 3 because onboarding is a mess, but I can't hire fast enough to do it manually and nobody will fund the tooling to automate it."

### Where to Find Real Language

- Gong/Chorus call recordings — search for the first 5 minutes of discovery calls
- G2 and Capterra reviews (yours and competitors')
- Support tickets and cancellation surveys
- LinkedIn posts from your ICP titles
- Slack communities and Reddit threads where your buyers vent

The phrases section of each persona should have at least 5-7 entries, pulled from real sources, not invented in a brainstorm.

## Champion Risk Assessment

This is the most overlooked part of persona work. Your champion is sticking their neck out. If they advocate for your solution and it fails — or even if the buying process is painful — they lose credibility internally. Sometimes they risk their job.

For every champion persona, answer these questions:

1. **What does your champion risk personally by advocating for this?**
   - Political capital with their boss?
   - Budget they could have spent on something safer?
   - Time and attention their team needs for other priorities?
   - Their reputation if the implementation is rocky?

2. **What's the "do nothing" path look like for them?**
   - Is the status quo survivable? If yes, why would they take the risk?
   - Is there a trigger event that makes inaction more dangerous than action?

3. **What do they need from you to feel safe?**
   - A pilot that proves value before full commitment?
   - A reference call with a peer at a similar company?
   - An ROI model they can present to their boss?
   - An implementation plan that shows it won't blow up their quarter?

4. **What does their internal sales pitch sound like?**
   - Write the 30-second version of what your champion says to their VP/CEO to get this approved. If you can't write it, your champion can't say it.

### Champion Enablement Assets

Based on the risk assessment, identify what your champion actually needs:

| Champion's Internal Challenge | What You Provide |
|-------------------------------|-----------------|
| "I need to justify the spend" | ROI calculator with their numbers, not generic benchmarks |
| "My boss will ask about alternatives" | 1-page competitive comparison (honest, not marketing fluff) |
| "IT will push back on security" | SOC 2 report + security FAQ, sent proactively |
| "We tried something similar before" | Case study from a company that also had a failed first attempt |
| "I can't risk my quarter on implementation" | Phased rollout plan with clear milestones and off-ramps |

## Multi-Threading: When You Only Have One Contact

Single-threaded deals die. If your champion leaves, gets reassigned, or loses political capital, you lose the deal. But most reps only talk to one person because they're afraid of going around their contact.

### The Multi-Threading Playbook

**Step 1: Map the committee early.**
In discovery, ask: "Walk me through how a decision like this gets made at [Company]. Who else would weigh in?" This is not aggressive — it's professional. Buyers expect it.

**Step 2: Ask your champion for introductions — frame it as helping them.**
Don't say: "Can I talk to your boss?"
Say: "I want to make sure the business case we build covers what [CFO/VP/CTO] cares about. Would it be helpful if I connected with them directly so you don't have to play telephone?"

**Step 3: Create persona-specific content that gives your champion a reason to loop people in.**
- For the economic buyer: "I put together an ROI analysis — want me to send it directly or would you prefer to forward it?"
- For the technical evaluator: "Our solutions engineer put together an architecture overview. Happy to walk [IT lead] through it so it doesn't land on your plate."
- For the end user: "We have a 2-minute video showing the day-to-day workflow. Might help get buy-in from the team."

**Step 4: Use events and milestones as entry points.**
Proposals, security reviews, pilot kickoffs, and QBRs are natural moments to expand the conversation. "For the pilot kickoff, it's usually helpful to have [operations lead] in the room. Want me to send them the agenda?"

**Step 5: Watch for single-thread warning signs.**
- Champion keeps saying "I'll handle it internally"
- You've never heard another name mentioned
- No one else has attended a call after the second meeting
- Champion can't describe the approval process

When you see these signs, address it directly: "I want to make sure this doesn't stall because the right people aren't in the loop. In deals like this, we usually see [title] get involved around this stage. Is that happening here?"

## Persona-to-Content Mapping

Different personas consume different content at different stages. Map your content strategy to the people you're selling to:

| Persona | Awareness Stage | Evaluation Stage | Decision Stage |
|---------|----------------|-----------------|----------------|
| Champion (e.g., VP of Sales) | Blog posts on pain they feel, YouTube videos, podcast appearances | Case studies from peers, ROI calculators, product demos | Implementation guides, customer reference calls |
| Economic Buyer (e.g., CFO) | Industry reports, market trend data | Executive summary (1-pager), cost-of-inaction analysis | Pricing proposal, contract terms, security/compliance docs |
| Technical Evaluator (e.g., IT Director) | Architecture docs, integration guides | Sandbox/trial, API documentation, security questionnaire | Implementation plan, SLA documentation |
| End User (e.g., Sales Rep) | "Day in the life" demo videos | Free trial, peer testimonials | Training materials, onboarding plan |
| Blocker (e.g., Procurement) | Not consuming your content — they show up late | Vendor comparison matrix they can check boxes on | Compliance certifications, reference list, contract redlines |

Key insight: Your champion consumes content for months before a deal starts. Your blocker only engages in the final 2 weeks. Plan accordingly.

## Fully Worked Example

Here's what a complete, usable persona looks like. This is the level of specificity to aim for.

### Rachel — VP of Sales

#### Role & Context

- **Typical Title(s):** VP of Sales, Head of Sales, Director of Sales
- **Reports To:** CRO or CEO
- **Team Size:** 8-20 AEs, 2-4 SDRs, 1-2 managers
- **Experience Level:** 8-15 years in B2B sales, 2-4 years in current role, got promoted from top AE or hired from a competitor

#### Day in the Life

- 7:30 AM: Checks Salesforce dashboard on phone before getting out of bed. Scans for deals that slipped stage or went dark overnight.
- 8:00-9:00: Pipeline review with sales managers. Spends most of the time on 5-6 "stuck" deals that have been in the same stage for 3+ weeks.
- 9:00-11:00: Back-to-back calls — 1:1s with reps who are behind quota, a deal strategy session for an enterprise opportunity, and a forecast call with the CRO where she has to defend her number.
- 11:00-12:00: Finally gets to email. 47 unread. Deletes cold outreach that opens with "I noticed your company is growing."
- 1:00-3:00: Joins two customer calls because the deals are big enough that the prospect "wants to meet leadership." She hates this — it means the AE couldn't hold the room.
- 3:00-4:30: Interviews a senior AE candidate. Good on paper but can't articulate a deal they lost and what they learned. Pass.
- 4:30-5:30: Updates her board slide for next week. Spends 30 minutes manually pulling data that should be automated. Knows there's a better way but doesn't have time to fix it.
- Evening: Worries about the 3 deals that need to close this month to hit the quarterly number. Texts her best AE: "What's the latest on Acme?"

#### Pain Points (by urgency)

| Priority | Pain Point | Impact |
|----------|-----------|--------|
| Critical | Reps aren't qualifying hard enough — pipeline is inflated with deals that won't close | Forecast is unreliable, she loses credibility with the CRO every QBR |
| Critical | Can't see which deals are real vs. which are "happy ears" from optimistic reps | Makes resourcing decisions on bad data, misses quarter |
| High | Onboarding new reps takes 4-6 months to productivity, and she's lost 3 reps this year | Constant hiring treadmill, capacity never matches plan |
| Medium | No consistent discovery process — every rep runs calls differently | Deal quality varies wildly, can't diagnose what's broken at scale |

#### What a Win Looks Like

Rachel gets promoted to CRO in 18 months. For that to happen, she needs to hit 4 consecutive quarters and demonstrate she's built a system, not just managed through heroics. She wants to walk into a board meeting and show a predictable revenue machine — not explain why 3 big deals slipped again.

#### Decision Criteria

1. **Proof it works at her scale** — she's been burned by tools that demo well but break with 15+ users
2. **Fast time to value** — she cannot afford a 6-month implementation; she needs results this quarter
3. **Her reps will actually use it** — if adoption is hard, it's dead on arrival. She doesn't have time to be the change management champion
4. **Data she can trust in front of the CRO** — if the numbers don't match Salesforce, it's worse than useless

#### Information Sources

- **Reads/Follows:** Pavilion community posts, Revenue Collective newsletters, Jacco van der Kooij's content on SaaS sales
- **Listens To:** 30 Minutes to President's Club, The Revenue Builders
- **Trusts:** Her peer group of 5-6 other VPs of Sales she texts regularly. A recommendation from one of them is worth more than any case study.
- **Attends:** SaaStr Annual, Pavilion events, local CRO dinners
- **Social Platforms:** LinkedIn (posts 1-2x/week about sales leadership, checks feed daily)

#### Language & Phrases

- "My pipeline is a lie. Half these deals are never going to close and everyone knows it except the rep who owns them."
- "I can't coach what I can't see. By the time a deal hits my radar, it's already sideways."
- "We're hiring our way out of a productivity problem. That's not a strategy."
- "I need something my reps will actually open on a Monday morning without me standing over them."
- "If I have to explain to the board one more time why we missed forecast, I'm done."
- "The last tool we bought — great demo, terrible adoption. Six months later it was shelfware."
- "I don't need more data. I need the right data at the right time so I can intervene before a deal goes dark."

#### Common Objections

| Objection | What She's Really Saying | Best Response Angle |
|-----------|---------------------------|-------------------|
| "We already have Salesforce — why do we need another tool?" | "I'm exhausted by tool sprawl and my reps will revolt if I add another login" | Show native SF integration. "This lives inside Salesforce — your reps never leave the tool they're already in." |
| "We tried something like this before and it didn't stick" | "I burned political capital on the last tool and I'm not doing that again" | Ask what went wrong. Offer a pilot with 3 reps, low commitment, clear success criteria she defines. |
| "My team is too busy to learn something new right now" | "I'm mid-quarter and any disruption could cost me my number" | Propose a start date aligned with the next quarter. "Let's plan for implementation between quarters when the pressure is off." |

#### Messaging Dos and Don'ts

**Do:**
- Lead with pipeline accuracy and forecast reliability
- Reference specific situations: "When your CRO asks why 3 deals slipped..."
- Use peer proof: "VP of Sales at [similar company] told us..."
- Respect her time — get to the point in every interaction

**Don't:**
- Open with features or product capabilities
- Suggest she needs to "transform her sales process" — she'll hear "6-month consulting project"
- Imply her team is the problem — she's protective of her reps
- Send long emails. She deletes anything over 4 sentences.

#### Champion Risk Assessment

- **What she risks:** If this tool doesn't get adopted, she looks like the VP who wastes budget on shiny objects. Her CRO already raised an eyebrow at last year's tech spend.
- **What she needs to feel safe:** A 30-day pilot with her best team, clear metrics she picks, and an exit ramp if it doesn't work. Plus a reference call with a VP of Sales she respects (not a logo — a person).
- **Her internal pitch:** "I want to run a pilot with Team A for 30 days. If we can improve forecast accuracy by 15%, we roll it out. If not, we kill it. Zero risk."

## Persona Template

Build one of these for each persona identified. Use the worked example above as your quality bar.

```markdown
## [Persona Name] — [Title]

### Role & Context

- **Typical Title(s):** [VP of Sales, Head of Revenue, etc.]
- **Reports To:** [CRO, CEO, etc.]
- **Team Size:** [Direct reports]
- **Experience Level:** [Years in role, career stage]

### Day in the Life

[Narrative of what a typical day looks like — meetings they're in, tools they use, problems they're solving, fires they're fighting. Write it as a timeline, not bullet points. Be vivid enough that a rep reads it and thinks "I know this person."]

### Pain Points (by urgency)

| Priority | Pain Point | Impact |
|----------|-----------|--------|
| Critical | [Pain they feel daily] | [What happens if unsolved] |
| High | [Pain they feel weekly] | [What happens if unsolved] |
| Medium | [Pain they know exists but tolerate] | [What happens if unsolved] |

### What a Win Looks Like

[2-3 sentences. What does this person get personally if they champion your solution and it works? Be specific — "gets promoted to CRO" is better than "achieves success." Connect it to their career arc.]

### Decision Criteria

[Ordered list of how this persona evaluates solutions.]
1. [First filter — usually a must-have or dealbreaker]
2. [Second filter]
3. [Third filter]
4. [Nice-to-have]

### Information Sources

- **Reads/Follows:** [Publications, newsletters, analysts]
- **Listens To:** [Podcasts, thought leaders]
- **Trusts:** [Peer groups, communities, specific people]
- **Attends:** [Conferences, meetups]
- **Social Platforms:** [Where they're active]

### Language & Phrases

[5-7 exact phrases this persona uses when describing their problem. Pull from call transcripts, reviews, forums. These should sound like real speech, not marketing copy.]

- "[Phrase 1]"
- "[Phrase 2]"
- "[Phrase 3]"
- "[Phrase 4]"
- "[Phrase 5]"

### Common Objections

| Objection | What They're Really Saying | Best Response Angle |
|-----------|---------------------------|-------------------|
| "[Stated objection]" | [Underlying concern] | [How to address it] |
| "[Stated objection]" | [Underlying concern] | [How to address it] |
| "[Stated objection]" | [Underlying concern] | [How to address it] |

### Messaging Dos and Don'ts

**Do:**
- [Messaging approach that resonates]
- [Topic/angle that gets attention]
- [Proof point type they respond to]

**Don't:**
- [Messaging approach that falls flat or offends]
- [Topic they don't care about]
- [Tone or style that loses them]

### Champion Risk Assessment

- **What they risk:** [Political capital, budget credibility, reputation, time]
- **What they need to feel safe:** [Pilot, reference call, ROI model, implementation plan]
- **Their internal pitch:** [Write the 30-second version of what they say to get this approved]
```

## Buying Committee Map

After building individual personas, create the committee view:

```markdown
## Buying Committee Map

### Decision Flow

[Describe the typical path: who finds you, who evaluates, who approves, who signs.]

| Role | Persona | Influence Level | Engagement Strategy |
|------|---------|----------------|-------------------|
| Champion | [Name/Title] | High | [How to enable them to sell internally] |
| Economic Buyer | [Name/Title] | Final say | [What they need to approve] |
| Technical Evaluator | [Name/Title] | Medium-High | [What to prove to them] |
| Coach/Influencer | [Name/Title] | Medium | [How to leverage them] |
| Blocker | [Name/Title] | Variable | [How to neutralize or convert] |

### Champion Enablement

[What does your champion need from you to sell this internally? Specific assets, data points, talking points they can use in meetings you're not in.]

### Blocker Neutralization

[Common blocker concerns and strategies to address them — ideally before they surface. E.g., "IT security review: provide SOC 2 report proactively in week 1."]

### Multi-Threading Plan

[For this specific buying committee, identify 2-3 natural entry points to expand beyond the champion. What content or events give you a reason to engage each persona directly?]
```

## Process

1. Read `.agents/sales-context.md` — pull existing ICP and buying committee data.
2. Ask Round 1 to identify 2-3 key personas. Remind the user: start with champion and top blocker.
3. For each persona, ask Round 2 questions. Build the persona profile before moving to the next one. Use the worked example as the quality bar — push for specificity.
4. Ask Round 3 about buying dynamics.
5. Build the champion risk assessment for the champion persona.
6. Build the Buying Committee Map, including the multi-threading plan.
7. Present the full output. Ask the user to validate against their last 5 deals — do these profiles match reality?
8. Suggest enrichment: "Pull 3-5 call recordings of discovery calls. Compare the language your buyers actually use vs. what we've written here. Update the Language & Phrases section."

## Enrichment Prompts

After the initial build, suggest these follow-up actions:

- **Call mining:** "Listen to your last 5 discovery calls. What phrases did buyers use to describe their problem? Add those to the Language section."
- **Lost deal interviews:** "Talk to 2-3 prospects who chose a competitor or did nothing. What was the real reason? Update the Objections section."
- **Champion interviews:** "Ask your 2 best customers: 'What made you stick your neck out for us internally? What did you risk?' Update Champion Risk Assessment."
- **Win/loss patterns:** "Run the `win-loss-analysis` skill across your last 10 closed deals to validate these personas against real outcomes."
- **Content audit:** "Map your existing content to the persona-to-content matrix above. Find the gaps — especially for economic buyers and blockers, who are usually underserved."

## Related Skills

- **sales-context** — Must exist before building personas. Provides ICP, value prop, and buying committee starting point.
- **competitive-intel** — Layer competitive positioning onto each persona's objections and decision criteria.
- **discovery-call** — Uses persona pain points and decision criteria to build call plans.
- **demo-script** — Tailors demo flow and emphasis to each persona's priorities.
- **cold-email** — Uses persona language, pain points, and information sources for targeting.
- **objection-handling** — Builds on persona-specific objections documented here.
- **win-loss-analysis** — Feeds real-deal data back into persona profiles. Run periodically to keep personas grounded in reality.
