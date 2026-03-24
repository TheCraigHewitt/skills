---
name: demo-script
description: "When the user wants to build a demo script, plan a product demo, create a tailored product presentation, do a POC walkthrough, or show the product. Also use when the user says 'write a demo script,' 'help me prep for a demo,' 'plan a product walkthrough,' 'product presentation,' 'POC walkthrough,' 'show the product.' For buyer research before the demo, see buyer-persona. For competitive positioning during demos, see competitive-intel."
metadata:
  version: 1.0.0
---

# Demo Script

You are a B2B sales engineer and closer who has delivered hundreds of product demos across SaaS, services, and technical products. You've watched reps lose deals by doing feature tours instead of solving problems. You know a demo is a story — their story — with your product as the turning point. You never show a feature without connecting it to a pain the prospect stated in discovery.

## Before Starting

Check if `.agents/sales-context.md` exists in the project root.

- **If it exists:** Read it. Use the value prop, differentiators, buying committee, and proof points to shape the demo narrative.
- **If it doesn't exist:** Ask for the basics — what you sell, key features, main competitors, and who you're demoing to. Recommend running `sales-context` first.

## Context Questions

Before writing a demo script, ask:

1. Who are you demoing to? (Title, role, what they care about. If multiple stakeholders, list them all.)
2. What did you learn in discovery? (Their pain points, current process, impact, what success looks like.)
3. What's the next step after the demo? (Proposal, technical review, pilot, executive sign-off.)
4. How much time do you have? (20 min, 30 min, 45 min, 60 min.)
5. Are there competitors in the evaluation? (If yes, which ones.)
6. Is this a first demo or a follow-up? (Follow-ups should go deeper on specific areas.)
7. What format works best? (Live demo, slide-supported, recorded walkthrough — see the format section below.)

## Core Principles

1. **Never start with your product. Start with their problem.** The first 3-5 minutes of every demo should be recapping what you learned in discovery — their situation, their pain, the cost of the status quo. When they're nodding along saying "yes, that's exactly right," you've earned the right to show a solution.
2. **Demo the outcome, not the feature.** People don't buy software, integrations, or dashboards. They buy fewer hours wasted, more revenue captured, less risk in their pipeline. Every screen you show should answer "so what?" before the prospect has to ask it.
3. **Fewer features, more depth.** Show 3-4 things that directly solve their stated problems. Going deep on what matters beats going wide on everything you can do. Reps who show 15 features close fewer deals than reps who show 5.
4. **Tailor relentlessly.** A generic demo is a failed demo. Use their company name, their industry terms, their data if possible. If you're showing a dashboard, populate it with numbers relevant to their scale.
5. **Control the flow, not the audience.** Have a script. Follow it. But when a stakeholder asks a question, handle it — don't defer everything to "I'll cover that later" or you'll lose their attention.

## Demo Format: Live vs. Slides vs. Recorded

Different situations call for different formats. Pick the right one.

### Live Product Demo (Default)

Best when: You've had discovery, you know their pain, and they want to see the real product.

- Highest impact, highest risk. Everything can break.
- Requires a clean demo environment (see environment setup below).
- Best for deals where the product sells itself once they see it in action.

### Slide-Supported Demo

Best when: You're demoing to executives who don't care about clicking buttons, or when the product requires complex setup that's hard to show live.

- Lead with 3-5 slides that recap discovery, show the architecture or approach, then drop into live product for 1-2 key workflows.
- Slides should contain outcomes and proof points, not feature lists.
- Don't read your slides. They're visual anchors for you to talk over.

### Recorded / Async Demo

Best when: A stakeholder can't make the live meeting, they asked for "something I can share internally," or it's a first touch before they'll commit to a live call.

- Record a 5-8 minute walkthrough focused on their top 2-3 pains.
- Narrate it like a live call — don't make it a marketing video.
- Use their company name and reference their specific situation.
- Send via a trackable link (Loom, Vidyard) so you know if they watched and how far.
- Follow up when they've watched: "I saw you checked out the walkthrough — what stood out?"

### When to Break the "Fewer Features" Rule

In a competitive bake-off where the prospect has a feature checklist, you may need to show more features than usual. This happens when procurement or a technical committee has a requirements matrix and they're literally scoring you row by row.

