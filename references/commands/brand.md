# brand — Personal Brand Strategy

Build the personal brand thesis: what the candidate wants to be known for, to whom, on which channels, with what defensible POV. Brand is the strategic layer that `pitch`, `content`, `linkedin`, and `projects` all serve.

Read `references/opportunity-system.md` (Section: Brand Distribution Thesis), `references/commands/pitch.md` (positioning is a building block of brand, not a substitute), and `references/differentiation.md`.

---

## Brand vs. Pitch

These are different artifacts. Don't conflate them.

- **`pitch`** = a positioning *statement* — the thing the candidate says when introducing themselves in a conversation. Granular. Often role-specific.
- **`brand`** = a positioning *strategy* — what the candidate wants to be known for over months and years, to whom, through which channels, with what defensible point of view. Architectural.

A brand without a pitch is invisible in conversation. A pitch without a brand is a sentence with no compounding behind it.

---

## Priority Check

- If no `compass`: Hard gate — "Brand without compass builds for the wrong audience. Run `compass` first."
- If no `targets`: Soft gate — "Brand needs an audience. Without a target ecosystem, we'll pick an audience by guess. Want to run `targets` first?"
- If no `pitch`: Note — "We can build brand strategy first; pitch will derive from it. Both work in either order, but pitch is faster to ship and is a usable byproduct."

---

## Required Inputs

- Compass output (aligned-opportunity sentence + anti-criteria).
- Target ecosystem (segments + communities).
- Storybank (earned secrets feed defensible POV).

## Optional Inputs

- Depth: Quick (1 session, thesis + audience + channels + cadence) / Standard (2 sessions, default — includes POV development + anti-brand + 90-day commitment) / Deep (3 sessions, full distribution thesis with proof-of-work plan + content backlog seeding).
- Existing brand artifacts (LinkedIn About, Twitter bio, personal site, recent posts).
- Public reputation evidence (where the candidate has been cited, mentioned, invited).

---

## Logic / Sequence

### Step 1: Thesis Extraction

Ask, in order — one question at a time:

1. "What's one thing that, if everyone in your target ecosystem believed it about you, would change how opportunities flow?"
2. "Now narrow. Pick one — not three."
3. "Is this thing true? What would the strongest evidence be that you can actually back this thesis up?"

The thesis is a single sentence, narrow:
- Weak: "An expert in product management."
- Better: "The PM you call when your pricing model is breaking trust with customers."
- Strongest: "The PM who has rebuilt pricing systems at three companies and writes about how trust gets metabolized into revenue."

The thesis must:
- Be narrow enough that 5-10 specific people in the target ecosystem could think of the candidate when the situation arises.
- Tie to a real artifact-creating capability (something the candidate can show, ship, write).
- Not be a job title.

### Step 2: Defensible POV

A thesis without a defensible POV is a job title. The candidate must articulate at least one belief that most peers do not share, with a real reason for holding it.

Pull from:
- Storybank earned secrets — these are the rawest material.
- Patterns the candidate has noticed across companies they've worked at.
- Things they've gotten wrong and what they now believe instead.
- Common-wisdom claims they think are wrong.

Test the POV: "If you said this in a room of peers, would at least 30% disagree?" If everyone agrees, the POV isn't defensible — it's consensus dressed up.

Capture 1-3 POVs. The candidate's content and projects will be the demonstration of these POVs over time.

### Step 3: Audience Definition

Audience must be at the intersection of:
- The compass aligned-opportunity sentence (who would be the source of work the candidate wants).
- The target ecosystem segments and communities.
- The candidate's authentic interest (who they actually want to be in conversation with).

If audience and target ecosystem don't overlap, the brand will build the wrong career.

Be specific: "founders of B2B SaaS companies between Series A and Series C who are wrestling with pricing for the first time" beats "people in tech."

### Step 4: Channel Strategy

Rank channels: primary, secondary, tertiary. Three is the maximum.

For each channel:
- Why this channel for this audience? (Where does the audience actually pay attention?)
- What format does this channel reward? (LinkedIn rewards short hot takes + long carousels; Substack rewards essays; Twitter/X rewards real-time signal; podcasts reward conversations with credible hosts; conferences reward talks.)
- What's the realistic cadence the candidate can hold for 12 months?

The channel ranking from `linkedin.md` and `outreach.md` is reused: LinkedIn is foundational because it's where credibility is checked. But LinkedIn is rarely the *only* channel, and for many segments it's not the primary channel.

### Step 5: Cadence Commitment

The cadence is the floor the candidate commits to for at least the next 90 days. Examples:

- "1 long-form essay per month + 1 short post per week on LinkedIn."
- "1 podcast appearance per quarter + 4 short technical posts per month + 1 conference talk per year."
- "1 open source contribution shipped per month + 1 detailed write-up of the work."

The cadence must:
- Be sustainable. A cadence the candidate burns out at fails.
- Be specific. "Post regularly" is not a cadence.
- Have an audit point (every 30 days, did they hold the floor?).

### Step 6: Anti-Brand

What the candidate refuses to say or do, even when easy. Examples:

- "Won't write about prompt-engineering tips, even though they get traction. It's not the brand thesis."
- "Won't ghostwrite or LLM-launder posts. The voice is the asset."
- "Won't cross-post my employer's marketing. The brand is mine, not theirs."
- "Won't take consulting work outside the thesis just for revenue."

Anti-brand entries are the integrity test. A brand without edges does not pull aligned opportunities.

### Step 7: Success Signals

What proves the brand is working? Define 2-4 leading indicators (12-week horizon) and 2-4 lagging indicators (12-month horizon).

Leading: cadence held, target audience is in the comments/replies, named referrals back to a specific post, invitations to community spaces.

Lagging: inbound count + alignment, citations or mentions in target audience's own content, invitations to talk/write/advise, opportunities arriving that satisfy the compass sentence.

---

## Output Schema

Write to coaching_state.md under `## Brand Strategy`:

```markdown
## Brand Strategy
- Date: [date]
- Depth: [Quick / Standard / Deep]
- Brand thesis: [one sentence — narrow]
- Defensible POV: [1-3 beliefs + why]
- Audience: [specific intersection of compass and target ecosystem]
- Distribution channels (ranked): [primary, secondary, tertiary]
- Cadence commitment: [specific frequency + format per channel]
- Success signal — leading: [list]
- Success signal — lagging: [list]
- Anti-brand: [list of refusals]
- Next review: [date 90 days out]
```

---

## Failure Modes

- **Brand-as-job-title.** "Senior PM" is not a brand. Force narrowness.
- **Borrowed brand.** Mimicking a recognizable operator's brand. Push back — it's recognizable because it's authentic to *them*. The candidate's brand needs the candidate's voice and earned secrets.
- **Five primary channels.** Channel overload guarantees nothing compounds. Force three or fewer.
- **Cadence aspiration.** The candidate commits to a cadence they can't hold. Model the time cost honestly.
- **No anti-brand.** A brand without edges absorbs everything and pulls nothing. Force at least three anti-brand entries.
- **Thesis with no proof-of-work pathway.** A thesis the candidate can't yet back up. Either revise the thesis or pair brand with `projects` to build the proof.

---

## Recommended Next

**Recommended next**: `content` — convert the brand strategy into a 90-day content calendar with the first 3-5 pieces backlogged. **Alternatives**: `linkedin` (Standard depth — bring the existing profile in line with the thesis), `projects` (if the brand thesis needs proof-of-work to back it before content lands), `pitch` (if the candidate also needs the conversational positioning artifact).
