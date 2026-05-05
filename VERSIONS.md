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

## v4: Opportunity Track (shipped)

**Thesis**: The Interview Track (v1-v3) is comprehensive at the surface where most candidates spend their time today: applications and interviews. But the strongest careers are not built that way. They are built so opportunity arrives because the right people know the right things about you. v4 extends the system upstream of the application — into the brand, network, and proof-of-work that pull aligned opportunities — and makes the full path runnable end-to-end as a structured multi-week program.

The premise: there's a candidate who has never sent a resume to a stranger, whose every meaningful opportunity has come through deliberate brand-building and network-building. The Opportunity Track teaches others to do this on purpose — as a rigorous system, not as luck.

### Feature 1: Opportunity Track Commands

Twelve new commands, organized in five stages — Discover, Position, Distribute, Activate, Convert.

- **`compass`** — Discover what the candidate actually wants. Anti-criteria forcing, past-data testing, the aligned-opportunity sentence test, confidence calibration.
- **`targets`** — Translate compass into a target ecosystem: tiered companies, communities/scenes, segment statement, watch signals, anti-targets.
- **`mapping`** — Network topology mapping (real network, not LinkedIn list). Tier 1/2/3 inventory, coverage gap analysis vs. target ecosystem, intro path-finding.
- **`brand`** — Personal brand strategy: thesis, defensible POV, audience, channel ranking, cadence commitment, anti-brand. Distinct from `pitch` (positioning artifact) — `brand` is positioning *strategy*.
- **`content`** — 90-day content calendar built on brand thesis, per-piece coaching with quality rubric, audit mode for inbound signal review.
- **`events`** — Event/community strategy: ruthless prioritization, pre-event prep, live triage, post-event debrief and follow-through.
- **`relationships`** — Lightweight CRM with give-before-ask cadence, re-warming sequences for Tier 2, reciprocity ledger audit.
- **`projects`** — Proof-of-work projects with falsifiable hypotheses, scoped ship dates, anti-perfection clauses, post-ship Storybank seeding.
- **`opportunities`** — Inbound funnel hygiene: log every inbound, score against compass, manage stage transitions, surface patterns about what's pulling.
- **`intro`** — Warm intro choreography: private ask of introducer, double opt-in, forwardable email construction, post-intro reciprocity.
- **`convert`** — Conversation-to-opportunity conversion bridges: collaboration test, follow-up artifact, named ask, graceful pass.
- **`bootcamp`** — Multi-week orchestrator that runs the full Opportunity → Interview lifecycle. Four tracks (Brand-First, Network-First, Project-First, Hybrid), 8-12 weeks, weekly cadence, five checkpoints.

**Key files**: `references/opportunity-system.md` (philosophical foundation, anti-patterns, cross-command dependencies), `references/bootcamp.md` (the program manual), `references/commands/{compass,targets,mapping,brand,content,events,relationships,projects,opportunities,intro,convert,bootcamp}.md` (twelve new command references), `SKILL.md` (description, command registry, mode detection, multi-step intent table, state schema, file routing, schema migration).

### Feature 2: Two-Track Operating Model

The skill now runs in two integrated tracks:

- **Interview Track** — original v1-v3 system, unchanged in behavior.
- **Opportunity Track** — new in v4.

The tracks share `coaching_state.md`, share rigor standards, and compose: a strong Opportunity Track produces aligned interview pipelines, which feed the Interview Track. Cross-track handoffs are explicit:

- `opportunities` reaching "formal process" → creates Interview Loop, hands off to `decode`/`prep`.
- `convert` producing a job conversation → creates or updates Interview Loop.
- `projects` shipping → seeds Storybank with at least one earned-secret-bearing story.

Mode detection adds 12 new triggers (one per Opportunity Track command). Multi-step intent table adds 6 new sequences (e.g., "I want to stop sending resumes and build a real career" → `compass` → `targets` → `mapping` → `brand` → `content` → `relationships`).

### Feature 3: Schema Extensions and Migration

New `coaching_state.md` sections: `Compass`, `Target Ecosystem`, `Network Map`, `Brand Strategy`, `Content Calendar`, `Events`, `Relationship Pipeline`, `Projects (Proof of Work)`, `Inbound Opportunity Funnel`, `Intro Tracker`, `Conversion Log`, `Bootcamp State`.

A single migration rule covers all of them: missing Opportunity Track sections are added silently with empty fields, and a single-line note is added to Coaching Notes pointing the user to `compass`. Existing v1-v3 state files upgrade cleanly without losing data.

### Feature 4: ai-native Integration Notes

`references/integrations/ai-native.md` outlines three integration options for [jazzmind/ai-native](https://github.com/jazzmind/ai-native) — additive advisor, Chief-of-Staff-orchestrated external skill, or full bridge — with adapter surfaces (state sync, command routing, memory translation, mode mapping) and concrete next steps. Default recommendation: Option 2 (loose integration) before any state-coupling work.

### Feature 5: Anti-Pattern Discipline

The Opportunity Track explicitly names and resists eight anti-patterns: performance discovery, the 200-target list, the networking sprint, ghostwritten brand, the perpetual project, the hidden ask, audit-and-extract, and brand without anti-brand. Each command's failure-modes section ties back to these. The system pushes back on volume optimization, reach chasing, and LLM-laundered content — the user's voice and authenticity are the assets.

---

## v5: Interaction Model (planned)

**Thesis**: Now that the coaching brain is strong, comprehensive, and covers both reactive (interview) and proactive (opportunity) tracks, change *how* candidates interact with it.

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

## v6: Platform (planned)

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

v3 was the natural next step after v2 — it extended the coaching engine to every surface that matters in a job search without requiring any architectural changes. The system was comprehensive at the application/interview surface: 23 commands covering resume through retrospective, with cross-command integration wiring that made the whole greater than the parts.

v4 (Opportunity Track) is the structural counter-move. Where v1-v3 optimized the visible job search, v4 builds the upstream system that makes most of the visible job search unnecessary for the candidates who run it well. It introduces a second track and a multi-week orchestrator without requiring a new database, a new UI, or new infrastructure — same `coaching_state.md`, same Markdown skill files, same Claude Code surface. The risk is dilution: v4 nearly doubles the command surface, and the Opportunity Track's success criteria are slow (months/quarters) compared to the Interview Track's (days/weeks). The system has to remain coherent across both timescales without confusing users about which track they're in.

v5 is exciting but expensive (voice, UI, integrations). v6 is a different company. The risk now is premature platforming before v4 has proven that brand-and-network-led careers can be coached as a system, not as case studies.