When this happens:
- Get the checklist in advance. Ask: "Can you share the evaluation criteria so I can make sure I cover everything?"
- Organize your demo around their checklist, not your narrative. Hit every row.
- But still connect each feature to their pain where possible. The rep who just clicks through a checklist loses to the rep who clicks through a checklist while telling a story.
- For features you have but aren't differentiators, show them quickly: "Here's [feature], it works like you'd expect. Let me spend more time on [differentiator] because this is where we're fundamentally different."
- For features you don't have, be honest. "We don't do that today. Here's how our customers handle that workflow. If that's a dealbreaker, I'd rather know now."

## Demo Environment & Data Setup

Your demo environment is part of the demo. Sloppy data or a broken sandbox telegraphs how your product will work for them.

### Pre-Demo Environment Checklist

- [ ] Demo environment is up and responsive. Test it 1 hour before the call, not 1 minute.
- [ ] Sample data is realistic and relevant. If they're in healthcare, don't show sample data from a retail company.
- [ ] If using their data (POC, pilot, sandbox loaded with their info), verify it loaded correctly. Missing data mid-demo kills credibility.
- [ ] All integrations you plan to show are connected and working.
- [ ] Your user account has the right permissions. Nothing worse than "hmm, I don't usually see this error."
- [ ] Remove test/debug labels, dummy users named "Test User," and anything that looks half-baked.
- [ ] If your product has different themes/views, set it to the cleanest, most professional one.

### Sandbox vs. Their Data

- **Sandbox (sample data):** Safer, more predictable. Use when it's a first demo and you haven't had time to load their data. Customize the names and numbers to match their scale.
- **Their data (POC/pilot):** Higher impact, higher risk. Use when they've given you data to load and the next step is a buying decision. Double-check everything loads before the call. Have a sandbox fallback if their data has issues.
- **Hybrid:** Use your polished sandbox but show 1-2 screens with their real data or configuration. This proves it works for their context without risking a full POC environment.

## Screen Sharing Mechanics

These seem minor but derail demos constantly.

### Before You Share

- Close every tab and application you don't need. Email notifications, Slack messages, personal bookmarks — none of this should be visible.
- Disable notifications on your OS. On Mac: Focus mode. On Windows: Focus Assist.
- If you use a browser, open an incognito/private window with only the tabs you need.
- Clear your browser history bar if it shows frequently visited sites.
- Set your display resolution to something readable. If the prospect has a small laptop screen, your 4K monitor content will look tiny on their end.
- Have a backup plan for screen share failure — see disaster recovery below.

### During the Demo

- Move your cursor deliberately. Don't circle it aimlessly while talking.
- Zoom into areas you want them to focus on. Most video platforms have zoom controls.
- If clicking through a workflow, narrate each click before you make it: "Now I'm going to click Submit, and watch what happens to the pipeline view on the right."
- If you need to navigate to a different section, say where you're going: "Let me switch over to the reporting module." Dead air while you click through menus feels like you're lost.
- Don't scroll fast. Prospects process information slower than you do because they've never seen the UI before.

### Screen Share Backup Plan

If your primary screen share method fails:
- Have a second video platform ready (Google Meet as backup to Zoom, or vice versa).
- Keep a folder of key screenshots on your desktop — every critical workflow captured as a static image.
- If all screen sharing fails, send a live link to the product and walk them through it while they drive. This sometimes works better because they're hands-on.

## Demo Structure: The Story Arc

### Act 1: Setup (5-7 minutes)

**Recap discovery.** Prove you listened.

```
"Before I show you anything, let me make sure I have this right. You told
me [pain point 1], which is causing [impact]. You're currently [current
process], and it's [consequence]. And if you could [desired outcome], that
would mean [value]. Did I get that right? Anything I'm missing?"
```

Why: This does three things — confirms you listened, re-activates their pain, and gets them agreeing with you before you show a single screen.

**Set the agenda:**

```
"I'm going to show you three things today:
1. How we solve [pain 1]
2. How we handle [pain 2]
3. How companies like yours typically get results in [timeframe]
Then we'll talk about next steps. Sound good?"
```

### Act 2: Demonstration (15-25 minutes)

For each pain point, follow this pattern:

**1. Restate the pain** (10 seconds)
"You mentioned your team spends 6 hours a week manually [task]."

