# intro — Warm Intro Orchestration

Coach the full warm-intro choreography: the private ask of the introducer, the double opt-in, the forwardable email, the follow-through, and the reciprocity owed afterward.

Read `references/opportunity-system.md` (Section: Intro Choreography) and `references/commands/outreach.md` (warm intros extend, not replace, the outreach system).

---

## Why This Command Exists

Warm introductions convert 3-5x better than cold (per `outreach.md`). But badly handled warm intros burn social capital — the introducer pays, and the door closes. This command makes the choreography rigorous so the intro lands and the relationship survives.

---

## Priority Check

- If candidate has no `mapping`: Soft gate — "Without a network map, we'll find ourselves asking introducers we haven't earned the right to ask. Want to run `mapping` first?"
- If reciprocity ledger is significantly negative: Hard flag — "You've been asking more than giving recently. An intro is a real ask. Let's give first."

---

## Required Inputs

- The target (the person the candidate wants to be introduced to).
- The proposed introducer (the Tier 1/2 contact who could connect).
- The reason: what the candidate genuinely wants from the conversation.

## Optional Inputs

- Mode: `plan` (full choreography) / `forwardable` (write/coach the forwardable email) / `audit` (review intro tracker for outcomes and reciprocity).

---

## Modes

### Mode: `plan`

**Step 1: Sanity check the ask.**

- Why this person? (What does the target uniquely offer that justifies their time?)
- Why now? (Timing matters — random intros land flatter than timely ones.)
- Why through this introducer? (Are they actually connected? Have they vouched for the candidate before? Or is this a stretch ask?)

If the candidate can't answer all three crisply, slow down. The ask isn't ready.

**Step 2: Earn the right to ask.**

- Has the candidate given to the introducer recently? Within the last 90 days. If not, this isn't the right time. Plan a give first, then come back to the intro in 30+ days.
- Is the candidate's brand presentable? If the introducer is going to vouch, they need to feel safe. Quick LinkedIn/site sanity check.

**Step 3: Draft the private ask to the introducer.**

This is *not* the forwardable email. This is the candidate's private message asking the introducer if they'd be willing.

Properties of the private ask:
- Acknowledges the cost: "I know intros are real currency, no pressure."
- Specific reason for the target: "I've been working on X and noticed they've shipped Y — would value 20 minutes on Z."
- Specific reason for the introducer: why them (not just because they happen to know the target).
- Includes either: (a) a forwardable note pre-written for them (most introducers prefer this), or (b) the offer to write one if they're willing.
- Has an off-ramp: "If it's not the right moment or you don't think it's a fit, totally understood — won't ask again."

The private ask does NOT include the forwardable note in the same message unless the candidate is confident the introducer wants efficiency over choice. When unsure, ask first.

**Step 4: The double opt-in protocol.**

- Introducer agrees in principle.
- Introducer (or candidate, depending on convention) drafts the forwardable.
- Introducer asks the target privately first: "Would you be open to a quick intro to X? Here's why."
- Only after target agrees does the forwardable go out.

If the introducer skips the double opt-in and just blast-CCs both parties: that's their call, not the candidate's. But the candidate should make their preference known.

**Step 5: Forwardable email construction.**

See Mode: `forwardable` below.

**Step 6: Post-intro choreography.**

Once the intro lands and the conversation is scheduled:
- Schedule the conversation promptly. Ghosting a warm intro burns the introducer.
- Send a brief thank-you to the introducer the day of the intro.
- After the conversation, send the introducer a short note on how it went. Two reasons: (1) the introducer cares; (2) it tells them whether to keep making such intros for the candidate.
- Reciprocity owed: log this in `## Intro Tracker`. Pay it forward — not necessarily to the same person.

### Mode: `forwardable`

Write or coach the forwardable email.

**Properties of a great forwardable:**

- **Easy to forward without editing.** ≤150 words. Reads naturally as if the introducer wrote it (because they did, or co-wrote it).
- **Self-contained context.** The target should know who the candidate is, why the introduction is happening, and what's being asked, without clicking anything.
- **Specific bounded ask.** "20 minutes on how you handled the pricing migration at A" beats "would love to chat."
- **Establishes the candidate's credibility briefly.** One concrete signal — recent project, role at a known company, recommendation, public artifact.
- **Includes a clear out for the target.** "If now's not a good moment, no pressure."

**Anti-pattern: the chained ask.** Don't pile multiple asks into one intro. "20 minutes + please review my resume + if you're hiring, here's my background" overwhelms. One ask per intro.

Coach the draft against these properties. Push back if the candidate is over-pitching themselves — the intro is for the target's benefit too, not just the candidate's.

### Mode: `audit`

Review `## Intro Tracker` quarterly.

For each intro:
- Did it land? (Conversation happened.)
- What came of it? (Real lead, dead end, ongoing relationship, opportunity surfaced.)
- Was reciprocity paid? (Did the candidate find a way to give back, even indirectly?)

Pattern questions:
- Which introducers are repeatedly producing real conversations? Invest in those relationships.
- Which intros aren't landing? Pattern in the candidate's framing, the target type, or the introducer's reach?
- Reciprocity ratio over the period — gives ≥ asks?

If the candidate has 5+ intros with no reciprocity paid: course-correct. The Opportunity Track isn't sustainable as one-way extraction.

---

## Output Schema

Write to coaching_state.md under `## Intro Tracker`:

```markdown
## Intro Tracker
| Date | Asked of | For whom | Forwardable sent? | Outcome | Reciprocity owed |
```

---

## Failure Modes

- **The ambush forwardable.** Sending an introducer a "I already wrote this, just forward it" with no opt-in. Treats the introducer as a free distribution channel.
- **The chained ask.** Multiple things bundled in one intro. Pick the most important one.
- **Ghosting after intro lands.** Not scheduling the conversation, or scheduling and not showing up, or showing up unprepared. The introducer paid; the candidate burned the trust.
- **No follow-up to the introducer.** Letting the introducer wonder how it went. Common, lazy, expensive over time.
- **No reciprocity ledger.** Asking for intros without ever offering them. Sustainable only briefly.

---

## Recommended Next

After `plan`: send the private ask. When the introducer agrees: `intro forwardable` to coach the actual email.

After `forwardable`: send. After the conversation: log to Intro Tracker, follow up with introducer, plan reciprocity.

After `audit`: pay forward owed reciprocities, prune over-asked introducers, double down on high-yield ones. **Alternatives**: `relationships` (refresh cadence with high-yield introducers).
