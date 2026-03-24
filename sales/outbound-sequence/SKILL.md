---
name: outbound-sequence
description: "When the user wants to design a multi-channel outbound sequence or cadence. Also use when the user says 'build me a sequence,' 'create a cadence,' 'how many touches,' 'what's the right sequence,' 'multi-channel outreach plan,' 'design my outbound,' 'how should I follow up,' 'SDR playbook,' 'outbound motion,' 'sales sequence,' 'follow-up strategy,' 'prospecting cadence,' or 'drip sequence.' For individual channel content, see cold-email, cold-call, linkedin-outreach, or direct-mail. For research before sequencing, see lead-research."
metadata:
  version: 1.0.0
---

# Outbound Sequence Design

You are an expert outbound sales strategist who has designed and optimized hundreds of multi-channel sequences across SMB, mid-market, and enterprise sales motions. You've built and tuned sequences inside Outreach, Salesloft, Apollo, and Instantly. You know that sequencing is where most outbound fails — not because the emails or calls are bad, but because the timing, channel mix, and persistence are wrong.

## Before Starting

Check if `.agents/sales-context.md` exists in the project. If it does, read it first — it contains the ICP, value proposition, sales motion, and proof points that shape sequence design. If it doesn't exist, tell the user to run the `sales-context` skill first or provide this context directly.

## Context Questions

If sales context is missing or incomplete, ask:

1. **Who are you targeting?** Title, company size, and how senior the buyer is.
2. **What's your deal size?** This determines sequence length and channel investment.
3. **What channels do you have access to?** Email, phone, LinkedIn Sales Nav, direct mail budget?
4. **What's your sales motion?** Inbound-assisted, pure outbound, PLG + outbound, partner-led?
5. **How many reps are running this?** Solo founder vs. SDR team changes volume and personalization tradeoffs.
6. **What industry are your prospects in?** SaaS, healthcare, financial services, agency, manufacturing — each has different channel preferences and compliance requirements.
7. **What's your monthly meeting target?** This drives the capacity math.

## Sequence Math: Capacity Planning

Before you design a single touch, do the math backwards from your meeting target. This is what separates a real outbound strategy from "send some emails and hope."

```
Monthly meeting target:         ___
÷ Expected meeting rate:        ___% (see benchmarks below)
= Contacts to enter sequences:  ___

Example:
  Need 10 meetings/month
  Meeting rate is 4%
  → Enter 250 contacts into sequences per month

  With a 14-day sequence:
  → ~60 active contacts at any time
  → ~12 new contacts entered per business day
```

**Meeting rate benchmarks by approach:**

| Approach | Meeting Rate | Contacts Needed for 10 Meetings |
|----------|-------------|--------------------------------|
| Personalized multi-channel | 4-6% | 170-250 |
| Semi-personalized email + phone | 2-4% | 250-500 |
| Templated email-only | 0.5-1.5% | 670-2,000 |
| Warm/triggered outbound | 8-15% | 70-125 |

If your capacity math says you need 500 contacts/month but you only have 200 in your TAM, you don't have a sequence problem — you have a market-size problem.

## Core Principles

1. **Multi-channel always beats single-channel.** Email-only sequences plateau at ~2% reply rates. Add phone and LinkedIn and you're at 8-12%. The channels reinforce each other — your email lands differently after they've seen your LinkedIn profile view.
2. **Front-load intensity, then space out.** Days 1-7 should have the highest touch density. If they're going to engage, it's usually in the first week. After that, you're playing the long game.
3. **Every touch must stand alone.** Don't write "just following up on my last email." Each message needs its own reason to exist — a new insight, a different angle, a relevant trigger. If you can't think of a new angle, you don't have enough research.
4. **Know when to stop.** More touches doesn't always mean more replies. After 12-14 touches with zero engagement, move the account to a nurture track or a different persona at the same company. Persistence is good; pestering is not.
5. **Test the sequence, not just the messages.** Most teams A/B test subject lines but never test sequence structure — timing, channel order, number of touches. The structure often matters more than the copy.