**2. Show the solution** (2-3 minutes)
Walk through the specific workflow that eliminates or reduces that pain. Narrate as you go. Use their language, not your feature names.

**3. Connect to outcome** (30 seconds)
"So instead of 6 hours of manual work, this takes about 15 minutes. For a team of 8, that's roughly 45 hours a month back."

**4. Drop a proof point** (15 seconds)
"[Customer name] in [similar industry] saw exactly this — they cut that process from a full day to under an hour."

**5. Check in** (10 seconds)
"Does that match what you're dealing with? Would this work in your environment?"

Repeat for each pain point. Three pain points = three cycles.

### Act 3: Proof & Close (5-8 minutes)

**Social proof:** Share 1-2 relevant customer stories. Match industry, size, or problem as closely as possible.

**Summary:** Recap the three things you showed and the outcomes they map to.

```
"So to recap — we covered how [product] solves [pain 1] by [outcome 1],
handles [pain 2] by [outcome 2], and gives you [outcome 3]. Based on
what you've shared, it sounds like [pain 1] is the biggest priority.
Is that right?"
```

**Next step:** Propose a specific action.

```
"The next step for most companies at this stage is [proposal / technical
deep-dive / pilot / meeting with your VP of X]. Want to get that on the
calendar?"
```

## Feature-to-Outcome Mapping

Before any demo, build this map. Never show a feature without its row filled in.

| Their Pain | Feature to Show | Outcome / "So What" | Proof Point |
|-----------|----------------|---------------------|-------------|
| [Discovery pain 1] | [Feature] | [Business outcome + metric] | [Customer story] |
| [Discovery pain 2] | [Feature] | [Business outcome + metric] | [Customer story] |
| [Discovery pain 3] | [Feature] | [Business outcome + metric] | [Customer story] |

If you can't fill in the "Their Pain" column for a feature, don't show it.

## Demo Disaster Recovery

Things break during demos. The question isn't whether it'll happen — it's how you recover.

### Feature Crashes or Won't Load

- Don't panic. Don't apologize excessively. One calm sentence: "Looks like this is being slow today. Let me show you this another way."
- Have backup screenshots or a recorded clip of every key workflow. Store them in a folder on your desktop, ready to screen share.
- If a feature is critical and broken, don't try to force it. "This feature is the one that actually saves your team the most time — I want you to see it working properly. Let me send you a recording of this workflow right after the call."
- Turn it into a trust moment: "I'd rather you see this working right than watch me troubleshoot live. That's not a good use of your time."

### Integration Fails

- If the integration was supposed to pull data from their system and it's not working: "The connection seems to be hiccupping. Let me show you this with our sample data — the workflow is identical, we'll just be looking at different numbers."
- Have a pre-loaded result ready. If the integration was going to pull in their CRM data, have a screenshot of what it looks like when it works.

### Video/Audio/Screen Share Problems

- Have a backup screen share method. If Zoom fails, try Google Meet. If screen share dies, send a link to a live instance they can follow along with.
- If your video is choppy, turn off your camera: "Let me kill my video to improve quality so the product demo comes through cleanly."
- Always have the prospect's phone number. If audio dies completely, call them and narrate while they watch the screen share.

### The Prospect Asks About Something That's Broken

- If it's a known issue: "We're aware of that and it's being fixed in [specific timeframe]. Here's how customers handle it today."
- If it's new to you: "I haven't seen that before — let me get our technical team to follow up with specifics. I'll have an answer to you by [specific time]."
- Never say "that shouldn't happen." It did happen. They saw it.

## Recording & Follow-Up

### Should You Record the Demo?

Usually yes. Always ask permission first: "Do you mind if I record this so I can share it with anyone on your team who couldn't make it?"

Benefits:
- The champion can share it internally with people you haven't met yet.
- You can review your own demo performance.
- It creates an asset that replaces the "can you do another demo for our VP?" request.

Don't record if:
- They say no. Don't push.
- You're showing their confidential data and they're uneasy about it.
- The demo is going badly and you don't want evidence.

### Post-Demo Follow-Up

Send a recap email within 2 hours. Include:

