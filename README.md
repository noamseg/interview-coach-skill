# Interview Coach

A high-rigor Claude skill for interview coaching — not just prep. It adapts to what you actually need based on your patterns, not a one-size-fits-all assembly line.

This skill is command-driven with conditional logic: after scoring, it branches coaching based on what the data reveals about your specific bottlenecks.

---

## What You Get

- **Adaptive coaching** that triages your bottlenecks and branches accordingly — not the same assembly line for every candidate
- **Five-dimension scoring**: Substance, Structure, Relevance, Credibility, and Differentiation — calibrated to your seniority level
- **Evidence-enforced feedback**: every claim grounded in a real source, with automatic pause when evidence runs thin
- **Root cause diagnosis**: scores map to underlying patterns (status anxiety, narrative hoarding, conflict avoidance, etc.) with targeted fixes
- **Storybank with rapid-retrieval drills**: stories you can actually access under pressure, not just a well-organized filing cabinet
- **Full mock interviews**: 4-6 question simulated interviews with holistic arc feedback — behavioral, system design, case study, panel, and technical+behavioral mix formats
- **Psychological readiness**: pre-interview routines, mid-interview recovery, and post-interview processing
- **Post-offer negotiation coaching**: scripts, strategy, and specific language for compensation conversations
- **Differentiation as a first-class dimension**: earned secrets and spiky POVs integrated into every workflow, not an optional add-on
- **Self-assessment calibration**: tracks the gap between how you think you're doing and how you're actually doing
- **Outcome tracking**: correlates practice scores with real interview results to verify the coaching is working
- **Session continuity**: persistent `coaching_state.md` file maintains your storybank, scores, patterns, and progress across sessions — auto-saved, works over weeks or months of prep
- **Answer rewrites**: side-by-side before/after showing exactly what a 4-5 version of your answer looks like
- **Interview loop awareness**: tracks which stories you've used at each company so later rounds build on earlier ones
- **Interviewer intelligence**: per-interviewer research from LinkedIn profiles — focus areas, rapport hooks, story recommendations
- **Post-interview debrief**: rapid same-day capture while details are fresh, even without a transcript
- **Company research**: lightweight fit assessment before committing to full prep
- **Post-search retrospective**: archive your coaching journey and extract transferable skills when a search ends
- **Cultural and linguistic awareness**: recognizes communication style differences and coaches adaptation, not replacement

---

## Quick Start

### Option 1: Open in Claude Code on Desktop (recommended)

The simplest path. Open this repo directly from Claude Code on Desktop:

1. Clone the repo:

```bash
git clone https://github.com/noamsegal/interview-coach-skill.git
cd interview-coach-skill
```

