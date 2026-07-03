# Interview Coach

```bash
npx skills add dbhat93/job-search-os
```

> Then open any Claude Code session and type `/coach` → `kickoff`.

---

A Claude Code-based interview coach that covers the full job search lifecycle -- from JD analysis and resume optimization through mock interviews to post-offer negotiation. 28 commands across application materials, interview prep, practice, analysis, and comp coaching. It scores your answers across five dimensions, diagnoses root causes behind weak spots, builds a storybank you can retrieve under pressure, and adapts its coaching to your specific patterns. Not a generic question bank. An adaptive system that gets sharper the more you use it.

Say `kickoff`, share your resume, and you're being coached in under 2 minutes.

---

## What It Does

**Scoring and diagnosis** -- Every answer scored on Substance, Structure, Relevance, Credibility, and Differentiation, calibrated to your seniority. Scores map to root causes (status anxiety, narrative hoarding, conflict avoidance) with targeted fixes, not just "do better."

**Adaptive coaching** -- After scoring, a decision tree triages your bottleneck and branches to the right drill. If Relevance is your gap, you get question-decoding practice. If Substance, you build raw material. The system doesn't cycle through the same sequence for every candidate.

**Multi-format transcript analysis** -- Paste raw transcripts from Otter, Zoom, Grain, Google Meet, Teams, Tactiq, Granola, or any other tool. The system auto-detects the format and normalizes it. Analysis adapts to interview type: behavioral interviews get Q&A parsing, system design gets phase-based analysis (scoping, approach, deep-dive, tradeoff, adaptation), panel interviews track cross-interviewer dynamics, and mixed formats handle mode-switching between technical and behavioral segments. Each format gets its own anti-pattern detection and additional scoring dimensions.

**Storybank with portfolio optimization** -- Structured story management with full STAR text, earned secrets, strength ratings, and rapid-retrieval drills. Story-to-question mapping uses a 4-level fit scoring system (Strong Fit, Workable, Stretch, Gap) with portfolio optimization that resolves conflicts when multiple questions compete for the same story, tracks freshness and overuse, and prioritizes stories with strong earned secrets. Narrative identity extraction finds the 2-3 core themes across your stories so every answer reinforces a coherent thesis about who you are.

**Practice and mocks** -- 8-stage drill progression (constraint ladders, pushback handling, pivot drills, panel simulations, stress tests) plus full 4-6 question mock interviews in behavioral, system design, case study, panel, and technical+behavioral formats. Every round includes the interviewer's perspective -- what they were actually thinking when you spoke. Role-drill scores map to core dimensions so specialized practice feeds into overall trend analysis. At Directness Level 5: expanded interviewer inner monologue, challenge notes on rounds 3+, and optional warmup skip.

**Outcome calibration** -- The system tracks whether its practice scores actually predict real interview outcomes. After 3+ real interviews, it runs scoring drift detection, identifies when external feedback contradicts coach scoring, and recalibrates. Cross-dimension root causes (like "conflict avoidance" affecting both Substance and Differentiation) get unified treatment instead of separate drills. The system also learns from successes -- tracking which stories, dimensions, and patterns correlate with advancement.

**Role-fit assessment** -- Structured evaluation of candidate-role fit across five dimensions (requirement coverage, seniority alignment, domain relevance, competency overlap, trajectory coherence). Distinguishes strong fits from investable stretches and long shots, so candidates focus their energy on roles where they're competitive. Over time, rejection patterns reveal targeting insights that no amount of practice can fix.

**Enhanced company intelligence** -- Three research depth levels (Quick Scan, Standard, Deep Dive) with a structured search protocol and claim verification. Every company-specific claim maps to a source tier (verified, general knowledge, or unknown). Prep briefs include targeted web research before applying company knowledge, with source attribution for every finding.

**Interview lifecycle** -- Company research, role-specific prep briefs with interviewer intelligence, same-day post-interview debrief, outcome tracking that correlates practice scores with real results, and post-offer negotiation coaching with exact scripts.