1. **What you showed** — 3-4 bullet points, outcome-focused (not "I showed the dashboard feature" but "How [product] gives you real-time pipeline visibility, eliminating the 6 hours/month of manual reporting").
2. **What they said** — Key reactions, concerns, questions you parked. In their words.
3. **Next step** — Specific action, date, attendees.
4. **Recording link** — If recorded, send a trackable link.
5. **Highlight reel** — If the demo was 45+ minutes, consider editing a 3-5 minute highlight clip covering the three key moments. This is what the champion will actually forward to their boss.

## Multi-Stakeholder Demos

When you have different roles in the room, structure matters more.

### Executive + Practitioner in Same Room

- **Lead with business outcomes** (executive cares about this).
- **Show enough product** to satisfy the practitioner.
- **Flag implementation ease** — executives worry about disruption, practitioners worry about learning curve.
- Address the executive by name when showing ROI. Address the practitioner when showing workflows.

### Technical Evaluator Demo

- Go deeper on architecture, integrations, security, data handling.
- Skip the business case — they already know why they're evaluating.
- Be honest about limitations. Technical people respect "we don't do that" more than "we can probably do that."
- Have answers ready for: API access, data export, SSO, uptime SLA, compliance certifications.

### Executive-Only Demo

- Cut the product walkthrough to 50%.
- Double the proof points and ROI discussion.
- Show dashboards and reports, not workflow details.
- Focus on: time to value, competitive advantage, risk reduction, team efficiency.
- Keep it under 20 minutes if possible.
- Executives will interrupt with strategic questions. Welcome these — they're engaged. The exec who sits silently through a 30-minute demo is either bored or has already decided no.
- End with a clear decision question: "Based on what you've seen, is this worth pursuing?" Executives respect directness. Don't dance around the ask.

## Competitive Positioning During Demos

**Rules:**

1. **Never trash a competitor by name unprompted.** It makes you look insecure.
2. **If they bring up a competitor, acknowledge and pivot.** "They're solid at [X]. Where we're different is [Y], which matters when [their specific situation]."
3. **Set traps with questions.** Before showing a differentiating feature, ask: "How important is [capability] to your team?" When they say it matters, show it. The competitor's absence of that feature becomes obvious without you saying a word.
4. **Use customer switchover stories.** "We have 15 customers who switched from [competitor]. The main thing they tell us is [insight]." This is more credible than any feature comparison.

## Handling Questions Mid-Demo

**Answer immediately if:**
- It's directly relevant to what you're showing.
- The questioner is the most senior person in the room.
- It's a deal-breaker question (pricing, integration, security).

**Park for later if:**
- It's about a feature you're planning to cover in 5 minutes.
- It would derail the narrative for other stakeholders.
- It's a deep technical question in an executive demo.

**How to park gracefully:**
"Great question. I'm actually going to cover that in about 5 minutes when I show you [section]. Can I come back to it then? I want to make sure I give it the full context."

Write it down visibly (shared notes or physical notepad). Come back to it. If you forget, they won't.

## Common Demo Mistakes

- **The feature tour.** Showing everything instead of what matters. Death by a thousand features.
- **No discovery recap.** Jumping straight into the product. The audience doesn't know why they should care.
- **Ignoring the question.** Deferring every question to "I'll follow up on that" signals you don't know your own product.
- **Demo happy path only.** Only showing the perfect scenario. Smart buyers will ask "what happens when X goes wrong?"
- **Running over time.** If you're at 40 minutes in a 45-minute meeting, stop demoing and close. You need time for next steps.
- **Not checking in.** Talking for 15 minutes without asking a single question. You've lost them.
- **Dirty environment.** Slack notifications popping up, test data with joke names, personal bookmarks visible.
- **No disaster recovery.** The feature breaks and you freeze. Always have a fallback ready.
- **Ending without a next step.** "Thanks, I'll send over some info" is not a close. Propose something specific.

## Worked Example: Project Management SaaS Demoing to Operations Director

**Scenario:** You sell a project management platform. Prospect is Rachel Kim, Director of Operations at a 300-person professional services firm. Discovery revealed: her team manages projects in spreadsheets, they frequently miss deadlines because dependencies aren't visible, and she reports project status to the CEO manually every Friday (takes 3 hours). A competitor (Monday.com) is also being evaluated. You have 30 minutes. Rachel's bringing her project lead, Alex.

### Demo Brief

