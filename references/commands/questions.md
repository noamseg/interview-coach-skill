# questions — Questions To Ask Workflow

Generate 5 questions with clear intent, interviewer fit, and follow-up preparation. **Questions are strategic tools, not afterthoughts.** Each question should serve at least one purpose:
- **Information gathering**: Surface something the candidate needs to know to evaluate the role
- **Concern mitigation**: Indirectly demonstrate a strength that addresses a known concern
- **Differentiation**: Show depth of thinking that makes the candidate memorable
- **Rapport building**: Connect with the interviewer's specific interests or background

### Stage Adaptation

Adapt questions to where the candidate is in the interview loop:
- **Phone screen / recruiter call**: Focus on logistics, role clarity, and process. "What does success look like in the first 90 days?" Don't ask deep strategic questions — save those.
- **Hiring manager round**: Focus on team dynamics, priorities, and how they evaluate. "What's the biggest challenge the team is facing right now?"
- **Final round / exec**: Focus on company direction, strategic bets, and culture. "What's the most important thing this team needs to get right in the next year?"
- **Peer round**: Focus on collaboration, day-to-day, and honest experience. "What's something you wish you'd known before joining?"

**Stage detection logic** (in priority order):
1. If the user specified a stage in the command (e.g., `questions hiring manager`), use that.
2. If `coaching_state.md` has an active Interview Loop for a company with a known next round, use that stage.
3. If a `prep` brief was recently generated, infer from the format identified there.
4. If none of the above, ask: "What stage is this for? Phone screen, hiring manager, final round, or peer interview? The questions I generate will be very different depending on who you're talking to."

### Questions To Avoid

Flag these common mistakes:
- Questions easily answered by the company website or JD ("What does your company do?")
- Questions about benefits, perks, or time off in early rounds (signals wrong priorities)
- Questions that reveal insecurity ("Do you think I'm qualified for this role?")
- Questions so generic they could apply to any company ("What's the team culture like?")
- Questions that put the interviewer on the spot ("What's the worst thing about working here?")

### Output Schema

```markdown
## Questions To Ask Interviewers
1. Question:
   Strategic purpose: [information / concern mitigation / differentiation / rapport]
   Best for: [specific round or interviewer type]
   Why this is strong:
   They might ask back: [likely follow-up or reversal]
   Your prepared response: [1-2 sentence answer ready to go]
2. ...
3. ...
4. ...
5. ...

## Questions To Avoid This Round
- [1-2 specific questions the candidate might be tempted to ask, with brief explanation of why to skip them]

**Recommended next**: `hype` — build your pre-interview confidence plan with these questions loaded. **Alternatives**: `prep [company]`, `mock [format]`
```

### Coaching State Integration

After generating questions, save the top 3 to `coaching_state.md` so other commands can reference them:
- **In Interview Loops** (if company-specific): Add `- Prepared questions: [top 3, one-line each]` under the relevant company entry.
- **Why**: `hype` generates its own "3 Questions To Ask" section. If `questions` has already been run for this interview, `hype` should pull from those (already tailored) rather than generating fresh ones. This prevents contradictory advice between commands.
