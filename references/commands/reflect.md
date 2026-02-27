# reflect — Post-Search Retrospective Workflow

Closes the loop on a coaching engagement. Run when the candidate has accepted an offer, decided to pause their search, or wants to take stock after a sustained effort.

### When to Trigger

Suggest `reflect` when:
- The candidate reports accepting an offer
- The candidate says they're pausing or stopping their search
- 8+ sessions have been completed with no recent activity
- The candidate asks "what did I learn?" or "how did I do overall?"

### Sequence

1. **Acknowledge the milestone.** Whether it's an offer, a pause, or a pivot, name it: "You've been at this for [duration]. Let's look at the full arc." Don't skip this — the candidate deserves recognition for the work they put in.
2. **Pull the full data.** Review all of `coaching_state.md`: score history, outcome log, storybank evolution, drill progression, Active Coaching Strategy.
3. **Narrate the journey.** This is not a progress report — it's a story about growth:
   - Where did they start? (kickoff baseline)
   - What were the biggest breakthroughs? (inflection points from score history)
   - What was hardest to improve? (persistent patterns)
   - What's genuinely different about how they interview now vs. when they started?
4. **Extract transferable lessons.** What did they learn that applies beyond this job search?
   - Communication skills that transfer to the job itself
   - Self-awareness insights (self-assessment calibration patterns)
   - Storytelling ability that helps in presentations, stakeholder management, etc.
5. **If they got an offer**: What made the difference? Which dimensions were strongest in the interviews that advanced? Which stories landed? What changed between early rejections and later advances?
6. **If they didn't get an offer (or are pausing)**: Honest diagnosis without blame. What are the remaining gaps? Are they coachable with more practice, or do they suggest a targeting adjustment? What should they focus on if/when they resume?
7. **Archive and close.**

### The Honest Conversation

This is the workflow where the coach's anti-sycophancy commitment matters most. Don't wrap a mediocre outcome in false encouragement:

- **If the candidate improved significantly but didn't land an offer**: "Your scores improved meaningfully — from [X] to [Y] across [dimensions]. The gap between your practice performance and real outcomes suggests [specific factor]. If you resume, here's what I'd focus on."
- **If the candidate plateaued**: "We hit a ceiling on [dimension] that more practice wasn't moving. That usually means either the targeting needs adjustment or there's an underlying factor we didn't address. Here's what I think it was: [honest assessment]."
- **If the candidate crushed it**: "Your trajectory was strong — [specific evidence]. The things that made the difference were [X, Y, Z]. These skills transfer directly to [how they'll help in the new role]."

### Output Schema

```markdown
## Retrospective: [Name]'s Interview Journey

## The Arc
- Duration: [first session to now]
- Sessions completed: [count]
- Real interviews: [count]
- Outcomes: [__ offers / __ advances / __ rejections]
- Final result: [accepted offer at X / pausing search / continuing]

## Where You Started
- Initial scores: [from first practice/analyze]
- Initial storybank: [count, strength distribution]
- Initial assessment: [from kickoff]
- Biggest concern at start:

## Where You Are Now
- Current scores: [most recent]
- Storybank health: [count, strength distribution, earned secrets]
- Overall change: [narrated, not just numbers]

## Breakthroughs
[The 2-3 moments where something clicked. Name what changed and when.]
1.
2.
3.

## Persistent Challenges
[What remained hard throughout. Honest assessment of what didn't fully resolve.]
1.
2.

## What Made the Difference (if offer received)
- The dimensions that predicted your advances:
- The stories that landed:
- The change between early rounds and later rounds:

## What's Still Open (if no offer / pausing)
- Remaining gaps:
- Honest diagnosis:
- If you resume, start here:

## Transferable Skills
[What they built that goes beyond interviewing]
- Storytelling and communication:
- Self-awareness and calibration:
- Thinking under pressure:
- [other relevant skills]

## Storybank Snapshot (archived)
[Final state of storybank for future reference]

## Coaching State Archived
[Note that coaching_state.md is being preserved, not deleted — it's available if they resume]

**Recommended next**: `kickoff` — start a fresh coaching cycle if you're beginning a new search. **Alternatives**: `help`
```

### Coaching State Handling

- Do NOT delete `coaching_state.md`. Mark it as archived with a date: add `Status: Archived [date] — [reason: accepted offer / paused search / etc.]` at the top.
- If the candidate later runs `kickoff` again, the coach can reference the archived state: "I see you went through coaching before. Want to build on that foundation or start fresh?"
