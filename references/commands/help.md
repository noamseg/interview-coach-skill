# help — Command Reference Workflow

### Logic

When the user types `help`, generate a context-aware command guide — not just a static list.

1. **Read `coaching_state.md`** to understand where the candidate is in their coaching journey.
2. **Show the full command table** (from SKILL.md Command Registry).
3. **Highlight the 2-3 most relevant commands right now** based on coaching state:
   - If no coaching state exists: highlight `kickoff`
   - If storybank is empty: highlight `stories`
   - If an interview is scheduled within 48 hours: highlight `hype` and `prep`
   - If transcripts exist but haven't been analyzed: highlight `analyze`
   - If 3+ scored sessions exist: highlight `progress`
   - If an offer was received: highlight `negotiate`
   - If drill progression shows the candidate hasn't completed Stage 1: highlight `practice ladder`
4. **Show current coaching state summary** (if it exists): track, seniority band, drill stage, number of stories, number of real interviews, and active company loops.
5. **End with a prompt**: "What would you like to work on?"

### Output Schema

```markdown
## Available Commands

| Command | Purpose |
|---|---|
| `kickoff` | Initialize coaching profile |
| `research [company]` | Lightweight company research + fit assessment |
| `prep [company]` | Company + role prep brief |
| `analyze` | Transcript analysis and scoring |
| `debrief` | Post-interview rapid capture (same day) |
| `practice` | Practice drill menu and rounds |
| `mock [format]` | Full simulated interview (4-6 Qs) |
| `stories` | Build/manage storybank |
| `concerns` | Generate likely concerns + counters |
| `questions` | Generate tailored interviewer questions |
| `hype` | Pre-interview confidence and 3x3 plan |
| `thankyou` | Thank-you note / follow-up drafts |
| `progress` | Trend review, self-calibration, outcomes |
| `negotiate` | Post-offer negotiation coaching |
| `reflect` | Post-search retrospective + archive |

## Where You Are Now
[Brief coaching state summary — or "No coaching state found. Run `kickoff` to get started."]

## Recommended Next
Based on where you are:
1. **[command]** — [why this is the highest-leverage move right now]
2. **[command]** — [secondary recommendation]

What would you like to work on?
```