**Interview intelligence** -- The system learns from your real interview experiences. Every transcript, debrief, and recruiter feedback adds to a personalized knowledge base: question patterns across companies, what works and what doesn't for you specifically, and feedback-outcome correlations. Intelligence data has temporal decay -- stale data is flagged, not silently relied on.

**Session continuity** -- A persistent `coaching_state.md` file tracks your storybank, scores, patterns, drill progression, interview loops, interview intelligence, and calibration state across sessions. Pick up where you left off, weeks later. Saves are automatic.

**Challenge protocol (Directness Levels 3-5)** -- At higher directness settings, the coach actively challenges you through five lenses: Assumption Audit, Blind Spot Scan, Pre-Mortem, Devil's Advocate, and Strengthening Path. Intensity is graduated -- Level 3 gets lighter probing, Level 5 gets the full treatment: stories red-teamed after you add or improve them, transcripts challenged, practice rounds 3+ include a rotating challenge note, progress reports include a Hard Truth section, hype includes a pre-mortem, rejections get mined for leverage. The system also detects avoidance patterns -- if you keep steering away from a weakness, it names it directly. Every challenge ends with a concrete fix. Levels 1-2 are completely unaffected.

**Guided flow** -- The coach recommends a specific next step after every command based on your coaching state -- not a generic menu. When you say something like "prepare me for my interview at Google," it detects the multi-step intent and walks you through the full sequence (research, prep, concerns, hype) with natural transitions. Session start greetings include a prescriptive recommendation for the highest-leverage move right now.

**LinkedIn profile optimization** -- Section-by-section audit of your LinkedIn profile against how the platform actually works: recruiter boolean search mechanics, algorithm distribution, and section-specific impact. Three depth levels from quick audit to deep optimization with content strategy. Not a resume-to-LinkedIn copy -- a platform-native optimization that treats LinkedIn as its own game.

**Resume optimization** -- Holistic resume audit across every dimension that actually affects outcomes: ATS parsing and ranking, recruiter scan behavior, bullet quality, seniority calibration, keyword coverage, structure, concern management, and cross-surface consistency. Three depth levels from quick audit to deep optimization with full bullet rewrite pipelines. When a storybank exists, the system mines it for quantified outcomes and earned secrets that should appear in resume bullets. When a JD is available, it produces a targeted version optimized for that specific application. Not a grammar check -- a strategic overhaul of the resume as a job-search artifact.

**Core positioning** -- Builds the atomic unit of self-presentation: a positioning statement that distills who you are into a compelling, memorable core. Uses curiosity gap principles, earned secret anchoring, and the Present-Past-Future formula to produce variants at every duration (10-second elevator, 30-second networking, 60-second recruiter call, 90-second interview TMAY) plus a LinkedIn summary hook. The positioning statement is saved to coaching state and consumed by resume, linkedin, and outreach for cross-surface consistency. Three depth levels from quick draft to deep positioning with a full differentiation audit.

**Networking outreach coaching** -- Coaches the full outreach lifecycle: cold LinkedIn messages, warm introduction requests, informational interview asks, recruiter replies, follow-up sequences, and referral requests. Three depth levels from quick templates to full networking campaigns with multi-channel strategy. Messages are built on the candidate's Positioning Statement so every outreach is differentiated, not generic. The system knows platform mechanics (LinkedIn's 300-char connection request limit, optimal cold email length of 75-125 words, InMail response rates) and coaches accordingly. Includes a message quality rubric, follow-up cadence guidance, and the research showing that referrals account for 30-50% of hires from only 7% of applicants.

