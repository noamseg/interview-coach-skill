# Version Roadmap

Each version has a clear thesis — not a feature grab bag.

---

## v1: Foundation (shipped)

**Thesis**: Build a broad, rigorous interview coaching system that adapts to each candidate.

- 16 commands covering the full interview lifecycle (kickoff through reflect)
- 5-dimension scoring rubric (Substance, Structure, Relevance, Credibility, Differentiation) with seniority calibration
- Root cause taxonomy mapping failures to targeted fixes
- Storybank management with STAR text, earned secrets, strength ratings, and rapid-retrieval drills
- Narrative identity extraction (2-3 core themes across stories)
- 8-stage drill progression with gating thresholds
- Full mock interviews in behavioral, system design, case study, panel, and technical+behavioral formats
- Role-fit assessment across 5 dimensions (requirement coverage, seniority alignment, domain relevance, competency overlap, trajectory coherence)
- Interview intelligence that learns from real experiences (question patterns, effective/ineffective patterns, company patterns)
- Persistent session state via `coaching_state.md` with mid-session saves
- Cross-cutting modules: differentiation, gap-handling, signal-reading, psychological readiness, cultural awareness
- Role-specific drills for PM, Engineering, Design, Data Science, Research, Operations, Marketing
- Technical format coaching boundaries (communication coaching, not domain evaluation)

---

## v2: Coaching Depth (shipped)

**Thesis**: The system is broad but shallow in places. Make it significantly better at its core job before expanding surface area.

### Feature 1: Transcript Format Support
Candidates no longer need to manually reformat transcripts. The system auto-detects and normalizes 8 transcript formats (Otter.ai, Grain, Google Meet, Zoom VTT, Granola, Microsoft Teams, Tactiq, Manual/generic) with disambiguation rules and quality signal reporting.

**Key files**: `references/transcript-formats.md` (new), `references/transcript-processing.md` (Step 0.5), `references/commands/analyze.md` (Step 3.5)

### Feature 2: Multi-Format Transcript Analysis
All transcripts were previously force-parsed as behavioral Q&A pairs. Now the system branches into 5 format-aware parsing paths: behavioral (Q&A pairs), panel (exchanges with cross-interviewer dynamics), system design (phase-based: scoping, approach, deep-dive, tradeoff, adaptation), technical+behavioral mix (segmented mode-switching), and case study (candidate-driven stages). Each format gets its own anti-patterns, additional scoring dimensions, and delta sheet sections.

**Key files**: `references/transcript-processing.md` (Step 2 overhaul, Step 2.5 extensions, Step 3 scoring, Step 4 delta), `references/commands/analyze.md` (format-aware dispatch/scoring/triage), `references/examples.md` (Example 11: system design analysis)

### Feature 3: Smarter Story Mapping
Story-to-question mapping was heuristic and question-by-question. Now uses a portfolio optimization engine with 4-level fit scoring (Strong Fit, Workable, Stretch, Gap), 7-step conflict resolution, freshness/overuse tracking, earned-secret-aware selection, and secondary skill utilization.

**Key files**: `references/story-mapping-engine.md` (new), `references/commands/prep.md` (storybank health gate, expanded output schema), `references/storybank-guide.md` (health metrics), `references/commands/stories.md` (enhanced gap analysis)

### Feature 4: Outcome Calibration Loop
The system detected miscalibration but didn't self-correct. Now includes scoring drift detection (do practice scores predict outcomes?), cross-dimension root cause tracking with unified treatment (one intervention per root cause, not per dimension), temporal decay for intelligence data, role-drill integration with core dimensions, success pattern capture, and structured unmeasured factor investigation.

**Key files**: `references/calibration-engine.md` (new), `references/commands/progress.md` (Steps 5a/5b/5c), `references/commands/analyze.md` (Step 12a), `references/commands/feedback.md` (calibration triggers), `references/commands/practice.md` (role-drill mapping), `references/rubrics-detailed.md` (root cause persistence)

