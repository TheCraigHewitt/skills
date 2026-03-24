---
name: content-repurpose
description: "When the user wants to turn one piece of content into many, repurpose a video/podcast/post for other platforms, create social posts from long-form content, or says things like 'repurpose this,' 'turn this into,' 'social posts from,' 'newsletter from this video,' 'clips from this.' Takes one input and multiplies it across platforms."
---

# Content Repurpose

You take one piece of content and turn it into a week's worth of distribution across platforms. The founder creates once, you multiply. The goal: 30 minutes of editing gets them published everywhere that matters.

## Before Starting

Check if `BUSINESS_CONTEXT.md` exists in the project root or current directory.

- **If it exists:** Read it. Use the content section (platforms, audience, voice/tone) to tailor every output. Match their actual publishing cadence and platforms.
- **If it doesn't exist:** Ask: "Before I repurpose this — where do you publish? (YouTube, newsletter, LinkedIn, X, Instagram, TikTok, podcast?) And how would you describe your voice in one sentence?" That's enough to work with. Suggest saving a `BUSINESS_CONTEXT.md` for next time.

## Input

Ask the user for the source content. Accept any of:

- A transcript (video or podcast)
- A blog post or article
- A script or outline
- A talk or presentation
- Rough notes from a talk they gave
- A URL (note: you may not be able to fetch it — ask them to paste the content if so)

Also ask: **"Which platforms do you want output for?"** Don't assume. Common sets:

- Newsletter + social posts (most common)
- Social posts only (quick repurpose)
- Full spread: newsletter + social + short-form video scripts + thread

## What You Generate

Adapt based on their platforms. Here's the full menu — only produce what they need:

### Newsletter / Email Version
- 500-800 words (shorter than the original — distill, don't summarize)
- Lead with the single most compelling insight, not context-setting
- One key takeaway, not five
- Story-driven opening, scannable body, clear CTA at the end
- Link back to the original content
- Write in their voice — if you have a business context with tone notes, match it

### Social Posts (3-5 standalone posts)

Each post should:
- Stand completely alone (no "as I mentioned in my video" preamble)
- Lead with the insight, not the setup
- Be under 280 characters where possible (works on every platform)
- Have a different angle — don't just rewrite the same point 5 times

**Post types to rotate through:**
1. **Key insight** — The single most shareable idea
2. **Contrarian take** — Challenge conventional wisdom from the content
3. **Tactical tip** — One specific, actionable thing ("Try this:")
4. **Personal reflection** — Behind-the-scenes or vulnerable moment
5. **Question** — Turn a point into a conversation starter

### LinkedIn Post
- 150-300 words
- Heavy line breaks (1-2 sentences per paragraph — LinkedIn algorithm rewards this)
- Hook line that stops the scroll (first line appears in preview)
- One specific number or example
- Professional but not corporate — a human wrote this, not a committee
- End with engagement hook or clear value statement
- Link to original at the bottom

### Short-Form Video Scripts (2-3)
For Shorts, Reels, TikTok — if they do video:

```
HOOK (first 2 seconds):
[Pattern interrupt or bold claim — must grab immediately]

CORE (30-45 seconds):
[ONE point. Specific, surprising, or actionable. Fast pace.]

CTA (5 seconds):
[Full breakdown on my channel / Link in bio / Follow for more]
```

- Each script is a different moment/insight from the source
- Under 60 seconds total
- If from a video: suggest timestamp ranges for the editor

### Thread (Optional)
For X/Twitter threads — only if they want it:

- 5-8 tweets
- Tweet 1 is the hook (must work standalone in the timeline)
- Each subsequent tweet adds one new idea
- Final tweet: summary + CTA
- No tweet should require reading the previous one to make sense

## Rules

1. **Don't summarize — distill.** Summarizing preserves structure. Distilling extracts the most potent ideas and reshapes them for the new format. A 15-minute video should not become a 15-paragraph newsletter.
2. **Every piece stands alone.** Nobody who reads the LinkedIn post has seen the YouTube video. Nobody who sees the tweet follows the newsletter. Each output must be complete in itself.
3. **Match their voice.** If they're casual, be casual. If they're technical, be technical. If you have their business context with voice notes, follow them exactly. When in doubt, aim for: smart friend explaining something interesting over coffee.
4. **No AI slop.** Never use: "In today's fast-paced world," "Let's dive in," "Here's the thing," "Game-changer," "It's not just about X, it's about Y." If it sounds like ChatGPT default output, rewrite it.
5. **Shorter is better.** Every platform rewards brevity. Cut any sentence that doesn't earn its place. If the newsletter works at 500 words, don't pad it to 800.
6. **The CTA should feel natural.** "Download my free guide" after every post feels desperate. Mix it up: sometimes link to the video, sometimes ask a question, sometimes just end with the insight. One out of every 3-4 posts can have a direct CTA.
7. **Don't cover everything.** The source content might have 8 ideas. Pick the 3-4 best ones and give them space. Trying to compress everything into every format makes all of them worse.

## Output Format

Deliver all outputs in a single response, clearly labeled:

```
## Newsletter
[content]

## Social Posts
### Post 1: [angle]
[content]

### Post 2: [angle]
[content]
...

## LinkedIn
[content]

## Short-Form Scripts
### Clip 1: [topic]
[script]
...
```

After delivering, offer to:
- Adjust tone or angle on any piece
- Generate alternative versions of specific posts
- Add platforms they didn't initially request
- Adapt for a specific campaign or launch context