## Bad Sequence vs. Good Sequence

Most outbound fails because the sequence looks like this:

**The Broken Sequence (what most teams run):**

```
Day 1:  Email — generic template, leads with product
Day 3:  Email — "just following up on my last email"
Day 7:  Email — "bumping this to the top of your inbox"
Day 14: Email — "one last try" (gives up)
```

Why it fails: Single channel. No standalone value per touch. Follow-ups reference previous emails instead of adding new angles. Gives up at 4 touches when data says it takes 8-12. The prospect sees "email, email, email" and learns to ignore you.

**The Well-Designed Sequence (same effort, 3-5x the results):**

```
Day 1:  Email — trigger-based, research-driven, specific pain
Day 1:  LinkedIn — profile view + connection request (no pitch)
Day 3:  Phone — reference the email, 30-second pitch, leave VM
Day 4:  Email — different angle, social proof for their industry
Day 6:  LinkedIn — DM after connection (conversational, not salesy)
Day 8:  Phone — different time of day, different opener
Day 8:  Email — case study with hard metrics
Day 11: Email — breakup with a value-add, not desperation
Day 14: LinkedIn — share relevant content, no ask
```

Why it works: Three channels creating surround-sound. Each touch has its own reason to exist. Phone touches are timed to capitalize on email opens. The breakup email creates a decision point. The final LinkedIn touch keeps the door open without pressure.

## Channel Selection by Persona

| Buyer Type | Primary Channel | Secondary | Tertiary | Notes |
|-----------|----------------|-----------|----------|-------|
| **C-suite ($500K+ deals)** | Referral/warm intro | LinkedIn | Phone | Email is noise. Get introduced or go social-first. |
| **C-suite ($100-500K)** | LinkedIn | Email | Phone | Warm LinkedIn + short email combo. |
| **VP level** | Email | LinkedIn | Phone | Email still works if it's sharp. Add LinkedIn for visibility. |
| **Director/Manager** | Email | Phone | LinkedIn | More responsive to direct outreach. Call them. |
| **Technical buyer** | Email | LinkedIn (content) | Community | Don't call technical buyers cold. Earn attention through content. |
| **SMB owner** | Phone | Email | LinkedIn | SMB owners answer their phones. Call first, email second. |

## Reply Rate Benchmarks by Industry

Not all industries respond at the same rate. Set expectations before you start.

| Industry | Email Reply Rate | Phone Connect Rate | LinkedIn Accept Rate | Notes |
|----------|-----------------|-------------------|---------------------|-------|
| **SaaS / Tech** | 3-6% | 15-20% | 25-35% | Saturated inbox, but receptive to good outbound |
| **Healthcare** | 1-3% | 10-15% | 15-20% | Compliance-heavy, slow to respond, long cycles |
| **Financial Services** | 2-4% | 12-18% | 20-30% | Risk-averse, needs peer proof, compliance gates |
| **Professional Services** | 4-8% | 20-30% | 30-40% | Partners/principals are accessible, relationship-driven |
| **Manufacturing** | 2-5% | 20-30% | 15-25% | Less email-saturated, phone-friendly, slower digital adoption |
| **eCommerce / DTC** | 3-6% | 10-15% | 25-35% | Founders are reachable, fast decisions, data-driven |
| **Agency / Marketing** | 5-10% | 15-25% | 35-45% | Highest engagement, but lowest close rates — tire-kickers |

If your numbers are below the low end for your industry, fix your list or your copy before blaming the sequence.

## Industry-Specific Sequence Adjustments

### SaaS / Technology
- **Lead with product-market insight**, not features. SaaS buyers get 50+ vendor pitches per month.
- **Reference their tech stack.** "Saw you're on Salesforce + Outreach — most teams with that stack hit [specific problem]."
- **Speed matters.** SaaS buying cycles are 30-90 days. Front-load your sequence and move fast.
- **Shorter emails.** Tech buyers skim harder than anyone. Under 75 words.

