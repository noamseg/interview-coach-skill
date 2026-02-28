# help — Command Reference Workflow

### Logic

When the user types `help`, generate a context-aware command guide — not just a static list.

1. **Read `coaching_state.md`** to understand where the candidate is in their coaching journey.
2. **Show the full command guide** (see Output Schema below) with sub-commands and key features for each command.
3. **Highlight the 2-3 most relevant commands right now** based on coaching state:
   - If no coaching state exists: highlight `kickoff`
   - If storybank is empty: highlight `stories`
   - If storybank has 5+ stories but no narrative identity analysis: highlight `stories` (mention option 7)
   - If an interview is scheduled within 48 hours: highlight `hype` and `prep`
   - If transcripts exist but haven't been analyzed: highlight `analyze`
   - If 3+ scored sessions exist: highlight `progress`
   - If an offer was received: highlight `negotiate`
   - If drill progression shows the candidate hasn't completed Stage 1: highlight `practice ladder`
   - If LinkedIn Analysis doesn't exist and storybank has 3+ stories: highlight `linkedin`
   - If LinkedIn Analysis exists and overall is "Weak" or "Needs Work": highlight `linkedin` (mention pending fixes)
   - If Resume Optimization doesn't exist and kickoff has been run: highlight `resume`
   - If Resume Optimization exists and overall is "Weak" or "Needs Work": highlight `resume` (mention pending fixes)
   - If the candidate mentions recruiter feedback or an outcome in conversation but hasn't used `feedback`: highlight `feedback`
4. **Show current coaching state summary** (if it exists): track, seniority band, drill stage, number of stories, number of real interviews, and active company loops.
5. **End with a prompt**: "What would you like to work on?"

### Output Schema