Or [download it as a ZIP](https://github.com/noamsegal/interview-coach-skill/archive/refs/heads/main.zip) and unzip.

2. Rename the skill file so Claude Code auto-loads it:

```bash
mv SKILL.md CLAUDE.md
```

3. Open the folder in Claude Code on Desktop and say `kickoff`.

The skill reads its reference files on demand and writes a `coaching_state.md` file to maintain continuity across sessions — no manual saving required.

**Also works with**: Claude Code (terminal), Cursor, or any environment with file system access.

### Option 2: Paste into conversation (limited)

1. Copy the contents of `SKILL.md` and paste at the start of a Claude conversation.
2. Say `kickoff`.

Note: Without file system access, the skill cannot read reference files or write persistent state. It will still work for single-session use but with reduced depth.

---

## Commands

| Command | Purpose | Typical Output |
|---|---|---|
| `kickoff` | Setup profile, track, and preferences | Kickoff summary + time-aware action plan |
| `research [company]` | Lightweight company research + fit assessment | Company snapshot, culture signals, fit assessment |
| `prep [company]` | Build role-specific prep brief (format-aware, culture-aware) | Format guidance, culture read, interviewer intelligence, competencies, predicted Qs, story mapping |
| `analyze` | Analyze transcript with triage-based coaching | Per-answer 5-dimension scoring + decision tree + interview delta |
| `debrief` | Post-interview rapid capture (same day) | Questions recalled, interviewer signals, stories used, coaching state updates |
| `practice` | Run drill rounds (with progression gating) | Round debrief + self-assessment delta + targeted adjustment |
| `mock [format]` | Full simulated interview (4-6 Qs) — behavioral, system design, case study, panel, technical+behavioral mix | Holistic arc feedback, signal-reading notes, energy trajectory |
| `stories` | Build/manage storybank + rapid-retrieval drill | Story table + earned secrets + gap analysis + retrieval drill |
| `concerns` | Anticipate interviewer concerns | Concern-counter-evidence map |
| `questions` | Generate interviewer questions | 5 tailored, non-generic questions |
| `hype` | Pre-interview confidence + psychological warmup | 60-second reel + 3x3 sheet + focus cue + recovery playbook |
| `thankyou` | Post-interview follow-up drafts | Thank-you note + variants |
| `progress` | Trends, self-calibration, outcome tracking | Self-assessment delta + outcome correlation + coaching meta-check |
| `negotiate` | Post-offer negotiation coaching | Offer analysis + strategy + scripts + specific language |
| `reflect` | Post-search retrospective + archive | Journey arc, breakthroughs, transferable skills, archived state |
| `help` | Show command menu (context-aware) | Full command list + recommended next based on coaching state |

---

## Fast Workflow Examples

### 1) Initial setup

```text
kickoff
```

Expected output:

- Track selected (`Quick Prep` or `Full System`)
- Profile snapshot (strength signals and concern areas)
- Interview readiness assessment
- Time-aware action plan (adjusted to your interview timeline)

### 2) Company research (before committing to prep)

```text
research Notion
```

Expected output:

- Company snapshot (stage, size, culture signals)
- Fit assessment against your profile
- "If you decide to apply" next steps

### 3) Before an interview

```text
prep Stripe
```

Then provide:

- Job description
- Role/seniority
- Optional interviewer LinkedIn URLs (for per-interviewer intelligence)

Expected output:

- `Interview Format` (with format-specific coaching boundaries)
- `Company Culture Read`
- `Interviewer Intelligence` (if profile links provided — per-interviewer lens, focus areas, rapport hooks, story recommendations)
- `What They Optimize For`
- `Your Best Positioning`
- `Likely Concerns + Counters`
- `Predicted Questions (7-10)`
- `Story Mapping`
- `Questions To Ask Them`
- `Day-Of Cheat Sheet`

### 4) Right after an interview

```text
debrief
```

Rapid capture while details are fresh — works with or without a transcript. Get:

- Questions recalled and reconstructed answers
- Interviewer signals observed (engagement, skepticism, interest)
- Stories used (auto-updates storybank `Last Used` dates)
- Coaching state updated for the next session

### 5) Analyzing a transcript

```text
analyze
```

Then paste transcript text.

Expected output:

- Per-answer score blocks
- `Scorecard`
- `Triage Decision` (data-driven coaching path based on your patterns)
- `What Is Working`
- `Top 3 Gaps To Close`
- `Storybank Changes`
- `Priority Move (Next 72 Hours)`

### 6) Drill practice

```text
practice
```

Drills (in progression order — advance when you meet gating thresholds):

- `practice ladder` — Constraint drills (30s, 60s, 90s, 3min)
- `practice pushback` — Handle skepticism and interruption
- `practice pivot` — Redirect when questions don't match prep
- `practice gap` — Handle "I don't have an example" moments
- `practice role` — Role-specific specialist scrutiny
- `practice panel` — Multiple interviewer personas
- `practice stress` — High-pressure simulation
- `practice technical` — Thinking out loud, clarification-seeking, tradeoff articulation (system design / case study / mixed format only)

Standalone (not gated):

- `practice retrieval` — Rapid-fire story matching under time pressure

Expected output each round:

- `Round Debrief`
- `What Worked`
- `Gaps`
- `Scorecard` (5 dimensions)
- `Self-Assessment Delta`
- `Next Round Adjustment`

### 7) Full mock interview

```text
mock behavioral Stripe
```

Runs a complete 4-6 question interview simulation. Formats: behavioral, system design, case study, panel, technical+behavioral mix. Holistic feedback on:

- Overall impression and hiring signal
- Energy trajectory and pacing across the full arc
- Story diversity and selection quality
- Signal-reading (did you adapt to interviewer cues?)
- Per-question scoring + holistic patterns only visible across the full session

### 8) Post-offer negotiation

```text
negotiate
```

Then provide offer details, competing offers, and ideal outcome. Get:

- Market position analysis
- Negotiation strategy with priority ordering
- Exact scripts for the conversation
- Fallback language for pushback

---

## Tracks

### Quick Prep

Best when interview timeline is short.

- Company research
- Prep brief
- Focused transcript analysis
- Immediate next actions

### Full System

Best when running a multi-week search.

- Storybank management with rapid-retrieval drills
- Multi-lens transcript analysis with decision tree triage
- Pattern and trend tracking with self-assessment calibration
- Differentiation coaching integrated into all workflows
- Full mock interview simulations (behavioral, system design, case study, panel, technical+behavioral mix)
- Drill progression with gating thresholds (8 stages + standalone retrieval)
- Post-interview debrief and rapid capture
- Outcome tracking (correlate practice with real results)
- Interview loop awareness across company rounds
- Post-offer negotiation coaching
- Post-search retrospective and archiving

Choose during `kickoff`. You can switch later.

---

## Repository Structure

```text
interview-coach-skill/
├── SKILL.md                            # Core skill — rename to CLAUDE.md to activate
├── README.md                           # This file
├── coaching_state.md                   # Created on first kickoff (persistent memory, auto-saved)
└── references/
    ├── commands/                       # Per-command workflows (loaded on demand)
    │   ├── kickoff.md
    │   ├── research.md
    │   ├── prep.md
    │   ├── analyze.md
    │   ├── debrief.md
    │   ├── practice.md
    │   ├── mock.md
    │   ├── stories.md
    │   ├── concerns.md
    │   ├── questions.md
    │   ├── hype.md
    │   ├── thankyou.md
    │   ├── progress.md
    │   ├── negotiate.md
    │   ├── reflect.md
    │   └── help.md
    ├── cross-cutting.md                # Shared modules: gap-handling, signal-reading, differentiation, cultural awareness
    ├── rubrics-detailed.md             # Scoring anchors, root causes, seniority calibration
    ├── role-drills.md                  # Role-specific drills + interviewer archetypes
    ├── differentiation.md              # Earned secrets, spiky POVs, clarity under pressure
    ├── transcript-processing.md        # Step-by-step transcript analysis guide
    ├── storybank-guide.md              # Story management + rapid-retrieval drill
    └── examples.md                     # Worked examples: scored answers, triage, rewrites
```

---

## Best Results

1. Share a real resume (not a high-level summary).
2. Include a full job description for `prep` — and the interview format if you know it.
3. Use real transcripts for `analyze`. The more you give it, the better the triage.
4. Keep a living storybank with `stories`. Extract earned secrets for every story.
5. Run `progress` weekly — it tracks your self-assessment accuracy, not just scores.
6. After real interviews, log outcomes. The system correlates practice scores with real results.
7. Run `mock` before important interviews. Individual drills build skills; mocks test the full arc.
8. Use `debrief` the same day as a real interview — capture signals while they're fresh.

---

## FAQ

**Does this only work for tech roles?**
No. Core workflows are role-agnostic; role drills include PM, Engineering, Design, Data Science, Research, Operations, and Marketing.

**Can I use this outside Claude?**
Yes, but it is authored for Claude skill behavior. If using another model, copy `SKILL.md` and adapt as needed.

**Why is the feedback direct?**
The skill is intentionally high-candor and evidence-based. It uses strengths-first delivery and self-reflection before critique. It also periodically checks whether the coaching is landing and adapts if not. You can set your feedback directness level (1-5) during kickoff.

**How does it work across multiple sessions?**
The skill writes a `coaching_state.md` file that tracks your storybank, scores, patterns, drill progression, interview outcomes, interview loops, and more. At the start of each session, it reads this file and picks up where you left off. Saves happen automatically after every major workflow — not just at session end.

---

## Contributing

Open an issue or PR with:

- Repro steps
- Current behavior
- Expected behavior
- Suggested fix (optional)

---

## Credits

Created by [Noam Segal](https://www.linkedin.com/in/noamsegal/).

---

## License

MIT