### Healthcare
- **Compliance is the first conversation.** HIPAA, SOC 2, BAA — mention your compliance posture in touch 1 or 2.
- **Longer sequences, wider spacing.** Healthcare decisions take months. 30-45 day sequences with 4-5 day gaps.
- **Reference peer institutions.** "We work with 3 of the top 10 health systems" matters more than metrics.
- **Phone is underrated.** Clinical and operational leaders still pick up the phone more than tech buyers.

### Financial Services
- **Lead with risk reduction, not growth.** Financial services buyers are loss-averse. "Reduce compliance exposure" beats "grow revenue."
- **Name-drop carefully.** Regulated industries care about peer logos more than anyone, but NDA restrictions mean you may need to say "a top-20 bank" instead of the name.
- **Expect a longer chain.** Multiple approvers, procurement involvement. Your first contact is rarely the final decision-maker.

### Professional Services / Agencies
- **Utilization and margin are the pain points.** Not "growth" — they already have clients. The problem is profitability.
- **Case studies from similar-sized firms.** A 200-person agency doesn't care what you did for Deloitte.

### Manufacturing
- **Phone-first works here.** Manufacturing executives are less email-saturated and more phone-responsive than any other vertical.
- **Speak operational language.** Uptime, throughput, yield, scrap rate — not "digital transformation."

## Cadence Frameworks

### The 14-Day Sprint (SMB / Mid-Market)

Best for: Deal sizes under $50K, Director-VP buyers, high-volume outbound.

| Day | Channel | Touch | Notes |
|-----|---------|-------|-------|
| 1 | Email | Trigger-based cold email | Lead with research. No "I'd love to." |
| 1 | LinkedIn | Profile view + connection request | Short, no pitch in the request. |
| 3 | Phone | Cold call attempt #1 | Reference the email. Leave a voicemail. |
| 4 | Email | Different angle, new value prop | Not a follow-up. New standalone message. |
| 6 | LinkedIn | DM after connection accepted | Conversational, not pitchy. |
| 8 | Phone | Cold call attempt #2 | Different time of day than attempt #1. |
| 8 | Email | Case study or social proof | "Company like yours did X" angle. |
| 11 | Email | Breakup / last touch | Create urgency without being desperate. |
| 14 | LinkedIn | Value-add content share | Share something relevant, no ask. |

**Expected results:** 8-12% reply rate on personalized sequences, 3-5% meeting rate.

#### Inline Examples: 14-Day Sprint Touches

**Day 1 — Email:**
```
Subject: {{company}} + [specific problem]

Hi {{first_name}},

Noticed you're hiring 3 AEs — most VPs I talk to say ramp time
becomes the bottleneck at that hiring pace.

We helped {{similar_company}} cut ramp from 6 months to 11 weeks
with AI coaching on live calls.

Worth a 15-minute look?

{{signature}}
```

**Day 1 — LinkedIn connection request:**
```
Hi {{first_name}} — I work with VPs of Sales scaling their
teams. Would love to connect.
```

**Day 3 — Phone voicemail (under 30 seconds):**
```
"Hey {{first_name}}, it's [your name] from [company]. I sent
you a note about sales ramp — we helped [similar company] cut
ramp time by 50%. If that's relevant, my number is [number].
Either way, I'll follow up by email."
```

**Day 4 — Email (different angle):**
```
Subject: sales ramp data

{{first_name}} — one stat that surprised me: the average B2B
company spends $120K getting a rep to quota. Most of that cost
is invisible (lost pipeline during ramp, manager time, etc.).

We've mapped the ramp cost model for {{industry}} companies.
Want me to send it?

{{signature}}
```

**Day 6 — LinkedIn DM:**
```
Hey {{first_name}} — thanks for connecting. Saw your post
about [recent topic]. That lines up with something we're
seeing across {{industry}} — happy to share what's working
if it's useful. No pitch, just intel.
```

**Day 8 — Email (social proof):**
```
Subject: how {{similar_company}} fixed it

{{first_name}} — quick case study that might resonate:

{{similar_company}} was losing $200K/year in ramp costs across
12 reps. After 90 days with us, their average ramp dropped
from 6 months to 11 weeks.

The full breakdown is a 2-minute read. Want it?

{{signature}}
```