```markdown
## Command Guide

### Getting Started
| Command | What It Does |
|---|---|
| `kickoff` | Set up your profile, choose a track (Quick Prep or Full System), and get a prioritized action plan based on your timeline |

### Interview Prep
| Command | What It Does |
|---|---|
| `research [company]` | Company research + structured fit assessment (seniority, domain, trajectory) before committing to full prep. Three depth levels: Quick Scan (target list building), Standard (default), Deep Dive (high-priority targets). Includes structured search protocol and claim verification. |
| `prep [company]` | Full prep brief — role-fit assessment (5 dimensions — identifies frameable vs. structural gaps), format guidance, culture read, interviewer intelligence (from LinkedIn URLs), predicted questions (weighted by real questions from past interviews when available), story mapping, and a day-of cheat sheet |
| `concerns` | Anticipate likely interviewer concerns about your profile + counter-evidence strategies |
| `questions` | Generate 5 tailored, non-generic questions to ask your interviewer |
| `linkedin` | LinkedIn profile optimization — section-by-section audit, recruiter search optimization, content strategy. Three depth levels: Quick Audit, Standard, Deep Optimization. At Level 5 Deep: Challenge Protocol applied to your profile. |
| `resume` | Resume optimization — ATS compatibility, recruiter scan, bullet quality, seniority calibration, keyword coverage, structure, concern management, consistency. Three depth levels: Quick Audit, Standard, Deep Optimization. Storybank-to-bullet pipeline when storybank exists. JD-targeted optimization when JD available. At Level 5 Deep: Challenge Protocol applied to your resume. |
| `hype` | Pre-interview boost — 60-second hype reel, 3x3 sheet (concerns + counters + questions), warmup routine, and mid-interview recovery playbook |

### Practice and Simulation
| Command | What It Does |
|---|---|
| `practice` | Drill menu with 8 gated stages + standalone retrieval. Sub-commands: `ladder` (constraint drills), `pushback` (handle skepticism), `pivot` (redirect), `gap` (no-example moments), `role` (specialist scrutiny), `panel` (multiple personas), `stress` (high-pressure), `technical` (system design communication). Standalone: `retrieval` (rapid-fire story matching). Includes interviewer's perspective on every round. At Level 5: expanded inner monologue from the interviewer's perspective, challenge notes on rounds 3+, and optional warmup skip. |
| `mock [format]` | Full 4-6 question simulated interview with holistic arc feedback and interviewer's inner monologue. Formats: `behavioral screen`, `deep behavioral`, `panel`, `bar raiser`, `system design/case study`, `technical+behavioral mix` |

### Analysis and Scoring
| Command | What It Does |
|---|---|
| `analyze` | Paste a transcript for per-answer 5-dimension scoring, triage-based coaching (branches based on YOUR bottleneck), answer rewrites showing what a 4-5 version looks like, intelligence updates (tracks questions and patterns across interviews), and a specific recommended next step |
| `debrief` | Post-interview rapid capture — works same-day with or without a transcript. Captures questions, interviewer signals, stories used, recruiter feedback, and checks for question patterns from past interviews |

### Storybank
| Command | What It Does |
|---|---|
| `stories` | Full storybank management. Options: `view`, `add` (guided discovery, not just "tell me a story"), `improve` (structured upgrade with before/after), `find gaps` (prioritized by target roles), `retire`, `drill` (rapid-fire retrieval practice), `narrative identity` (extract your 2-3 core career themes and see how every story connects). At Level 5: stories get red-teamed with 5 challenge lenses after add/improve. |

### Progress and Tracking
| Command | What It Does |
|---|---|
| `progress` | Score trends, self-assessment calibration (are you an over-rater or under-rater?), storybank health, outcome tracking (correlates practice scores with real interview results), targeting insights (correlates rejection patterns with company type and fit assessments), question-type performance analysis, accumulated patterns from real interviews, and coaching meta-check |

### Post-Interview
| Command | What It Does |
|---|---|
| `feedback` | Capture recruiter feedback, report outcomes (advanced/rejected/offer), correct assessments, add context the system should remember, or give meta-feedback on the coaching itself. The system learns from your real interview experiences over time. |
| `thankyou` | Thank-you note and follow-up drafts tailored to the interview |
| `negotiate` | Post-offer negotiation coaching — market analysis, strategy, exact scripts, and fallback language |
| `reflect` | Post-search retrospective — journey arc, breakthroughs, transferable skills, archived coaching state |

### Meta
| Command | What It Does |
|---|---|
| `help` | This command guide (context-aware recommendations based on where you are) |

---

## Where You Are Now
[Brief coaching state summary — track, seniority, drill stage, story count, active company loops — or "No coaching state found. Run `kickoff` to get started."]

## Recommended Next
**Recommended next**: `[command]` — [why this is the highest-leverage move right now]. **Alternatives**: `[command]`, `[command]`, `[command]`

---

## Tips
- Share a real resume during `kickoff` — it powers everything downstream (concerns, positioning, story seeds)
- Use `debrief` the same day as a real interview — capture signals while they're fresh
- When you hear back from a recruiter — good or bad — run `feedback` to capture it. The system learns from your real interview experiences over time.
- Run `progress` weekly — it tracks your self-assessment accuracy, not just scores
- After real interviews, log outcomes — the system correlates practice scores with real results
- Set your feedback directness level (1-5) during `kickoff` — the diagnosis stays the same, only the delivery changes
- Run `research` before applying — the fit assessment helps you focus on roles where you're competitive, and flags stretch targets that need extra prep
- For high-priority targets, ask for a deep dive research — `research [company]` and mention you want comprehensive intelligence
- Paste raw transcripts from any tool (Otter, Zoom, Grain, etc.) — the system auto-detects the format and cleans it up
- The coach will recommend a specific next step after every command — just follow the flow if you're not sure what to do next
- Your LinkedIn profile is a search engine, not a resume. Run `linkedin` to optimize for how recruiters actually find candidates.
- Your resume is ranked by ATS before a human ever sees it. Run `resume` to optimize for both machines and the 7-second recruiter scan.
- Everything saves automatically to `coaching_state.md` — pick up where you left off, even weeks later

What would you like to work on?
```