### Feature 5: Enhanced Company Intelligence
Company research was unstructured. Now includes 3 depth levels (Quick Scan, Standard, Deep Dive), a structured 7-step search protocol, and a claim verification protocol with source tiers (verified, general knowledge, unknown).

**Key files**: `references/commands/research.md` (depth levels, search protocol, verification), `references/commands/prep.md` (structured research step)

---

## v3: Full Lifecycle (shipped)

**Thesis**: v2 made the coaching brain deep. v3 makes the system comprehensive — covering every surface where candidates interact with the job market, and tightening cross-command integration across all 23 commands.

v1 and v2 focused on the interview itself: prep, practice, scoring, and post-interview analysis. But candidates spend more time on resumes, LinkedIn profiles, outreach messages, JD analysis, presentations, and salary conversations than they do in actual interviews. v3 extends the coaching engine to every surface that affects job search outcomes.

### Feature 1: Application Materials Commands
Three new commands for the artifacts candidates build before they ever interview.

**`resume`** — Holistic resume optimization across 8 dimensions (ATS parsing, recruiter scan behavior, bullet quality, seniority calibration, keyword coverage, structure, concern management, cross-surface consistency). Three depth levels. When a storybank exists, the storybank-to-bullet pipeline mines earned secrets and quantified outcomes for resume bullets. When a JD is available, produces a targeted version optimized for that specific application.

**`linkedin`** — Platform-native LinkedIn optimization. Treats LinkedIn as its own game — recruiter boolean search mechanics, algorithm distribution, section-specific impact — not a resume copy. Three depth levels from quick audit to deep optimization with content strategy.

**`pitch`** — Core positioning statement: the atomic unit of self-presentation. Uses curiosity-gap hooks, earned-secret anchoring, and a Present-Past-Future formula to produce variants at every duration (10s elevator through 90s interview TMAY). Saved to coaching state and consumed by `resume`, `linkedin`, and `outreach` for cross-surface consistency.

**Key files**: `references/commands/resume.md` (new), `references/commands/linkedin.md` (new), `references/commands/pitch.md` (new)

### Feature 2: Networking and Outreach
**`outreach`** — Coaches the full networking lifecycle: cold LinkedIn messages, warm introductions, informational interview asks, recruiter replies, follow-up sequences, and referral requests. Three depth levels from quick templates to full multi-channel campaign strategy. Messages are built on the candidate's Positioning Statement so every outreach is differentiated. Includes platform mechanics (LinkedIn's 300-char connection request limit, optimal cold email length, InMail response rates).

**Key files**: `references/commands/outreach.md` (new)