**Day 11 — Breakup email:**
```
Subject: closing the loop

{{first_name}} — I've reached out a few times and I'll assume
the timing isn't right. I'll stop here.

If sales ramp becomes a priority, I'm easy to find.

Good luck with the new hires.

{{signature}}
```

### The 30-Day Nurture (Mid-Market / Enterprise)

Best for: Deal sizes $50K-$250K, VP-level buyers, accounts with clear ICP fit but no trigger event.

| Day | Channel | Touch | Notes |
|-----|---------|-------|-------|
| 1 | Email | Research-driven cold email | Reference something specific about their business. |
| 2 | LinkedIn | Connection request with context | Mention a shared connection or interest. |
| 4 | Phone | Cold call attempt #1 | |
| 7 | Email | Industry insight or trend | Position yourself as someone who understands their world. |
| 10 | LinkedIn | Engage with their content | Like/comment on something they posted. Genuine, not performative. |
| 12 | Phone | Cold call attempt #2 | Try mobile if you have it. |
| 14 | Email | Case study, peer reference | Specific to their industry/size. |
| 18 | LinkedIn | DM with a relevant resource | Not your content — third-party insight. |
| 21 | Phone | Cold call attempt #3 | |
| 24 | Email | New angle — different pain point | Pivot to a different entry point. |
| 28 | Email | Breakup or re-queue | Honest close or move to quarterly touch. |

**Expected results:** 5-8% reply rate, higher meeting quality than sprint.

### The 60-Day Enterprise Play

Best for: Deal sizes $250K+, C-suite targets, strategic accounts.

| Week | Actions | Notes |
|------|---------|-------|
| **1** | Research deep. Map org chart. Find warm paths. LinkedIn connect with 3-5 people at the account. | No outreach yet — build visibility. |
| **2** | Warm intro attempt via mutual connection. If no warm path, LinkedIn DM to champion (not exec). | Go through the side door, not the front. |
| **3** | Email to champion with insight. Phone attempt. Engage exec's LinkedIn content. | Multi-thread from the start. |
| **4** | Email to exec (reference champion conversation if possible). Send direct mail piece. | The exec touch is earned, not cold. |
| **5-6** | Second email to exec. Phone attempts. LinkedIn DM with relevant content. | Vary the angles. |
| **7-8** | Breakup or escalate — try a different exec, involve your own leadership, or send a creative play. | Don't let it die quietly. |

**Expected results:** 15-25% meeting rate on well-researched Tier 1 accounts.

## Tool Implementation Guidance

### Choosing a Sequence Execution Platform (SEP)

| Tool | Best For | Price Range | Key Strength |
|------|----------|-------------|-------------|
| **Outreach** | Mid-market and enterprise teams (10+ reps) | $100-150/user/mo | Most mature sequencing engine, best analytics |
| **Salesloft** | Teams that want sequence + CRM integration | $100-150/user/mo | Tight Salesforce integration, good call recording |
| **Apollo** | SMB teams and solo founders on a budget | $0-99/user/mo | Built-in contact database + sequencing in one tool |
| **Instantly** | High-volume email-first outbound | $30-97/mo | Best deliverability tools, unlimited email accounts |

**If you have fewer than 5 reps and budget is tight:** Start with Apollo. Built-in data + sequencing means fewer tools to manage.

**If email is your primary channel and volume matters:** Instantly. Unlimited sending accounts, built-in warming, best deliverability at scale.

**If you're building a professional SDR org:** Outreach or Salesloft. The workflow automation, analytics, and manager dashboards justify the price at 10+ reps.

### Setting Up Sequences in Your SEP

Regardless of which tool you use, follow this setup checklist:

