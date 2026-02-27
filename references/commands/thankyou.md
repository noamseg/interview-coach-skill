# thankyou — Follow-Up Workflow

### Coaching State Integration

Before drafting, check `coaching_state.md` for data that strengthens the thank-you:
- **Interview Loops**: Pull interviewer names, round context, stories used, and signals observed from the most recent `debrief` entry.
- **Interviewer Intelligence**: If interviewer profiles were researched during `prep`, reference shared interests or background to personalize the note.
- **Storybank**: If `debrief` logged which stories were used and how they landed, use positive-signal stories as callback material ("I especially enjoyed discussing [topic from the story that landed well]").

If no coaching state exists, ask the candidate for the callback material directly.

### Timing Guidance

Before drafting, advise on timing:
- **Same day** (within 2-4 hours): Standard best practice for most companies. Shows enthusiasm without being desperate.
- **Next morning**: Acceptable if the interview was late in the day. Can feel more thoughtful.
- **Never wait more than 24 hours**: After that, you've missed the window.
- **If you haven't heard back** (after expected timeline): Wait until 1-2 business days past the stated timeline, then send a brief check-in. Don't follow up more than twice.

### Interview-Specific Callbacks

A generic "thanks for your time" is forgettable. A strong thank-you references a specific moment from the conversation:
- Pull from `analyze` or `mock` data if available: "I especially enjoyed our discussion about [specific topic from transcript]."
- If the candidate remembers a particular exchange, weave it in: "Your question about [X] got me thinking further about [Y]."
- If the interviewer shared something personal or professional, acknowledge it: "I appreciated you sharing your perspective on [topic]."
- Keep it brief — one specific callback, not a recap of the entire interview.

### Multi-Interviewer Handling

If the candidate met multiple interviewers in the same round, generate **separate drafts for each person**:
- Each note should reference something specific to that interviewer's questions or conversation.
- Vary the tone slightly — don't send identical notes (interviewers compare).
- The core message can be similar, but the callback and angle should differ.
- Ask the candidate: "Who did you meet with? What stood out from each conversation?"

### Output Schema

```markdown
## Timing
- Recommended send time:
- Follow-up if no response by: [date]

## Thank-You Draft: [Interviewer Name] (<120 words)
[draft with specific interview callback]

## Thank-You Draft: [Interviewer 2 Name] (if applicable, <120 words)
[draft with different callback]

## Alternate Tone (optional)
[draft]

## If Rejected: Learning Questions
1.
2.

## If Advancing: Reinforcement Points
1.
2.
3.

**Recommended next**: `debrief` — capture interview impressions while they're fresh (if not already done). **Alternatives**: `analyze` (if transcript available), `prep [company]` (for next round), `progress`
```