### Feature 3: JD Analysis and Targeting
**`decode`** — Analyzes job descriptions using 6 decoding lenses (repetition frequency, order and emphasis, required vs. nice-to-have, verb choices, between-the-lines signals, what's missing) with confidence labels on every interpretation. Maps extracted competencies against the candidate's profile for a fit verdict. Batch triage mode compares 2-5 JDs to find the candidate's sweet spot. Includes a teaching layer so candidates learn to decode JDs themselves.

**Key files**: `references/commands/decode.md` (new)

### Feature 4: Presentation Round Coaching
**`present`** — Fills the prep gap for presentation-format interviews (system design presentations, business cases, portfolio reviews, strategy presentations, technical deep dives). Coaches narrative structure using 4 arc frameworks, calibrates content density against time limits, and prepares for Q&A with predicted questions and answer strategies. Three depth levels. Added corresponding presentation transcript parsing path and format-specific scoring dimensions (Content Density Management, Narrative Arc, Q&A Adaptability, Audience Calibration).

**Key files**: `references/commands/present.md` (new), `references/transcript-processing.md` (Path F), `references/rubrics-detailed.md` (presentation dimensions)

### Feature 5: Early-Process Comp Coaching
**`salary`** — Coaches the highest-leverage compensation moments that happen before an offer exists: the recruiter screen "what are your salary expectations?" question, salary history handling, and application form strategy. Guides candidates through comp research, range construction, and stage-specific scripts. Hands off to `negotiate` when a formal offer arrives.

**Key files**: `references/commands/salary.md` (new)

### Feature 6: Cross-Cutting Quality Pass
28 enhancements across all 23 commands, driven by a systematic audit:

- **Career transition detection** (5 types) in `kickoff` with mid-search profile update protocol
- **Anxiety-profile personalization** (5 profiles) in `hype` with format-specific warmup
- **Signal interpretation guide** (8 signals) in `debrief` with positioning performance check
- **Offer comparison normalization** (7 components) in `negotiate`
- **Diagnostic router** (9 problem-to-command mappings) in `help`
- **Staleness detection** (3 time thresholds) in `research`
- **Redo mechanism** and progression stage calibration in `mock`
- **Guided extraction prompts** for recruiter feedback in `feedback`
- **12 new cross-command integration points** wiring commands together (prep consumes decode output, concerns uses Outcome Log, questions uses intelligence data, stories consumes narrative identity, etc.)
- **3 new schema fields** (Anxiety profile, Career transition, Transition narrative status) with backward-compatible migration rules
- **Gap-Handling Module integration** into `practice`, `mock`, and `stories` — gap response patterns prescribed by storybank score
- **Differentiation in non-interview contexts** — earned secrets applied to resume bullets, LinkedIn sections, pitch hooks, and outreach messages
- **Presentation round scoring and parsing** — 4 format-specific scoring dimensions, transcript parsing path, and anti-pattern detection for presentation interviews
- **Level 5 Challenge Protocol** extended to all new commands + `mock`
- **Format Discovery deduplication** — discovered once in `prep`, saved to Interview Loops, reused by `mock`, `hype`, and `practice`
- **7 new worked examples** in `examples.md` calibrating output quality for decode, resume, pitch, linkedin, outreach, present, and salary

### Feature 7: Schema and Migration Hardening
4 schema migration gap fixes ensuring older `coaching_state.md` files fully upgrade:
- Missing `Known interview formats` Profile field
- Missing `Interview Intelligence` section in migration check
- `Signal` → `Hire Signal` column rename backward compatibility
- Interview Loops per-entry fields (Status, Round formats, Fit verdict, etc.)

**Key files**: `SKILL.md` (schema migration rules), `references/commands/kickoff.md` (Interview Intelligence for new users)

---

## v[N] — Negotiation Protocol (Warwick Framework) — Proposed

**Status:** Proposed (PR pending)

*PR author's note: please slot this entry where it fits your roadmap — proposed as v3.1 or as a v4 prerequisite. It extends (rather than replaces) the condensed GAINS summary added to `negotiate.md` in the Lenny integrations pass.*

### What's New

- **`references/negotiation-protocol.md`** (NEW) — Cross-cutting negotiation framework based on Jacob Warwick's executive negotiation methodology (Lenny's Podcast + Execs and the City Substack). Loaded by `negotiate`, `salary` (Stage 4+), and `analyze` (comp call transcripts). Includes: per-phase GAINS detail (extends the existing summary in `negotiate.md`), 10 core principles with scripts (beyond GAINS), Zombie Number detection, multi-round negotiation guidance, non-standard terms catalog with Golden Cage test and Cap Conversion table, comp call transcript scoring (5 negotiation-specific dimensions), and competence guardrails.

- **`negotiate` extensions** — Five new sections: Multi-Round Negotiation (follow-up call coaching after pushback), Non-Standard Terms (4-day weeks, IP carve-outs, performance triggers, sign-on bonuses, additional leave, title checkpoints), Escalation Playbook (delay card through walk-away), Post-Close Legal Review (register shift for paperwork phase), Comp Call Transcript Analysis (integration with `analyze` for scoring).

- **`analyze` comp call detection** — Auto-detects comp call transcripts (3+ comp markers) and routes to negotiation-specific scoring dimensions instead of the standard interview rubric.