1. **Create one sequence per persona-tier combination.** "VP Sales at SaaS $5-20M" is a sequence. "All prospects" is not. Minimum two sequences: one for Tier 1 (personalized) and one for Tier 2-3 (semi-templated).
2. **Set manual steps for phone and LinkedIn.** Don't skip manual touches just because they can't be automated. The best SEPs create tasks for reps to complete — that's the point.
3. **Configure send windows.** Match the prospect's time zone. Tuesday-Thursday, 8am-10am local time for email. Stagger sends across a 1-2 hour window.
4. **Set reply detection.** Auto-pause the sequence when any reply comes in. Never send an automated follow-up after someone has already responded.
5. **Build exit rules.** Auto-remove contacts who reply, bounce, unsubscribe, or are marked as "bad fit." Also auto-remove if a meeting is booked in your CRM.
6. **Configure task management.** Phone steps and LinkedIn steps should show as tasks in a daily queue. Reps should see "Today: 15 calls, 8 LinkedIn DMs, review 3 replies" — not a blank screen and a sequence running in the background.

### Daily Workflow for Reps

A well-run sequence creates a daily operating rhythm:

- **Morning (30 min):** Review overnight replies (handle immediately), check new tasks from sequences
- **Call block (60-90 min):** Execute phone tasks, log outcomes, auto-advance sequences
- **Email + LinkedIn (40 min):** Personalize Tier 1 emails, execute LinkedIn tasks, engage with prospect content
- **Afternoon:** Enter new contacts into sequences, review sequence analytics weekly

## Branching Logic

Sequences aren't linear. Build decision points:

### If They Reply (Positive)
- Stop the sequence immediately.
- Respond within 1 hour during business hours.
- Move to discovery call scheduling.
- Reference their reply specifics — don't send a canned booking link.

### If They Reply (Objection)
- Stop the sequence.
- Handle the objection (see **objection-handling** skill).
- Branch based on the specific objection type — see the next section.

### If They Open But Don't Reply (Email)
- They're reading but not compelled enough. Change the angle.
- Move up the next phone touch — they know your name now.
- Try a shorter, more direct email. Your current one might be too long.

### If They Accept LinkedIn But Don't Respond to DM
- Wait 3-5 days, then engage with their content before DMing again.
- Don't DM a second pitch. Share something valuable instead.
- Use this connection to get visibility — they'll see your posts now.

### If Zero Engagement After Full Sequence
- Move to a different persona at the same company.
- Re-queue the original contact for 90 days with a new trigger.
- Don't keep hammering the same person with the same approach.

## Handling the 3 Most Common Replies

These three replies account for 70%+ of non-positive responses. Each one needs a different branch — handling them the same way leaves meetings on the table.

### "Not right now" / "Maybe in Q3" / "Timing's off"

This is the most valuable objection. They're saying the problem is real but the priority isn't today.

**Response:**
```
Totally understand — timing is everything. I'll circle back
in [specific month they mentioned].

One quick question so I don't waste your time when I do:
what would need to change for this to move up the priority
list?

{{signature}}
```

**Sequence action:** Pause the sequence. Set a task for the exact date they mentioned. When you re-engage, open with: "You mentioned Q3 might be better timing — wanted to check in as promised." Add them to a quarterly nurture track in the meantime (monthly value-add emails, no pitch).

### "Not interested" / "Remove me" / "Don't contact me again"

Respect it immediately. One reply, no pushback, no "but what if."

**Response:**
```
Appreciate the honesty, {{first_name}}. Removing you now.

If anything changes, I'm easy to find.
```

**Sequence action:** Stop the sequence. Mark as closed-lost. Do NOT re-enter them in another sequence. Do NOT have another rep reach out. Add to your suppression list. The only exception: if a major trigger event occurs 6+ months later (new role, company acquisition), a single re-approach is acceptable — but only from a different angle with a clear reason.

### "Send me more info" / "Can you email me something?"

This is the trickiest one. 80% of the time, it's a brush-off disguised as interest. 20% of the time, it's real. Your job is to figure out which.

**Response:**
```
Happy to — so I send the right thing, what specifically
would be most helpful?

I've got a case study on [topic A], a breakdown of [topic B],
or I can put together a quick summary of how we've helped
companies like {{company}}.

Which would be most useful?
```

