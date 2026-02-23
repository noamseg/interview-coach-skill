# debrief — Post-Interview Rapid Capture Workflow

Captures what happened in a real interview while it's still fresh. This is the bridge between the real interview and `analyze` — and for candidates without transcripts, it may be the only data source.

### When to Use

- Immediately after a real interview (same day, ideally within 1-2 hours)
- When the candidate doesn't have a transcript
- When they do have a transcript but want to capture subjective impressions before analysis
- When they need emotional processing before diving into scoring

### Sequence

1. **Emotional check first.** Before anything tactical, ask: "How are you feeling about it? One word." This serves two purposes: (a) it surfaces emotional state that affects memory quality, and (b) it shows the coach cares about the person, not just the performance. Don't skip this.
2. **Rapid question capture.** "What questions did they ask? Don't worry about exact wording — just get them down." Capture as many as they can remember. Prompt with format cues: "Was there a behavioral question? A 'tell me about a time' question? Anything unexpected?"
3. **Per-question self-assessment.** For each question they remember: "How did you feel about your answer? Strong, okay, or rough?" Don't score yet — capture their in-the-moment read.
4. **Signal reading.** "Did you notice any signals from the interviewer? Follow-up questions that showed interest? Moments where they seemed to lose interest or redirect? Any body language that stood out?" Capture these — they're high-value data even without a transcript.
5. **Surprise capture.** "Was there anything you didn't expect? A question you weren't prepared for, a format difference, something about the interviewer or environment?" Unexpected moments are often the most informative for coaching.
6. **Story usage log.** "Which stories did you use? Did any of them land differently than in practice?" Cross-reference with storybank — update `Last Used` dates and add performance notes.
7. **Immediate tactical notes.** "Is there anything you want to do differently for the next round, based on this one?" Capture their own coaching instinct.
8. **Transcript availability check.** "Do you have a recording or transcript? If so, we can do a full `analyze` later. If not, I'll work from what you've captured here."

### With vs. Without Transcript

**If transcript is available (or coming):**
- Save the debrief data to coaching state
- Tell the candidate: "Great — I have your impressions. When you're ready, run `analyze` with the transcript and I'll compare your read to what the data shows. The gap between how you felt and how it actually went is some of the most useful coaching data."
- The debrief becomes input to `analyze`, not a replacement for it

**If no transcript exists:**
- This debrief IS the data. Run a lighter version of analysis:
  - Score what you can from the candidate's recollection (flag lower confidence)
  - Focus on signal-reading data (interviewer behavior is easier to remember than exact words)
  - Identify which dimensions you can assess vs. which require a transcript
  - Say: "I'm working from your memory here, which means my confidence is lower than a transcript analysis. I can give you directional feedback, but I wouldn't hang precise scores on this."

### Emotional Triage

Based on the emotional check in step 1, adapt:

- **Candidate feels good**: Proceed normally. Capture data. Offer `analyze` or `thankyou` as next steps.
- **Candidate feels terrible**: Don't jump to tactical feedback. Acknowledge it: "That sounds rough. Let's capture what happened while it's fresh — we can analyze it later when there's some distance." Focus on capture, not coaching. Offer `hype` if another interview is coming soon. Reference the Psychological Readiness Module's rejection reframe if needed.
- **Candidate is uncertain**: This is actually the most valuable state — they don't know how it went. Say: "Uncertainty is normal. Let's capture the data and see what it actually tells us."

### Output Schema

```markdown
## Interview Debrief: [Company] - [Round]
- Date:
- Interviewer(s):
- Format:
- Emotional read: [candidate's one-word + brief context]

## Questions Recalled
1. [Question as remembered]
   - Self-assessment: [strong / okay / rough]
   - Story used: [S### or none]
   - Notes:
2. [...]

## Interviewer Signals Observed
- Positive signals (interest, follow-ups, engagement):
- Negative signals (redirects, loss of interest, clock-checking):
- Neutral/ambiguous:

## Surprises
- [anything unexpected — questions, format, environment, interviewer behavior]

## Stories Used
| Story | Question | How It Landed (candidate read) |
|-------|----------|-------------------------------|

## Candidate's Own Takeaways
- What to do differently:
- What worked:

## Coaching State Updates
- Storybank updates: [Last Used dates, performance notes]
- Interview Loop updates: [round completed, stories used, signals noted]

## Transcript Status
- [ ] Transcript available → run `analyze` when ready
- [ ] No transcript → directional analysis above is what we have

**Next commands**: `analyze` (if transcript available), `thankyou`, `hype`, `progress`
```

### Coaching State Integration

Update `coaching_state.md` per the State Update Triggers in SKILL.md.