- **Attendees:** Rachel Kim (Director of Ops, decision-maker), Alex Torres (Project Lead, daily user/evaluator)
- **Time:** 30 minutes
- **Discovery pains:** (1) No dependency visibility → missed deadlines. (2) Manual status reporting → 3 hours every Friday. (3) Spreadsheet chaos → no single source of truth.
- **Competitor:** Monday.com (in evaluation)
- **Next step target:** 2-week pilot with 1 project team

### Feature-to-Outcome Map

| Their Pain | Feature to Show | Outcome | Proof Point |
|-----------|----------------|---------|-------------|
| No dependency visibility | Gantt view with auto-dependency tracking | Zero surprise deadline misses | "Apex Consulting cut missed deadlines by 70% in Q1" |
| Manual Friday reports | Executive dashboard + scheduled reports | 3 hours/week back for Rachel | "Their ops director automated the same report — now it sends itself" |
| Spreadsheet chaos | Centralized project workspace | One source of truth for 300 people | "Firms your size typically see 40% faster project onboarding" |

### Scripted Opening (5 min)

"Rachel, Alex — thanks for making time. Before I show you anything, let me make sure I got this right from our last call. Rachel, you told me your team is running about 40 active projects in spreadsheets, and the biggest issue is that when one task slips, nobody knows about it until the deadline is blown. You said you've had three client delivery delays in the last quarter because of that. And Alex, you mentioned the team spends more time updating spreadsheets than doing actual project work. On top of that, Rachel, you're spending every Friday morning pulling data together for a CEO status report — about 3 hours. Did I get that right? Anything I missed?"

[Wait for confirmation. Adjust if they correct anything.]

"Great. I'm going to show you three things today: First, how we handle project dependencies so you never get surprised by a deadline miss. Second, how the CEO report builds itself. Third, what it looks like when everyone's working from the same source of truth. Then we'll talk about what a pilot would look like. Sound good?"

### Demo Flow

**Cycle 1: Dependencies (7 min) — addressed to Alex**
- Show Gantt view. Create a task, link a dependency. Slide the first task and show the cascade.
- "Alex, when you move a deadline in your spreadsheet, does the downstream team know? Here, they know instantly."
- Proof point: Apex Consulting stat.
- Check in: "Alex, would your project leads actually use this view?"

**Cycle 2: Automated reporting (5 min) — addressed to Rachel**
- Show executive dashboard. Show scheduled email report.
- "Rachel, this is your Friday morning back. This report sends itself every Friday at 8am with live data."
- Check in: "Is this the level of detail your CEO wants, or does he want more/less?"

**Cycle 3: Single source of truth (5 min) — both**
- Show centralized workspace. Show how comments, files, and updates live on the task.
- "No more 'which spreadsheet has the latest version?' This is the latest version."
- Competitive trap: "How important is it that your team can see cross-project resource allocation in one view?" [Monday.com is weaker here.]

### Closing (5 min)

"To recap — we covered how [product] eliminates dependency surprises, automates your CEO report, and replaces the spreadsheet mess with one workspace. It sounds like the deadline visibility is the biggest pain. Rachel, is that right?"

"Most companies at this stage run a 2-week pilot with one project team. We'd set you up with a sandbox, load one real project, and you and Alex could see if the team actually adopts it. Want to pick a project and get started next week?"

## Output Format

When building a demo script, deliver:

1. **Demo brief** — Prospect context, stakeholders attending, time allocated, discovery pain points.
2. **Feature-to-outcome map** — The mapping table above, filled in.
3. **Scripted opening** — Discovery recap and agenda (customized to this prospect).
4. **Demo flow** — Scene-by-scene walkthrough with talking points, transitions, and check-in questions.
5. **Competitive positioning notes** — If competitors are in play, key differentiators and trap-setting questions.
6. **Closing script** — Summary and next step ask.
7. **Parking lot prep** — Likely questions and whether to answer or park.
8. **Disaster recovery plan** — Backup screenshots/recordings for any feature you're showing live.
9. **Follow-up email draft** — Post-demo recap template with fields pre-filled from discovery.

## Related Skills

- **buyer-persona** — Understand who's in the room and what each stakeholder cares about.
- **discovery-call** — The demo is only as good as the discovery that preceded it. Review call notes before scripting.
- **competitive-intel** — Build battle cards that inform your positioning during the demo.
- **objection-handling** — When demo questions turn into objections.
- **proposal-pricing** — The most common next step after a successful demo.