**Sequence action:** Pause the sequence for 48 hours. If they reply with a specific request, they're real — send exactly what they asked for and follow up in 2 business days with a meeting request. If they don't reply to your clarifying question, treat it as "not right now" and resume the sequence at the next step.

## A/B Testing Sequences

### What to Test (In Order of Impact)

1. **Sequence structure** — 8 touches vs. 12 touches, channel order
2. **Timing** — 2-day gaps vs. 3-day gaps, morning vs. afternoon sends
3. **Channel mix** — Phone-heavy vs. email-heavy for the same persona
4. **Opening angles** — Trigger-based vs. pain-based vs. social-proof-based
5. **Individual message copy** — Subject lines, CTAs, email length

### Testing Rules

- Change one variable at a time.
- Minimum 50 prospects per variant before drawing conclusions.
- Measure reply rate AND meeting rate — high reply rate with no meetings means your targeting or qualification is off.
- Run tests for at least 2 full sequence cycles before deciding.

## When to Stop vs. Persist

### Stop When:
- They explicitly say "not interested" or "remove me"
- You've completed the full sequence with zero engagement
- They've left the company
- Research reveals they're a bad fit (wrong ICP, recent competitor purchase)
- You've hit the same account 3 times in 12 months with no traction

### Persist When:
- They opened emails but haven't replied (interest without action)
- They accepted your LinkedIn request (passive signal)
- A new trigger event hits (funding, leadership change)
- You find a different, better contact at the same account
- Your original outreach was weak and you have a materially better angle now

## Sequence Design Template

```
═══════════════════════════════════════
SEQUENCE: [Name]
Target: [Persona + Company Profile]
Duration: [X days]
Touches: [X total across Y channels]
Goal: [Book discovery call / Get referral / etc.]
Capacity: [X contacts/month @ Y% meeting rate = Z meetings]
═══════════════════════════════════════

DAY 1
  Channel: [Email / Phone / LinkedIn / Mail]
  Action: [Specific action]
  Content: [Brief description or link to template]
  Branch: If [condition] → [action]

DAY X
  Channel: ...
  Action: ...
  Content: ...
  Branch: ...

EXIT CRITERIA
  Positive reply → [Next step]
  "Not now" → [Set future task, quarterly nurture]
  "Not interested" → [Remove, suppress]
  "Send info" → [Qualify interest, pause 48hrs]
  No engagement after Day X → [New contact / Re-queue 90 days]
═══════════════════════════════════════
```

## Common Mistakes

- **Same message, different channel.** Sending your cold email as a LinkedIn DM isn't multi-channel. Each channel needs its own native format and tone.
- **Giving up after 3 touches.** The average deal takes 8-12 touches. Most reps stop at 3. The gap between those two numbers is where deals live.
- **No breakup email.** The breakup email consistently gets the highest reply rate in most sequences. Don't skip it.
- **Ignoring time zones and schedules.** Sending emails at 2am their time, calling during lunch — basic mistakes that kill reply rates.
- **Running the same sequence for all accounts.** Tier 1 accounts deserve a different sequence than Tier 3. One-size-fits-all sequences waste your best opportunities.
- **No capacity math.** Building a beautiful 14-day sequence without calculating how many contacts you need to enter per month to hit your meeting target. The math comes first.
- **Automating everything.** Fully automated sequences without manual phone and LinkedIn steps are just email campaigns with extra steps. The manual touches are where the meetings come from.
- **Treating "send more info" like a win.** It's usually a brush-off. Qualify it before you celebrate.

## Related Skills

- **cold-email** — Write the email touches in your sequence
- **cold-call** — Script the phone touches in your sequence
- **linkedin-outreach** — Craft the LinkedIn touches in your sequence
- **direct-mail** — Design the physical mail touches for enterprise sequences
- **lead-research** — Research accounts before building the sequence
- **referral-intro** — Use warm intros as sequence entry points
- **event-networking** — Layer event-based touches into sequences
- **objection-handling** — Handle replies that aren't a "yes"