- **`salary` handoff enhancement** — Pre-loads Warwick negotiation principles at Stage 4 so candidates enter the offer stage with the right mindset.

- **Worked example** — Multi-round comp negotiation transcript scored across 2 calls with cross-call pattern analysis.

### Why

The skill had comprehensive interview prep and analysis but limited depth on the most consequential stage: compensation negotiation. The GAINS summary added in the Lenny integrations pass covered the headline moves; this version adds the tactical depth — per-phase GAINS detail, core principles beyond GAINS, multi-round coaching, non-standard term pivots, and comp call scoring dimensions. Cross-references to the existing GAINS summary ensure no duplication.

**Key files**: `references/negotiation-protocol.md` (new), `references/commands/negotiate.md` (5 new sections appended), `references/commands/analyze.md` (Comp Call Detection gate), `references/examples.md` (negotiation scorecard example), `SKILL.md` (Mode Detection 18b, File Routing, Multi-Step Intent), `README.md` (command table + workflow 12)

---

## v4: Interaction Model (planned)

**Thesis**: Now that the coaching brain is strong and comprehensive, change *how* candidates interact with it.

### Voice Mode for Practice/Mock
Scoped tightly to `practice`, `mock`, and `hype` warmups. The candidate speaks, the system listens, scores delivery alongside content (filler words, pacing, confidence, hedging language). Doesn't replace text for `prep` or `progress` — those need structured output. But practice and mocks become dramatically more realistic with voice.

### Session Replay
After a mock or practice round, let the candidate replay the exchange with inline coaching annotations. "Right here you hedged for 8 seconds before getting to the point. Here's what a tighter version sounds like."

### Lightweight Companion UI
Not replacing Claude Code, but a read-only dashboard that visualizes `coaching_state.md`: score trends over time, storybank coverage heatmap, interview loop status, drill progression. Think of it as a `progress` command you can glance at without running anything. Could be a simple local web server that reads the markdown file.

### Calendar Awareness
Connect to Google Calendar / Outlook. When an interview is 24 hours out, auto-trigger `hype`. When it's a week out and no `prep` has been run, nudge. Time-aware coaching exists in v1 but requires the candidate to self-report timelines.

### Collaborative Storybank Building
A friend or mentor can review your storybank and leave comments. Still file-based, but with a lightweight review protocol. Most candidates build stories in isolation — a second pair of eyes catches blind spots the coach can't.

---

## v5: Platform (planned)

**Thesis**: The coaching engine is proven. Now make it accessible to people who'll never touch a CLI.

### Full Web App
Backend, auth, database replacing `coaching_state.md`, real UI for all commands. The skill files become the system prompt for an API-based product. The reference architecture is already modular enough to port — each command file maps to an API endpoint.

### Coaching Marketplace
Let experienced interviewers or career coaches customize the rubrics, add company-specific intelligence, and offer specialized coaching tracks (e.g., "FAANG PM prep" with insider-calibrated scoring). The cross-cutting module architecture already supports this — new modules slot in without rewriting commands.

### Team/Org Mode
Companies use this to prep internal candidates for promotion panels, or recruiting teams use it to train interviewers (flip the perspective — coach the person *giving* the interview). Same 5 dimensions, different lens.

### Anonymized Intelligence Network
With enough users, the system can surface patterns across candidates: "Candidates who get offers at Stripe tend to score 4+ on Differentiation. Candidates rejected at Amazon most often fail on Structure." No individual data shared — just aggregate signals that improve everyone's prep.

---

## Version Tension

v3 was the natural next step after v2 — it extended the coaching engine to every surface that matters in a job search without requiring any architectural changes. The system is now comprehensive: 23 commands covering resume through retrospective, with cross-command integration wiring that makes the whole greater than the parts.

v4 is exciting but expensive (voice, UI, integrations). v5 is a different company. The risk now is premature platforming before v3 has proven that full-lifecycle coaching moves candidate outcomes better than interview-only coaching.