**JD decoding and batch triage** -- Analyzes job descriptions using six decoding lenses (repetition frequency, order and emphasis, required vs. nice-to-have, verb choices, between-the-lines signals, and what's missing) with confidence labels on every interpretation. Maps extracted competencies against the candidate's profile for a fit verdict. Generates specific questions to ask the recruiter for every uncertain interpretation. Batch triage mode compares 2-5 JDs to find the candidate's market-validated sweet spot and recommend where to invest application effort. Includes a teaching layer so candidates learn to decode JDs themselves over time.

**Presentation round coaching** -- Fills the prep gap for presentation-format interviews (system design presentations, business cases, portfolio reviews, strategy presentations, technical deep dives). Coaches narrative structure using four arc frameworks, optimizes openings and closings, calibrates content density against time limits (at ~130-150 words per minute), and prepares for Q&A with predicted questions and answer strategies. Three depth levels from quick structural framework to deep preparation with talk track review and constraint versions.

**Early-process comp coaching** -- Coaches the highest-leverage compensation moments: the recruiter screen "what are your salary expectations?" question, salary history handling, and application form strategy. Guides candidates through comp research (without fabricating data), helps construct a defensible range, and provides stage-specific scripts with backups for pushback. Covers the full pre-offer comp timeline and hands off to the negotiate command when a formal offer arrives. Three depth levels from a quick 30-second script to full career-transition comp positioning.

**Differentiation** -- Earned secrets and spiky POVs are a first-class dimension, not an afterthought. The system pushes you past "competent" toward "memorable."

**Self-awareness** -- Tracks the gap between your self-assessment and actual coach scores. Knows if you're an over-rater or under-rater, and adjusts coaching accordingly.

---

## Quick Start

### One-liner install (Claude Code)

```bash
npx skills add dbhat93/job-search-os
```

Then type `/coach` from any Claude Code session, followed by `kickoff`.

---

### Option 1: Claude Code (recommended)

1. Clone the repo:

```bash
git clone https://github.com/dbhat93/job-search-os.git
cd job-search-os
```

Or [download it as a ZIP](https://github.com/dbhat93/job-search-os/archive/refs/heads/main.zip) and unzip.

2. Activate the coach by renaming the skill file:

```bash
mv COACH.md CLAUDE.md
```

3. Open the folder in Claude Code and say `kickoff`.

Requires any paid Claude plan. Also works with Claude Code (terminal), Cursor, or any environment with file system access.

### Option 1b: Claude Code -- as a personal skill (advanced)

If you want the coach available from **any** Claude Code session without opening a specific folder, set it up as a personal skill:

1. Clone the repo (same as Option 1).

2. Create your personal skill file:

```bash
mkdir -p ~/.claude/skills/coach
```

3. Create `~/.claude/skills/coach/SKILL.md` with the following content, replacing the path with your actual clone location:

```yaml
---
name: coach
description: Interview coaching system. Activates for any coaching command: kickoff, map, prep, mock, round, analyze, stories, practice, progress, pipeline, apply, feedback, reflect, research, decode, salary, negotiate, hype, pitch, resume, linkedin, outreach, present, concerns, questions, thankyou, sync, strategy, help. (Note: debrief is now merged into round as Mode B, legacy alias preserved for backward compatibility.)
---

The interview coaching system is now active.

**Base directory**: /path/to/your/interview-coach-skill/
**Coaching state**: /path/to/your/interview-coach-skill/coaching_state.md

When loading any reference file (e.g. `references/commands/map.md`), resolve it as an absolute path under the base directory above.

!`cat /path/to/your/interview-coach-skill/COACH.md`
```

4. From any Claude Code session, type `/coach` to activate, then run any coaching command.

No need to rename `COACH.md` or open a specific folder. `coaching_state.md` still lives in your clone directory and is gitignored.

> **Note:** This skill file is personal -- it contains absolute paths specific to your machine. Do not commit it to the repo.

### Option 2: OpenAI Codex

1. Clone the repo:

```bash
git clone https://github.com/dbhat93/job-search-os.git
cd job-search-os
```

Or [download it as a ZIP](https://github.com/dbhat93/job-search-os/archive/refs/heads/main.zip) and unzip.

2. Activate the coach by renaming the skill file:

```bash
mv COACH.md AGENTS.md
```

3. Open the folder in Codex and say `kickoff`.

Requires any paid ChatGPT plan.

---

For both options, the coach will ask for your resume, target role, and timeline -- then build your profile, assess your starting point, and give you a prioritized action plan. Everything saves automatically to `coaching_state.md` so you pick up where you left off next session.

---

## Setup (optional)

### LinkedIn connections export

Export your LinkedIn connections as a CSV to give the `research` command access to your professional network. When you research a target company, the coach cross-references your connections to surface warm networking paths -- specific people you already know at (or connected to) the company, with role-appropriate outreach recommendations.

**How to export:**
1. Go to LinkedIn → Settings → Data Privacy → Get a copy of your data
2. Select "Connections" and request the archive
3. Download the CSV when ready (usually within minutes)
4. Save it to `~/Downloads/Connections.csv` (or tell the coach where you put it)
5. During any coaching session, mention the CSV location -- the coach saves the path to `coaching_state.md`

Re-export every 2-4 weeks to keep the data fresh. The coach will flag stale exports.

---

## Commands

### Getting Started

| Command | Purpose | Typical Output |
|---|---|---|
| `kickoff` | Setup profile, track, and preferences | Kickoff summary + time-aware action plan |

### Interview Round Prep

| Command | Purpose | Typical Output |
|---|---|---|
| `research [company]` | Company research + structured fit assessment (3 depth levels) | Company snapshot, culture signals, fit assessment, claim-verified findings |
| `decode` | JD analysis + batch triage (3 depth levels, 6 lenses) | Confidence-labeled decoding, competency extraction, fit assessment, recruiter verification questions, batch comparison, teaching layer |
| `prep [company]` | Build role-specific prep brief (format-aware, culture-aware, role-fit assessment) | Format guidance, culture read, role-fit assessment, interviewer intelligence, competencies, predicted Qs, story mapping |
| `concerns` | Anticipate interviewer concerns | Concern-counter-evidence map |
| `questions` | Generate interviewer questions | 5 tailored, non-generic questions |
| `present` | Presentation round coaching (3 depth levels) | Narrative arc selection, content structuring, timing calibration, opening/closing optimization, Q&A preparation, constraint versions |

### Application Materials

| Command | Purpose | Typical Output |
|---|---|---|
| `linkedin` | LinkedIn profile optimization (3 depth levels) | Section-by-section audit, rewritten sections, content strategy |
| `resume` | Resume optimization (3 depth levels, JD-targeted when available) | ATS audit, section-by-section assessment, bullet rewrites, seniority calibration, keyword analysis, storybank-to-bullet pipeline |
| `pitch` | Core positioning statement + context variants | Core statement, constraint ladder, context-specific pitches, positioning consistency check |
| `outreach` | Networking outreach coaching (3 depth levels, 9 message types) | Message frameworks, draft critique + rewrite, follow-up sequences, multi-channel campaign strategy |
| `apply [company]` | Draft written answers to application screening questions with story selection, gap check, and quality gate |

### Pre-Conversation

| Command | Purpose | Typical Output |
|---|---|---|
| `salary` | Early/mid-process comp coaching (3 depth levels) | Comp research guidance, range construction, stage-specific scripts, total comp education, salary history handling |
| `hype` | Pre-interview confidence + psychological warmup. At Level 5: includes a pre-mortem with failure prevention | 60-second reel + 3x3 sheet + focus cue + recovery playbook |

### Practice and Simulation

| Command | Purpose | Typical Output |
|---|---|---|
| `practice` | Run drill rounds (with progression gating). At Level 5: challenge notes, expanded interviewer read, optional warmup skip | Round debrief + self-assessment delta + targeted adjustment |
| `mock [format]` | Full simulated interview (4-6 Qs) -- behavioral screen, deep behavioral, panel, bar raiser, system design/case study, technical+behavioral mix | Holistic arc feedback, signal-reading notes, energy trajectory |
| `stories` | Build/manage storybank + rapid-retrieval drill. At Level 5: stories get red-teamed with 5 challenge lenses | Story table + earned secrets + gap analysis + retrieval drill |

### Analysis, Tracking, and Post-Interview

| Command | Purpose | Typical Output |
|---|---|---|
| `round` | **Primary post-interview command.** Compound workflow: captures impressions, scores transcript (if available), and updates all state in one shot. Mode A = transcript path. Mode B = memory-only path. Run this after any real interview. | Interviewer signals, per-unit scoring (if transcript), all state sections updated, triage-based next step |
| `analyze` | Transcript-only scoring. Use when a transcript arrives post-hoc (after `round` was already run), or for analyzing an isolated transcript with no associated interview loop. For fresh real interviews, use `round` instead. | Auto-detected format, per-unit scoring (Q&A/phases/exchanges), format-specific dimensions, decision tree + interview delta |
| `debrief` | Legacy alias for `round` Mode B (memory-only capture). Kept for backward compatibility; routes to `round` Phases 1 to 7. | Same as `round` Mode B |
| `progress` | Trends, self-calibration, outcome tracking, scoring calibration. At Level 5: includes a Hard Truth section | Self-assessment delta + outcome correlation + scoring drift detection + root cause tracking + coaching meta-check |
| `feedback` | Capture recruiter feedback, outcomes, corrections, context, or coaching meta-feedback. At Level 5: rejections include structured leverage extraction | State updates + next step suggestion |
| `thankyou` | Post-interview follow-up drafts | Thank-you note + variants |
| `negotiate` | Post-offer negotiation coaching | Offer analysis + strategy + scripts + specific language |
| `reflect` | Post-search retrospective + archive | Journey arc, breakthroughs, transferable skills, archived state |
| `strategy` | Full search-level pipeline audit + 2-week action plan. At Level 5: 4-lens challenge protocol | Timeline risk, funnel health, narrative coherence, priority stack, yield projection, action plan |
| `pipeline` | Live pipeline view generated fresh from coaching state | Active loops, stages, next actions, dates. Always current, never cached |
| `sync` | Coaching state consistency check + session continuity | Data integrity verification, stale entry detection, cross-section consistency |
| `help` | Show command menu (context-aware) | Full command list + recommended next based on coaching state |
| `map` | Situational GPS -- "where am I and what should I do next?" | Priority-ranked next actions + filtered command reference for current search phase |

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

- Company snapshot (stage, size, culture signals -- claim-verified with source tiers)
- Fit assessment against your profile
- "If you decide to apply" next steps

For high-priority targets, mention you want a deep dive: "Do a deep dive on Notion" -- gets you employee posts, product reviews, competitor analysis, and leadership profiles on top of the standard research.

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
- `Interviewer Intelligence` (if profile links provided -- per-interviewer lens, focus areas, rapport hooks, story recommendations)
- `What They Optimize For`
- `Your Best Positioning`
- `Likely Concerns + Counters`
- `Predicted Questions (7-10)`
- `Story Mapping`
- `Questions To Ask Them`
- `Day-Of Cheat Sheet`

### 4) Right after an interview

```text
round
```

One command for everything after a real interview -- works with or without a transcript. Get:

- Impressions captured while fresh (questions recalled, interviewer signals, stories used)
- Transcript scored if you paste one -- same analysis depth as `analyze`, with your impressions pre-loaded as context
- All coaching state updated in one shot: Outcome Log, Interview Loop, Storybank, Active Coaching Strategy, Interview Intelligence
- Triage-based next step based on what the data shows

> `debrief` still works as a legacy alias for `round` Mode B (memory-only capture). `analyze` still exists for when a transcript arrives days after you already ran `round`.

### 5) Analyzing a standalone transcript

```text
analyze
```

Then paste raw transcript text from any tool (Otter, Zoom, Grain, Teams, etc.). The system auto-detects the format and normalizes it. Use this when a transcript arrives post-hoc (after you already ran `round`). For fresh real interviews, `round` handles both transcript and memory paths in one flow.

Expected output:

- Format detection and normalization
- Per-unit score blocks (Q# for behavioral, P# for system design phases, E# for panel exchanges)
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

Drills (in progression order -- advance when you meet gating thresholds):

- `practice ladder` -- Constraint drills (30s, 60s, 90s, 3min)
- `practice pushback` -- Handle skepticism and interruption
- `practice pivot` -- Redirect when questions don't match prep
- `practice gap` -- Handle "I don't have an example" moments
- `practice role` -- Role-specific specialist scrutiny
- `practice panel` -- Multiple interviewer personas
- `practice stress` -- High-pressure simulation
- `practice technical` -- Thinking out loud, clarification-seeking, tradeoff articulation (system design / case study / mixed format only)

Standalone (not gated):

- `practice retrieval` -- Rapid-fire story matching under time pressure

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

Runs a complete 4-6 question interview simulation. Formats: behavioral screen, deep behavioral, panel, bar raiser, system design/case study, technical+behavioral mix. Holistic feedback on:

- Overall impression and hiring signal
- Energy trajectory and pacing across the full arc
- Story diversity and selection quality
- Signal-reading (did you adapt to interviewer cues?)
- Per-question scoring + holistic patterns only visible across the full session

### 8) Decode a JD before applying

```text
decode
```

Then paste the job description. Get:

- Competency extraction with confidence labels (HIGH/MEDIUM/LOW)
- 6-lens analysis (repetition frequency, order, required vs. nice-to-have, verb choices, between-the-lines signals, what's missing)
- Fit assessment against your profile (Strong Fit / Investable Stretch / Long-Shot Stretch / Weak Fit)
- Recruiter verification questions for uncertain interpretations
- Teaching layer so you learn to decode JDs yourself

For multiple JDs: paste 2-5 and get batch triage with ranking, your market-validated sweet spot, and allocation recommendations.

### 9) Build your positioning statement

```text
pitch
```

Get:

- Core positioning statement anchored to your strongest earned secret
- Context variants: 10-second elevator, 30-second networking, 60-second recruiter, 90-second interview TMAY
- Positioning consistency check across resume, LinkedIn, and interview narrative

### 10) Coach an outreach message

```text
outreach
```

Then specify message type (cold LinkedIn, warm intro, recruiter reply, etc.) and target. Get:

- Draft critique (if you bring a draft) or guided construction
- Rewritten message within platform constraints (300 chars for LinkedIn connection requests)
- Follow-up sequence with timing
- Earned secret hooks pulled from your storybank

### 11) Post-offer negotiation

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

- Storybank management with rapid-retrieval drills and portfolio-optimized story mapping
- Multi-format transcript analysis (behavioral, system design, panel, mixed) with decision tree triage
- Pattern and trend tracking with self-assessment calibration
- Differentiation coaching integrated into all workflows
- Full mock interview simulations (behavioral, system design, case study, panel, technical+behavioral mix)
- Drill progression with gating thresholds (8 stages + standalone retrieval)
- Post-interview debrief and rapid capture
- Outcome tracking (correlate practice with real results) with scoring calibration (drift detection, recalibration)
- Interview intelligence -- learns question patterns, what works/doesn't, and company-specific insights from your real interviews, with temporal decay on stale data
- Interview loop awareness across company rounds
- Post-offer negotiation coaching
- Post-search retrospective and archiving

Choose during `kickoff`. You can switch later.

---

## Repository Structure

```text
interview-coach-skill/
├── COACH.md                            # Core skill -- rename to CLAUDE.md to activate
├── SKILL.md                            # npx skills add one-liner install metadata
├── VERSIONS.md                         # Version history and roadmap
├── README.md                           # This file
├── LICENSE                             # MIT License
├── voice-and-style-template.md         # Template for creating your voice profile (optional personalization)
├── coaching_state.md                   # Created on first kickoff (persistent memory, auto-saved)
├── tests/
│   ├── v3.2-evals.md                   # Eval test suite (29 test cases)
│   └── fixtures/                       # Mock coaching states and CSVs for testing
├── references/
│   ├── commands/                       # Per-command workflows (loaded on demand)
│   │   ├── kickoff.md
│   │   ├── research.md
│   │   ├── prep.md
│   │   ├── round.md                    # Post-interview compound workflow (debrief + analyze + state sync)
│   │   ├── analyze.md
│   │   ├── debrief.md
│   │   ├── practice.md
│   │   ├── mock.md
│   │   ├── stories.md
│   │   ├── concerns.md
│   │   ├── questions.md
│   │   ├── linkedin.md
│   │   ├── resume.md
│   │   ├── pitch.md
│   │   ├── outreach.md
│   │   ├── decode.md
│   │   ├── present.md
│   │   ├── salary.md
│   │   ├── hype.md
│   │   ├── thankyou.md
│   │   ├── progress.md
│   │   ├── negotiate.md
│   │   ├── feedback.md
│   │   ├── reflect.md
│   │   ├── strategy.md
│   │   ├── sync.md
│   │   ├── help.md
│   │   ├── map.md
│   │   └── apply.md
│   ├── coaching-state-schema.md
│   ├── schema-migration.md
│   ├── archival-rules.md
│   ├── state-update-triggers.md
│   ├── cross-cutting.md                # Shared modules: archetype-detection, proof-bank, gap-handling, storybank-gap-check, contact-network, narrative-consistency, story-deployment-analytics, signal-reading, differentiation, cultural awareness, psychological readiness, external text validation
│   ├── rubrics-detailed.md             # Scoring anchors, root causes, seniority calibration
│   ├── role-drills.md                  # Role-specific drills + interviewer archetypes
│   ├── differentiation.md              # Earned secrets, spiky POVs, clarity under pressure
│   ├── transcript-processing.md        # Step-by-step transcript analysis guide (format-aware parsing)
│   ├── transcript-formats.md           # Format detection + per-format normalization (Otter, Zoom, Grain, etc.)
│   ├── storybank-guide.md              # Story management + rapid-retrieval drill
│   ├── story-mapping-engine.md         # Portfolio-optimized story mapping with fit scoring
│   ├── calibration-engine.md           # Scoring drift detection, root cause tracking, success patterns
│   ├── challenge-protocol.md           # Five-lens challenge framework (Levels 3-5, graduated intensity)
│   └── examples.md                     # Worked examples: scored answers, triage, rewrites, system design analysis
```

---

## Best Results

1. Share a real resume (not a high-level summary).
2. Include a full job description for `prep` -- and the interview format if you know it.
3. Use real transcripts for `analyze`. The more you give it, the better the triage.
4. Keep a living storybank with `stories`. Extract earned secrets for every story.
5. Run `progress` weekly -- it tracks your self-assessment accuracy, not just scores.
6. After real interviews, log outcomes. The system correlates practice scores with real results.
7. When you hear back from a recruiter -- good or bad -- run `feedback` to capture it. The system learns from your real experiences over time.
8. Run `mock` before important interviews. Individual drills build skills; mocks test the full arc.
9. Use `round` the same day as a real interview -- captures impressions, scores any transcript, and updates all state in one shot.
10. Run `decode` before applying -- analyze the JD's language, assess your fit, and decide if the role is worth your time. Use batch triage to compare multiple JDs at once.
11. Run `salary` before your first recruiter call -- the recruiter screen is the highest-leverage comp moment, not the offer negotiation.
12. Run `present` before a presentation round -- structure your content and prepare for Q&A before you ever open PowerPoint.

---

## FAQ

**How is this different from asking ChatGPT for interview help?**
Generic LLM interview help gives you the same advice regardless of your patterns. This system scores you on five dimensions, tracks your scores over time, diagnoses root causes behind weak spots, builds a storybank with retrieval drills, and adapts its coaching based on what the data reveals. It remembers your previous sessions, knows which stories you've already used at a company, and changes its approach when something isn't working. It's the difference between a textbook and a coach.

**Does this only work for tech roles?**
No. Core workflows are role-agnostic; role drills include PM, Engineering, Design, Data Science, Research, Operations, and Marketing.

**Why is the feedback direct?**
The skill is intentionally high-candor and evidence-based. It uses strengths-first delivery and self-reflection before critique. It also periodically checks whether the coaching is landing and adapts if not. You can set your feedback directness level (1-5) during kickoff. The Challenge Protocol activates at Level 3 with light probing and reaches full intensity at Level 5: stories get red-teamed, progress includes a Hard Truth, rejections get mined for leverage, and avoidance patterns are named directly. Levels 1-2 are gentler -- same rigor, softer delivery.

**How does it work across multiple sessions?**
The skill writes a `coaching_state.md` file that tracks your storybank, scores, patterns, drill progression, interview outcomes, interview loops, and more. At the start of each session, it reads this file and picks up where you left off. Saves happen automatically after every major workflow -- not just at session end.

---

## Optional: Minutes Integration

If you use [Minutes](https://github.com/silverstein/minutes) to record interviews, the coach auto-detects transcripts from `~/meetings/` when you run `round` or `analyze`. No paste needed.

**Setup:**
```bash
brew install --cask silverstein/tap/minutes
brew install silverstein/tap/minutes
minutes setup --model small
```

**Usage:**
```bash
minutes record    # before your call
# ... have the interview on Zoom ...
minutes stop      # after the call
```

The coach will find the transcript automatically next time you run `round` or `analyze`.

---

## Personalization: Make It Sound Like You

The coach generates cover letters, outreach messages, LinkedIn posts, and thank-you notes. By default, it strips AI-isms and writes in clean, professional language. But if you want the output to sound like *you*, create a voice profile:

1. During `kickoff`, the coach will ask if you have writing samples. Paste 2-3 pieces (blog posts, LinkedIn articles, anything you've written) and the coach will extract your voice automatically.

2. Or create `voice-and-style.md` manually using the template at `voice-and-style-template.md` in the repo root.

Once your voice profile exists, every externally-facing draft will match your sentence rhythm, humor style, thesis placement, and formatting preferences. The Writing Quality Gate enforces this automatically.

---

## Data and Privacy

`coaching_state.md` is created on first `kickoff` and updated automatically throughout your search. It contains sensitive personal and professional data -- treat it accordingly.

**What it stores:**
- Target companies, interview status, and outcomes
- Storybank with detailed professional narratives and personal context
- Score history and coaching patterns across sessions
- Compensation research -- current salary, target range, and negotiation strategy
- Recruiter and interviewer names and verbatim feedback
- Excerpts from interview transcripts (third-party speech)
- Personal reflections from `reflect` and `debrief`

**Default protections (already in place):**
- `coaching_state.md` is listed in `.gitignore` -- it won't be committed to your fork by default
- `coaching_state_archive.md` is also gitignored (created automatically when you archive closed loops)
- `CLAUDE.md` (your active skill file) is also gitignored

**What you should do:**
- Do not sync `coaching_state.md` to any shared or cloud location (Google Drive, Dropbox, iCloud, GitHub) without encrypting it first
- If you share your repo or coaching setup with anyone, confirm `coaching_state.md` is excluded
- When your search ends, run `reflect` -- it prompts you to archive and delete data you no longer need
- **Context management**: long searches generate large `coaching_state.md` files that consume context every session. Periodically compress closed loops: copy their full content to `coaching_state_archive.md`, replace the loop in `coaching_state.md` with a 3-5 line stub. Read the archive only when you need the full intel on a past loop. The v4.3 rule (compress loops closed >30 days ago) enforces this at the coaching level; the v4.4 two-file pattern keeps tokens manageable at the session level
- Compensation data is among the most sensitive fields. If you ever export or share state data, redact the Comp Strategy section first

**Third-party data note:** Transcripts and recruiter feedback contain other people's words. These are stored in your local `coaching_state.md` only -- they are never transmitted anywhere by the skill itself.

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
