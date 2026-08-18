# Version Roadmap

Each version has a clear thesis -- not a feature grab bag.

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

**Thesis**: v2 made the coaching brain deep. v3 makes the system comprehensive -- covering every surface where candidates interact with the job market, and tightening cross-command integration across all 23 commands.

v1 and v2 focused on the interview itself: prep, practice, scoring, and post-interview analysis. But candidates spend more time on resumes, LinkedIn profiles, outreach messages, JD analysis, presentations, and salary conversations than they do in actual interviews. v3 extends the coaching engine to every surface that affects job search outcomes.

### Feature 1: Application Materials Commands
Three new commands for the artifacts candidates build before they ever interview.

**`resume`** -- Holistic resume optimization across 8 dimensions (ATS parsing, recruiter scan behavior, bullet quality, seniority calibration, keyword coverage, structure, concern management, cross-surface consistency). Three depth levels. When a storybank exists, the storybank-to-bullet pipeline mines earned secrets and quantified outcomes for resume bullets. When a JD is available, produces a targeted version optimized for that specific application.

**`linkedin`** -- Platform-native LinkedIn optimization. Treats LinkedIn as its own game -- recruiter boolean search mechanics, algorithm distribution, section-specific impact -- not a resume copy. Three depth levels from quick audit to deep optimization with content strategy.

**`pitch`** -- Core positioning statement: the atomic unit of self-presentation. Uses curiosity-gap hooks, earned-secret anchoring, and a Present-Past-Future formula to produce variants at every duration (10s elevator through 90s interview TMAY). Saved to coaching state and consumed by `resume`, `linkedin`, and `outreach` for cross-surface consistency.

**Key files**: `references/commands/resume.md` (new), `references/commands/linkedin.md` (new), `references/commands/pitch.md` (new)

### Feature 2: Networking and Outreach
**`outreach`** -- Coaches the full networking lifecycle: cold LinkedIn messages, warm introductions, informational interview asks, recruiter replies, follow-up sequences, and referral requests. Three depth levels from quick templates to full multi-channel campaign strategy. Messages are built on the candidate's Positioning Statement so every outreach is differentiated. Includes platform mechanics (LinkedIn's 300-char connection request limit, optimal cold email length, InMail response rates).

**Key files**: `references/commands/outreach.md` (new)

### Feature 3: JD Analysis and Targeting
**`decode`** -- Analyzes job descriptions using 6 decoding lenses (repetition frequency, order and emphasis, required vs. nice-to-have, verb choices, between-the-lines signals, what's missing) with confidence labels on every interpretation. Maps extracted competencies against the candidate's profile for a fit verdict. Batch triage mode compares 2-5 JDs to find the candidate's sweet spot. Includes a teaching layer so candidates learn to decode JDs themselves.

**Key files**: `references/commands/decode.md` (new)

### Feature 4: Presentation Round Coaching
**`present`** -- Fills the prep gap for presentation-format interviews (system design presentations, business cases, portfolio reviews, strategy presentations, technical deep dives). Coaches narrative structure using 4 arc frameworks, calibrates content density against time limits, and prepares for Q&A with predicted questions and answer strategies. Three depth levels. Added corresponding presentation transcript parsing path and format-specific scoring dimensions (Content Density Management, Narrative Arc, Q&A Adaptability, Audience Calibration).

**Key files**: `references/commands/present.md` (new), `references/transcript-processing.md` (Path F), `references/rubrics-detailed.md` (presentation dimensions)

### Feature 5: Early-Process Comp Coaching
**`salary`** -- Coaches the highest-leverage compensation moments that happen before an offer exists: the recruiter screen "what are your salary expectations?" question, salary history handling, and application form strategy. Guides candidates through comp research, range construction, and stage-specific scripts. Hands off to `negotiate` when a formal offer arrives.

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
- **Gap-Handling Module integration** into `practice`, `mock`, and `stories` -- gap response patterns prescribed by storybank score
- **Differentiation in non-interview contexts** -- earned secrets applied to resume bullets, LinkedIn sections, pitch hooks, and outreach messages
- **Presentation round scoring and parsing** -- 4 format-specific scoring dimensions, transcript parsing path, and anti-pattern detection for presentation interviews
- **Level 5 Challenge Protocol** extended to all new commands + `mock`
- **Format Discovery deduplication** -- discovered once in `prep`, saved to Interview Loops, reused by `mock`, `hype`, and `practice`
- **7 new worked examples** in `examples.md` calibrating output quality for decode, resume, pitch, linkedin, outreach, present, and salary

### Feature 7: Schema and Migration Hardening
4 schema migration gap fixes ensuring older `coaching_state.md` files fully upgrade:
- Missing `Known interview formats` Profile field
- Missing `Interview Intelligence` section in migration check
- `Signal` → `Hire Signal` column rename backward compatibility
- Interview Loops per-entry fields (Status, Round formats, Fit verdict, etc.)

**Key files**: `COACH.md` (schema migration rules), `references/commands/kickoff.md` (Interview Intelligence for new users)

---

## v3.1: Navigation, Gap Pipeline, and Security Hardening (shipped 2026-03-10)

**Thesis**: v3 made the system comprehensive. v3.1 makes it safer to use at scale (security), easier to navigate (map command), smarter about competency gaps before interviews (gap pipeline), and more accurate in measuring coaching progress (velocity metrics).

### Feature 1: Map Command -- Situational GPS
Candidates running multi-week searches with many commands and a growing coaching state frequently lose track of what to do next. `map` answers one question: "Given where I am right now, what should I run?" It reads the full coaching state, runs a 10-condition priority check (urgent through low), and outputs 1–3 time-sensitive actions with a filtered command reference for the candidate's current search phase. Read-only -- never writes to state.

**Key files**: `references/commands/map.md` (new), `COACH.md` (registry, file routing, mode detection 9c)

### Feature 2: Storybank Gap Pipeline
Before this, competency gaps were detected in `prep` but there was no structured cross-interview analysis or severity triage. The gap pipeline adds: a Storybank Gap Check module with 3 severity tiers (Critical/Addressable/Covered), timeline-aware routing (3+ weeks / 1-3 weeks / <1 week before interview), and cross-loop analysis that surfaces when the same gap appears across multiple active companies. `prep` and `progress` both consume the module.

**Key files**: `references/cross-cutting.md` (Storybank Gap Check module), `references/commands/prep.md` (Step 7 enrichment), `references/commands/progress.md` (Storybank Health cross-loop analysis)

### Feature 3: Velocity Metric Fixes
Three QA-flagged issues in `progress` velocity metrics:
- **Calculation method**: Simplified from an ⌊N/3⌋ formula to first-2 vs last-2 session windows -- easier to verify and less sensitive to session count
- **Stagnant threshold**: Tightened from `< +0.01/session` to `< +0.02/session for 4+ sessions` -- the old threshold let slow-but-real progress go unflagged
- **Coaching ROI**: Replaced opaque formula with plain English + worked example ("8 sessions, +1.0 total → 4 sessions per half-point")

**Key files**: `references/commands/progress.md` (velocity metrics section)

### Feature 4: Security Hardening
Prompt injection guards, data privacy documentation, and data retention guidance:
- **Prompt injection**: Content isolation checks added to `analyze` (transcripts) and `prep` (JD parsing) -- flags embedded directives before processing
- **Data privacy**: New Data Privacy and Retention section in `COACH.md` covering what `coaching_state.md` contains, compensation data sensitivity, third-party data, and retention guidance
- **Data retention**: Cleanup prompt added to `reflect` -- surfaces what to archive vs. delete at end of search
- **Compensation privacy**: Warning added to `salary` -- Comp Strategy section is among the most sensitive fields
- **Recruiter feedback provenance**: `feedback` now tracks written vs. paraphrased source -- affects calibration confidence; stored as `[written]`/`[paraphrased]` tag in state entries
- **README privacy section**: New `## Data and Privacy` section documents what `coaching_state.md` contains and how to protect it -- visible to forkers before first use

**Key files**: `references/commands/analyze.md`, `references/commands/prep.md`, `COACH.md`, `references/commands/reflect.md`, `references/commands/salary.md`, `references/commands/feedback.md`, `README.md`, `.gitignore`

---

## v3.2: Network Intelligence + Async Prep (shipped 2026-03-18)

**Thesis**: v3.1 hardened the system. v3.2 makes it smarter about the candidate's actual network and closes the prep gap for async interview formats -- the two highest-leverage gaps surfaced by real usage.

### Feature 1: LinkedIn Connections Integration
The `research` command's "networking angle" was generic -- "who to talk to, what to ask" with no structured data source. Now, candidates can export their LinkedIn connections as a CSV, and `research` cross-references the target company against their real network. Output includes a connections table, role-appropriate outreach recommendations per contact, and fallback suggestions when no direct connections exist. Staleness detection flags exports older than 30 days.

**Key files**: `references/commands/research.md` (Networking Angle Protocol, updated Output Schema), `references/commands/help.md` (LinkedIn note in research description), `README.md` (Setup section with export instructions)

### Feature 2: Outreach Campaign Cadence Tracking
The `outreach` command coached individual messages well but was blind to multi-step campaigns. Now reads existing outreach logs from Interview Loop entries in `coaching_state.md` before drafting, surfaces contact history, recommends next actions based on follow-up cadence (first at +5 days, second at +10, then close), and flags diminishing returns when cold outreach at a company exceeds 3 unanswered contacts.

**Key files**: `references/commands/outreach.md` (Follow-Up Cadence Tracking section)

### Feature 3: Take-Home / Async Case Prep Protocol
The system handled live interviews well but had no structured guidance for async formats (take-home assignments, business case presentations, written submissions). New protocol in `prep` covers: prompt clarification, time-box strategy (20/30/35/15 split), evaluation criteria inference by role type, outline review, draft review, and live Q&A prep if the candidate presents after submission.

**Key files**: `references/commands/prep.md` (Take-Home / Async Case Prep Protocol)

### Feature 4: Command Registry Completion
`strategy` and `sync` existed as full commands but were not registered in README or `help` -- users couldn't discover them. Now listed in both command tables.

**Key files**: `README.md` (command table), `references/commands/help.md` (Search Strategy section)

### v3.2.1: Hardening Pass (from eval audit)

**12 issues identified, all fixed:**

1. **Multi-CSV network support** -- Networking Angle Protocol now reads ALL CSV sources under `## LinkedIn Connections` (candidate's network, referrer networks, curated intro targets). Results separated by source with appropriate trust/approval warnings.
2. **Canonical outreach log format** -- Defined table schema (Date | Contact | Channel | Attempts | Status) with silent migration for prose/bullet formats. Added to COACH.md Schema Migration Check.
3. **Seniority-aware outreach recommendations** -- Position titles now parsed for seniority signals (IC vs Director+ vs VP/C-suite). Different recommendation tiers per seniority level.
4. **Per-contact vs per-company cadence** -- Cadence tracking now distinguishes between following up with one person 3x (per-contact limit) and contacting 3 different people (company-level pattern). Different thresholds and recommendations for each.
5. **Calendar days over business days** -- Cadence timing simplified from "business days" (unreliable to compute) to "calendar days" as a pragmatic proxy.
6. **Open-ended deadline handling** -- Async prep now handles "take as long as you need" cases: recommends self-imposed cap (4-6hr PM, 6-8hr strategy), explains diminishing returns, advises sleeping on multi-day drafts.
7. **Research → Outreach state handoff** -- `research` now writes discovered connections to the Interview Loop entry, ensuring `outreach` can read them in a later session without re-running `research`.
8. **Graceful CSV failure** -- If a CSV path doesn't resolve, logs a warning and continues with other sources instead of crashing the entire networking section.
9. **Per-source staleness checks** -- Each CSV source gets its own staleness warning with source-appropriate advice (re-export for own; verify before intros for referrer's).
10. **Outreach log migration in COACH.md** -- Schema Migration Check now includes outreach log format normalization.

**Test suite**: 29 eval test cases in `tests/v3.2-evals.md` (9 LinkedIn + 7 Outreach + 7 Async Prep + 3 Integration + 6 Regression). Mock fixtures in `tests/fixtures/`.

**Key files**: `references/commands/research.md`, `references/commands/outreach.md`, `references/commands/prep.md`, `COACH.md`, `tests/v3.2-evals.md`

### v3.2.2: Full Codebase Audit -- Hardening Pass (no new features)

**16 fixes across product, security, usability, and functionality** (S3 excluded by design -- names retained for outreach context):

**Product:**
1. **Challenge Protocol activation contradiction** -- COACH.md said "Level 5 only" but challenge-protocol.md said "begins at Level 3." Aligned cross-cutting.md to "Levels 3-5 with graduated intensity."
2. **Story over-use detection** -- Storybank now flags stories with Use Count > 5 for refresh during `stories improve`.
3. **Positioning drift detection** -- Sync Drift Check now flags when 2+ of pitch/resume/linkedin haven't been refreshed in 5+ sessions.
4. **Rejection → Feedback loop** -- Sync Drift Check now offers `feedback` after any Outcome Log rejection entry.

**Security:**
5. **External Text Validation Module** -- Injection guard centralized in cross-cutting.md. All commands processing external text (debrief, feedback, outreach, stories) now reference the shared module instead of ad-hoc checks.
6. **Transcript retention guidance** -- Archive/delete full transcripts 30 days after the relevant loop closes. Keep only extracted questions and scores.
7. **Comp data mitigation** -- Data Privacy section now recommends OS-level disk encryption and notes Comp Strategy can be stored in a separate deletable file.

**Usability:**
8. **Session Start Protocol simplified** -- Replaced 22-line nested conditional with flat 9-item priority list (first match wins). Deterministic execution across sessions.
9. **Soft Gate Protocol defined** -- "Soft gate" now has a canonical definition: collect minimum context (target role, seniority, domain) via 2-3 questions, note that `kickoff` would provide richer context, then proceed.
10. **Coaching Notes categories** -- Replaced vague "things a great coach would remember" with 4 explicit categories: format preferences, emotional/psychological patterns, communication quirks, scheduling/logistics.
11. **Fit confidence criteria** -- Limited/Medium/High now have defined thresholds based on available data (no JD vs. JD vs. JD + outcomes + feedback).
12. **File Routing table marked as reference** -- Clarified it's documentation, not runtime instructions. Each command file contains its own dependencies.

**Functionality:**
13. **Self-assessment calibration thresholds** -- Defined: over-rater = self-scores avg 1.0+ above coach scores across 3+ interviews, under-rater = 1.0+ below, well-calibrated = within 0.5.
14. **Drill Progression stage gates** -- Defined advancement criteria for all 8 stages (e.g., Stage 2 = one practice with all dimensions ≥3, Stage 3 = one mock with Lean Advance+).
15. **Cross-loop gap prioritization** -- Gap Check now preps competencies critical for ANY active loop, prioritizing those critical for 2+ loops.
16. **Test fixture documentation** -- Added schema note explaining that fixtures intentionally omit irrelevant sections; Schema Migration auto-adds them at runtime. Dedicated migration fixture (`mock-coaching-state-migration.md`) created for R.1 test with old "Signal" column format.

**Key files**: `COACH.md`, `references/cross-cutting.md`, `tests/v3.2-evals.md`, `tests/fixtures/mock-coaching-state-migration.md`, `tests/fixtures/mock-coaching-state-async.md`

### v3.2.3: Research Rigor for Business Cases

New cross-cutting module ensuring quantitative estimates in business case prep survive interviewer scrutiny.

**Key additions:**
1. **Research Rigor Module** in `references/cross-cutting.md` -- confidence tagging (`[sourced]`/`[estimated]`/`[inferred]`), defensibility checks, competitive data freshness tracking, "how to present" coaching notes
2. **`prep` Step 3** -- explicit call to Research Rigor Module during Take-Home/Async Case protocol
3. **`research` flag** -- detects business case roles and flags Research Rigor for downstream `prep`

**Origin:** Real business case prep where market sizing had inflated percentages that wouldn't survive interviewer challenge (equipment rental at 40% card-addressable when 15-20% was honest).

**Key files**: `references/cross-cutting.md`, `references/commands/prep.md`, `references/commands/research.md`

---

## v3.3: Round Command -- Post-Interview Compound Workflow (shipped 2026-03-25)

**Thesis**: v3.2 hardened the system. v3.3 closes the biggest repeated UX friction point: the three-command sequence after every real interview.

### Feature: `round` Command

After a real interview, candidates currently run `debrief` → `analyze` → `sync` to capture impressions, score the transcript, and verify state consistency -- three commands doing related work on the same event. `round` wraps this into one command while preserving both components' logic fully.

**Two modes**:
- **Mode A (transcript available)**: Captures debrief impressions in Phase 4, then runs the full `analyze` transcript workflow with debrief data pre-loaded as context. The Phase 4 emotional read, signal observations, and self-assessment all feed into the analysis -- exactly the pattern `analyze` describes for when a debrief exists for the same interview.
- **Mode B (memory-only)**: Runs full debrief capture, produces directional scoring from memory (confidence-flagged, no Score History row), and tells the candidate to run `analyze` when the transcript arrives.

**State coverage** -- all written in one shot: Outcome Log, Interview Loop (round completion + stories used), Storybank (Last Used + Use Count + field notes, overuse flag at > 5), Interview Intelligence (Question Bank + Company Patterns + Effective/Ineffective Patterns), Active Coaching Strategy, Score History (Mode A only -- preserves quality gate).

**Standalone commands preserved**: `debrief` and `analyze` remain unchanged for edge cases -- late transcript arrivals, deliberate impression-capture before analysis, standalone transcript scoring from a prior session's debrief.

**Mode Detection updated**: "Just had an interview" context now routes to `round`. Standalone transcript drops without post-interview context continue to route to `analyze`.

**Key files**: `references/commands/round.md` (new), `COACH.md` (Mode Detection, Session Start Protocol, Command Registry, File Routing, State Update Triggers), `README.md` (commands table, fast workflow examples, repo structure)

---

## v3.4: Relationship Intelligence + Minutes Integration (shipped 2026-04-01)

**Thesis**: v3.3 closed the post-interview UX gap. v3.4 makes the system aware of *people*, not just companies -- and removes the last manual step in the interview recording workflow. Patterns borrowed from [silverstein/minutes](https://github.com/silverstein/minutes) relationship intelligence architecture.

### Feature 1: Minutes Integration (Transcript Auto-Detection)
`round` and `analyze` now check `~/meetings/` for transcripts before asking the candidate to paste. If [Minutes](https://github.com/silverstein/minutes) is installed, transcripts from recorded interviews auto-appear as markdown files. The coach detects them by date + company name, confirms with the candidate, and proceeds. No paste, no format detection, no copy errors. Falls back to manual paste if no match found.

**Key files**: `references/commands/round.md` (Phase 3 auto-detection), `references/commands/analyze.md` (Step 0 auto-detection), `COACH.md` (File Routing, Session Start Protocol), `README.md` (Optional Integration section)

### Feature 2: Contact Network + Promise Tracker
New `## Contact Network` section in coaching_state.md tracks every person in the search: recruiters, HMs, interviewers, referrals, networking contacts. Each entry has: last contact date, open promises, relationship strength (Strong/Medium/Weak based on recency + interaction frequency), and a losing-touch flag (3+ interactions AND >14 days silent). Promises go stale at 7 days (compressed from Minutes' 21-day threshold because job search timelines are shorter). Surfaced in `map` (priority check), `sync` (drift check), and session start (proactive intelligence).

**Key files**: `references/cross-cutting.md` (Contact Network Module), `COACH.md` (coaching_state schema, Session Start Protocol), `references/commands/map.md` (priority check), `references/commands/progress.md` (Contact Network not directly in progress, but stale contacts surfaced via sync)

### Feature 3: Narrative Consistency Checker
Detects when the candidate tells contradictory versions of key narratives across companies. Tracks: "why leaving," "timeline/urgency," "comp expectations," "why this company," and "career narrative." After each `round` or `feedback`, extracts the candidate's answers, normalizes them, and compares against prior entries. Only flags genuine contradictions (different emphasis per audience is fine). Surfaced in `progress` and `sync`.

**Key files**: `references/cross-cutting.md` (Narrative Consistency Checker module), `references/commands/progress.md` (Narrative Consistency section)

### Feature 4: Story Deployment Analytics
Correlates story deployments with interview outcomes. Per-story advance rate (deployed AND advanced / total deployments), deployment diversity (unique stories / total deployments), unused high-strength stories (Strength 4+ with 0 live deployments). Surfaced in `progress` Storybank Health section. Also informs `prep` story mapping ("S004 has a 75% advance rate when deployed").

**Key files**: `references/cross-cutting.md` (Story Deployment Analytics module), `references/commands/progress.md` (Story Deployment Analytics subsection)

### Feature 5: Smart Session Start
Session Start Protocol enhanced with proactive intelligence surfacing (borrowed from Minutes' SessionStart hook pattern). New priority items: auto-detected transcripts in ~/meetings/, stale promises from Contact Network, losing-touch referral alerts. Proactive intelligence is surfaced alongside the recommendation as a brief 1-2 line note, not as a blocker.

**Key files**: `COACH.md` (Session Start Protocol)

---

## v3.5: Archetype-Driven Adaptation + Proof Bank (shipped 2026-04-04)

**Thesis**: v3.4 made the system aware of people and transcripts. v3.5 makes it aware of *role types*. Different PM archetypes require different stories, different framing, different questions. The system now detects the archetype once and cascades it everywhere. Patterns borrowed from [santifer/career-ops](https://github.com/santifer/career-ops) archetype-driven adaptation architecture.

### Feature 1: Archetype Detection Module
Six role archetypes (Platform PM, Founding PM, Domain PM, Regulatory Response PM, Agent/AI PM, GTM/Growth PM) with detection rules based on JD keyword matching. Detected during `prep` Phase 3.5 after JD parsing. The archetype cascades downstream: story prioritization, question prediction, "why this company" framing, mock question selection, hype concerns, outreach proof point selection, and decode fit assessment. Each archetype maps to specific storybank entries and earned secrets.

**Key files**: `references/cross-cutting.md` (Archetype Detection Module), `references/commands/prep.md` (Step 3.5), `references/commands/stories.md` (Archetype Fit field), `COACH.md` (storybank schema)

### Feature 2: STAR+Reflection on Stories
Every story now has a `Reflection` field: what you learned, what you'd do differently. Distinct from the Earned Secret (which is the non-obvious insight). The Reflection pre-loads the "what would you do differently?" answer that interviewers consistently ask (asked at Crux on both projects, at Interface AI). Populated during `stories` or `round` when the candidate naturally surfaces hindsight. Storybank table also gains an `Archetype Fit` column mapping each story to its strongest archetypes.

**Key files**: `COACH.md` (storybank schema: Reflection field + Archetype Fit column), `references/commands/stories.md` (Story Added template)

### Feature 3: Proof Bank
A running inventory of atomic, citable proof points (one metric, one achievement, one artifact per entry). Unlike the storybank (full STAR narratives), the Proof Bank stores evidence: patent numbers, customer counts, handle time reductions, conference appearances, publications. Pre-populated with 15 proof points during kickoff. Consumed by `outreach` (top 2-3 by archetype relevance), `prep` (map to predicted concerns), cover letter drafting, `pitch` (evidence layer under positioning statement), and `hype` (60-second reel). Categories: IP, Scale, Impact, Trust, Credibility, Thought Leadership, Network, Builder, Origin Story, Revenue, Growth, Discovery, Partnerships, Methodology.

**Key files**: `references/cross-cutting.md` (Proof Bank module), `COACH.md` (Proof Bank schema in coaching_state format), `references/commands/outreach.md` (Step 1 context assembly)

---

## v4: Writing Quality + Voice Enforcement (shipped 2026-04-07)

**Thesis**: v3.5 made the coaching brain archetype-aware. v4 makes every piece of externally-facing content the system produces sound like the candidate, not like AI. Borrowed from conorbronsdon/avoid-ai-writing (AI-ism detection, tiered vocabulary, tolerance matrix, second-pass audit).

### Feature 1: Writing Quality Gate
Replaces the v3.2 External Communication Style Module with a comprehensive writing quality gate that runs on every externally-facing output. Two modes: auto-clean (default, silently strips AI-isms) and flag mode (for content >300 words). Three-tier vocabulary system (Tier 1 always-kill, Tier 2 flag-in-clusters, Tier 3 density-check) with P0/P1/P2 severity classification. Context tolerance matrix (6 contexts with different strictness levels). Second-pass audit catches patterns that survive the first edit.

**Key files**: `references/cross-cutting.md` (Writing Quality Gate module), all 5 external content commands updated with gate reference

### Feature 2: Voice Enforcement
If the candidate has a `voice-and-style.md` file, the Writing Quality Gate reads it and enforces their personal style as a scoring rubric. Checks sentence rhythm, thesis placement, humor register, formatting preferences, and ending style. When no voice file exists, generic defaults apply (no AI-isms, natural rhythm, active voice).

**Key files**: `references/cross-cutting.md` (Voice Enforcement section within Writing Quality Gate), `voice-and-style-template.md` (new, in repo root)

### Feature 3: Cross-Document Consistency
When 3+ external documents exist, audits for: fact consistency across documents, recycled verbatim phrases, narrative alignment, and comp anchor consistency. Surfaces issues as specific, actionable flags.

**Key files**: `references/cross-cutting.md` (Cross-Document Consistency section within Writing Quality Gate)

### Feature 4: Voice Profile Extraction in Kickoff
New Step 2.5 in kickoff: "Do you have writing samples?" If yes, extracts voice profile and generates `voice-and-style.md` automatically. If no, proceeds with generic defaults.

**Key files**: `references/commands/kickoff.md` (Step 2.5), `voice-and-style-template.md`

### Feature 5: Personalization for All Users
Template file (`voice-and-style-template.md`) in repo root with fill-in-the-blank structure for any user to create their own voice profile. README section explains the personalization workflow.

**Key files**: `voice-and-style-template.md` (new), `README.md` (Personalization section)

---

## v4.1

- `references/commands/apply.md` -- new command: draft written answers to job application screening questions. 7-step workflow with story selection, domain match flag, gap check, Writing Quality Gate integration, Proof Bank enrichment, character limit enforcement (LinkedIn 300 / Greenhouse 500), prior-answer reuse library (`job-search/`). Adopted from upstream PR #39 by saurabhsudhir15, enhanced with cross-cutting module hooks.
- `references/coaching-state-schema.md` -- extracted full coaching_state.md template from COACH.md (adopted from upstream PR #48 by itsdevlin)
- `references/schema-migration.md` -- extracted migration rules from COACH.md
- `references/archival-rules.md` -- extracted archival thresholds from COACH.md
- `references/state-update-triggers.md` -- extracted and consolidated all per-command state update triggers from COACH.md, including new `apply` entry
- `COACH.md` -- replaced 4 inline sections with reference file pointers (schema, migration, archival, triggers). Added `apply` to Command Registry, File Routing, and Mode Detection.
- `.gitignore` -- added `job-search/` (application answer drafts, personal data)
- `README.md` -- added `apply` to commands table, updated repo structure tree, updated command count

---

## v4.3: Architecture Cleanup (shipped 2026-04-22)

**Thesis**: Ultrareview surfaced 20 latent bugs and architectural inconsistencies. Fix the structural ones before adding new surface area.

**Note**: v4.2 shipped the Round Format Verification Module and the "No Gap Without An Opening" rule (commit bc9d00c) but was never documented in VERSIONS.md. Those changes are live in `references/cross-cutting.md` (RFV module) and command files; v4.3 builds on top.

**Storybank overuse tracking rewrite (the headliner)**:
- Previous system flagged any story with global Use Count > 5 as "OVERUSE" regardless of which company saw it. Gabriella at Checkr has no memory of what Brian at Plaid heard, so the warning was noise.
- New model: loop-scoped overuse (hard warning, uses Interview Loops > Stories used per round) vs. global delivery staleness (soft signal only, tracks candidate's own energy decay). Global Use Count never blocks deployment at a new company.
- Files updated: `cross-cutting.md` (Storybank Gap Check rewritten), `storybank-guide.md`, `story-mapping-engine.md`, `prep.md`, `round.md`, `debrief.md`, `progress.md`, `state-update-triggers.md`, `coaching-state-schema.md`.

**Command consolidation**:
- `debrief` merged into `round` Mode B. `debrief` command name preserved as alias for backward compatibility, but `round` is now the primary post-interview command. Prevents drift between two parallel capture paths.
- `analyze` narrowed to post-hoc transcript scoring only (when a transcript arrives after `round` already ran). Mode Detection in COACH.md consolidated to prevent "round or analyze?" prompting overlap.

**Missing commands surfaced in help.md**:
- `round`, `apply`, `map` were all missing from the user-facing Command Guide. Added.
- `apply` added to SKILL.md activation description.

**Schema completeness**:
- `Archetype` field added to Interview Loops schema (was written by `prep` per cross-cutting.md but not in the schema).
- `Proof Bank` and `Contact Network` write triggers added to `state-update-triggers.md`.
- `Interview_Type` column (required for velocity analysis in `progress`) write instructions added to `round.md`, `analyze.md`, `mock.md`, `practice.md`.

**New cross-cutting modules**:
- **Date Handling Module**: centralizes the Bash date verification rule previously only in COACH.md. Now referenced from every command that writes a date.
- **Voice-Input Transcription Awareness Module**: handles predictable Wispr Flow error classes (proper noun phonetic drift, homophones, number-word coupling). Protects Contact Network and Recruiter Feedback from silent corruption.

**Archival**:
- New rule for Interview Loops: compress closed loops >30 days old to 3-5 line summaries. Previously unbounded.
- Enforces the 30-day transcript retention rule in COACH.md Data Privacy by stripping transcript bodies on compression.

**Security**:
- `apply` added to External Text Validation Module integration list. Application forms with embedded directives now trigger the injection guard. Also added `round`, `thankyou`, `resume`, `linkedin`, `negotiate` (previously missing).
- `apply.md` Step 0 Injection Guard added.

**Minor fixes**:
- `feedback` Type D story-use memory: double-increment prevention on Use Count, explicit rules for retroactive story-deployment corrections.
- COACH.md Mode Detection: duplicate recommendations for round vs. analyze consolidated, priority list renumbered.

**Deferred items (all shipped in follow-up commit)**:
- Voice-File Character Policy added to Writing Quality Gate. Handles the em-dash hook by specifying detection + substitution rules for file writes when `voice-and-style.md` prohibits specific characters.
- Session count field removed from Drill Progression schema. Session Log row count is now the authoritative source for meta-check timing per COACH.md Rule 9.
- Score History archival rewritten to be per-Interview_Type (10 rows per type, not 10 total). Prevents silent thinning of one interview type when a candidate has unbalanced practice distribution.
- Storybank Reflection write trigger added to `round.md` Phase 4 Step 5a. Captured only when candidate volunteers hindsight, non-blocking.
- Loop Outcome Drift reconciliation now direction-aware: if Interview Loop has newer updates than the terminal Outcome Log entry, surface the contradiction instead of silent auto-flip. Prevents hiding candidate recovery from a wrongly logged rejection.
- Positioning Drift Check (Check 4) activation wired into `apply`, `outreach`, `prep`, `hype` Phase 0. Flag now surfaces at action moment instead of sitting dead in Coaching Notes.
- Transcript Retention Check added to COACH.md Sync Drift Check as Check 5. Automatically prompts transcript cleanup for closed loops >30 days old. Enforces the Data Privacy retention promise.

---

## v4.4: Context Management (shipped 2026-04-23)

**Thesis**: Long searches turn `coaching_state.md` into a token sink. A 1,400-line state file read 100+ times per session costs context before a single coaching exchange happens. The fix is a two-file pattern: compress closed loops to stubs in the main file, preserve full intel in a sidecar archive.

**Archive file pattern**:
- `coaching_state_archive.md` introduced as a companion to `coaching_state.md`. Contains full loop details for closed, rejected, withdrawn, and stale interview loops.
- Main state file retains a 2-5 line stub per archived loop (status, dates, key learnings, pointer to archive).
- Key learnings for high-effort loops (Socure, Ramp, DoorDash) are preserved directly in the stub so retrospective coaching doesn't require opening the archive.
- Both files added to `.gitignore`: same sensitivity as the main state file.

**Monthly automation**:
- Scheduled task runs on the 1st of each month at 9am local time.
- Scans for newly closed loops longer than 5 lines (not yet compressed), archives full content, replaces with stub.
- Skips any loop with advancing/pending/evaluating status and a hardcoded list of active loop names.

**Token impact**:
- Closed loop section reduced by 177 lines in the initial pass. 10 full-length loop sections compressed to stubs (Socure, Crux Climate, Hamilton AI, Cresta AI, Soff AI, Valon, Retell AI, DoorDash, Ramp, Orb SE Track). 6 additional pre-existing short stubs also moved into archive for completeness (Filevine, Outtake AI, Doppel, Nooks, Mercury, Charta Health).
- Ongoing: each archived loop saves 15-100 lines per session depending on how deep the loop went.

**README and gitignore**:
- `.gitignore` updated to exclude `coaching_state_archive.md`.
- README "Data and Privacy" section updated with context management guidance and the two-file pattern.

---

## v4.6: Minutes Integration (shipped 2026-06-04)

**Thesis**: The coaching brain is strong. The data pipeline is manual. Candidates record meetings, voice memos, and prep calls already. Wire those recordings into the coaching system and eliminate the copy-paste step that sits between every real interview and every coaching session.

**Research basis**: Minutes (silverstein/minutes) is open-source local conversation memory that transcribes and indexes meetings to `~/meetings/` as plain markdown. Integration requires no third-party service, no API key, no cloud sync. Every meeting the candidate has recorded is now queryable by the coaching system.

### Feature 1: Transcript Auto-Detection in `round` (Integration 1, previously shipped)

`round` Phase 3 already checks `~/meetings/` for a meeting transcript matching today's date and company name before asking the candidate to paste. If found, auto-loads into Mode A. This was implemented inline without a VERSIONS entry. Now documented.

**Key file**: `references/commands/round.md` Phase 3 (Transcript auto-detection block)

### Feature 2: Voice Memo Context Pre-Load in `round` (Integration 2)

Before the debrief question sequence in `round` Phase 4, the system now checks for voice memos recorded in the last 4 hours mentioning the company name. These are NOT meeting transcripts (which Phase 3 handles). These are raw impressions the candidate captured immediately after leaving the interview: "I fumbled the data infra question," "the interviewer seemed skeptical when I mentioned X."

The memo is loaded silently and used throughout Phase 4 as a memory aid: pre-filling answers where the memo already covers them, offering quotes when the candidate seems stuck. Any questions mentioned in the memo that were not recalled during debrief are added to Interview Intelligence.

**Why this matters**: Debrief data quality degrades fast after high-stakes events. A voice memo recorded in the elevator is more accurate than recall 2 hours later. Now the system can use that data automatically.

**Key file**: `references/commands/round.md` Phase 4 Step 0

### Feature 3: Networking Call Intelligence in `outreach` (Integration 3)

`outreach` Step 1 now queries `~/meetings/` for past meetings or voice memos mentioning the target person or company. Action items, decisions, and commitments from those meetings are extracted and used as personalization fuel for message hooks.

Specific personalization the system can now produce: referencing something discussed in a past informational interview, surfacing an unfulfilled commitment ("Your notes show you said you'd send [X] after your last call"), and grounding the hook in actual conversation details rather than LinkedIn research alone.

**Why this matters**: Personalized messages have 6x higher response rates. The hardest part of personalization is remembering what was said. Minutes solves that.

**Key file**: `references/commands/outreach.md` Step 1

### Feature 4: Cross-Loop Pattern Mining in `progress` (Integration 4)

`progress` Step 5.6 now queries `~/meetings/` for meeting files whose dates fall within Interview Loop date ranges. It surfaces: questions that appear across 3+ meetings from different companies (high-priority drill targets not yet in the Question Bank), recurring weakness patterns in post-interview voice memos, and action items that were logged but never acted on.

Newly discovered questions are added to Interview Intelligence with a `[minutes-inferred]` source tag so future calibration knows these came from meeting notes, not scored rounds.

**Why this matters**: Interview Intelligence relies on manually logged questions. Candidates forget to log them. Minutes captures what the coach system never sees. This closes the gap.

**Key file**: `references/commands/progress.md` Step 5.6

### Feature 5: Calendar Awareness in `hype` (Integration 5)

`hype` now runs a Phase 0 minutes calendar scan before building the hype reel. It checks `~/meetings/` for voice memos or meeting notes from the last 7 days mentioning upcoming interviews. If a company and timing are mentioned but no prep brief exists, it surfaces this before hype: "I found a note from [N] days ago mentioning a [Company] interview. Want to run `prep` first, or go straight to hype?" If a prep brief exists, the interview details from the memo are pre-loaded into the tailoring section without asking the candidate to repeat them.

**Why this matters**: The v5 roadmap listed calendar awareness as a planned feature requiring Google Calendar integration. This implements the same behavior via minutes voice memos without any external API. A candidate who records "I have a Google PM screen Monday at 2pm" already has calendar awareness.

**Key file**: `references/commands/hype.md` Phase 0

### Supporting changes

- `references/cross-cutting.md`: Minutes Integration Module added (detection, file naming, querying patterns, voice memo vs. transcript distinction, integration points table)
- `COACH.md` file-routing: `outreach` entry updated with minutes note; `hype` and `progress` entries added (previously not listed)
- `.claude/settings.json`: Bash permissions for `ls ~/meetings/` and `grep -irl` queries should be added manually (blocked by self-modification guard during automated write)

### Minutes installation

```bash
# Install the Claude Code plugin (recommended)
claude plugin marketplace add silverstein/minutes

# Or MCP server only
npx minutes-mcp
```

---

## v4.5: Context-Sensitive Scoring (shipped 2026-04-25)

**Thesis**: Flat dimension weights across all interview contexts produce misleading coaching priorities. A structural critique of a moat discussion is noise; the same critique of a behavioral answer is signal.

**Research basis**: Schmidt and Hunter meta-analysis (86k subjects) establishes structured interviews at 2x unstructured validity. But what gets weighted within structure varies by question type and interviewer role. I/O psychology distinguishes behavioral questions (validity r=0.51, STAR expected) from strategic-hypothetical discussions (argument quality matters, STAR format actively harmful). CEO Genome research and Kaplan/Sorensen show executives weight conviction and decisiveness over format compliance; technical evaluators weight methodological precision.

### Context-Sensitive Scoring Module (cross-cutting.md)

New module. Two classification axes applied per scored unit before weights are set:

- **Question Type**: Behavioral / Strategic-Hypothetical / Case/Design / Culture-Fit. Detected from question text.
- **Interviewer Type**: Executive-CEO / Technical / HR-Recruiter / Peer. Detected from Interview Loops data, debrief notes, or transcript intro.

Weighting table: base weights by question type (Substance leads at 40% for Strategic-Hypothetical; Structure leads at 30% for Case/Design; Differentiation leads at 40% for Culture-Fit). Interviewer modifier applied additively, then re-normalized.

Feedback framing shifts: Structure feedback reframed as "argument coherence" for Strategic-Hypothetical. Structure suppressed for Culture-Fit. Credibility probed harder when Interviewer Type = Technical. Differentiation elevated to top priority when Question Type = Culture-Fit.

Output format: each unit displays `Context: [Type] x [Interviewer]` and `Weighted composite: [X.X/5]` alongside raw dimension scores.

### analyze.md (Step 6.5)

New mandatory step between format-aware parsing and scoring: classify question type per unit, detect interviewer type once for the session, apply context weights.

### mock.md (Per-Unit Scorecard + Setup)

Per-Unit Scorecard: added Context tag and Weighted composite line.
Setup: Step 6 added for PM mocks, referencing High-Signal Question Patterns and project deep-dive requirement from `prep.md`.

### PR contribution

Context-Sensitive Scoring Module contributed upstream to noamseg/interview-coach-skill. Generic and personal-data-free.

---

## v4.7: Truth Discipline + Funnel Analytics (shipped 2026-06-26)

**Thesis**: Two failure classes surfaced in live coaching: (1) the coach inferred a status ("started the new job") from a passed target date, producing materially wrong advice; (2) channel and funnel advice was instinct-based with no numbers behind it.

### Feature 1: Status Verification Rule (COACH.md)
A target or planned date is not evidence the event occurred. New mandatory rule plus session-start Check 6: for any passed target date (start date, notice date, petition ETA, decision deadline), search the file for an explicit post-date status update; if absent, ask the candidate once, write the answer, never re-ask. Born from a real miss.

### Feature 2: Channel Benchmark Module (cross-cutting.md)
Directional conversion priors per channel (cold ATS ~1%, direct-to-founder/HM ~5-8% interview conversion, warm intro ~50% decision-maker reach), tagged [estimated] per the No Number Without A Source rule. The candidate's own funnel data supersedes the priors once 3+ data points exist per channel. Consumed by outreach, strategy, and progress. Adapted from mukeshbasvekar/Job-Search-OS.

### Feature 3: Funnel Stats (progress.md Step 5.5b)
Computes the candidate's own stage-to-stage (Applied to Screen to HM to Final/Offer) and per-channel conversion rates directly from existing Interview Loops + Outcome Log data. No new tracking fields. Excludes non-performance closures (visa/budget/role-closed) from conversion math. Skips below 5 tracked opportunities or 3 per-channel data points rather than printing noisy percentages.

## v4.8: Upstream Comp-Call Scoring + Minutes 0.19 Consent Gate (shipped 2026-06-26)

### Feature 1: Comp Call Detection + Scoring (cherry-picked from upstream noamseg/interview-coach-skill 634a8dd)
analyze now gates transcripts on comp markers: 3+ distinct markers routes to negotiation-specific scoring (5 Negotiation Performance Dimensions in negotiate.md) instead of the interview rubric, writing to Comp Strategy rather than Score History. negotiate gains Multi-Round Negotiation, a Non-Standard Terms catalog, an Escalation Playbook, and Post-Close Legal Review coaching. Rationale: in a comp call the counterpart is a negotiator, not an evaluator; the interview rubric does not map.

### Feature 2: Minutes Sensitivity Consent Gate (cross-cutting.md, Minutes Integration Module)
Minutes 0.19.0 enforces sensitivity: restricted on its own agent surfaces, but this skill reads ~/meetings/ directly via ls/grep, bypassing that enforcement. The module now honors the gate manually: restricted meetings are excluded from auto-detection, keyword search, and cross-loop mining; the only override is the candidate explicitly naming the file in-session, confirmed once; matched restricted files surface as a count only, never by title or content.

## v4.9: apply/fit hardening + fit command wired (shipped 2026-08-18)

Ports three patterns from vaibhavarora14/job-application-agent (MIT), plus formalizes the long-used-but-unwired `fit` command.

### Feature 1: Application answer structure (apply.md)
Codifies the three-part spine for motivation/fit/"why us"/"additional info"/"anything else" answers: one company-specific hook, two evidence-backed proof points, one honest gap-bridge only if a material gap exists. ~100-200 words, adapt to the question, plus a hard evidence-integrity rule (every claim traces to resume/storybank/Proof Bank/candidate statement; never invent scale, ownership, tech, or company knowledge).

### Feature 2: Fit Gate Layer + per-requirement evidence tags (cross-cutting.md, Role-Fit Assessment Module)
Adds a Gate Layer that runs BEFORE the five-dimension verdict (exclude/ask/skip/review) so a strong domain score can never override a hard disqualifier (no sponsorship, J.D. required, wrong location, comp below floor, closed posting). Adds per-must-have classification (met/partial/missing/unclear) with a sourced-evidence-or-nothing rule that rolls up into Requirement Coverage.

### Feature 3: Duplicate / re-application check (apply.md Step 0c)
Before drafting, checks Interview Loops + job-search/ for prior applications to the same company. Hard-stop on identical requisition; soft-flag same-company-different-team (surfaces history so re-applying is deliberate, e.g. the 3-prior-Harvey-applications case) and never spotlights prior rejections in the answers themselves.

### Feature 4: `fit` command formally wired
`fit [JD/URL/company]` was used constantly but never defined. Now in the COACH.md registry + Mode Detection (4a), routing to the Role-Fit Assessment Module (Gate Layer first). Alias that reuses `decode`'s JD analysis for a JD/URL or `research`'s assessment for a company-only input. Distinct from `prep`: `fit` decides whether to pursue, `prep` gets you ready once you have.

## v5: Interaction Model (planned)

**Thesis**: Now that the coaching brain is strong and comprehensive, change *how* candidates interact with it.

### Voice Mode for Practice/Mock
Scoped tightly to `practice`, `mock`, and `hype` warmups. The candidate speaks, the system listens, scores delivery alongside content (filler words, pacing, confidence, hedging language). Doesn't replace text for `prep` or `progress` -- those need structured output. But practice and mocks become dramatically more realistic with voice.

### Session Replay
After a mock or practice round, let the candidate replay the exchange with inline coaching annotations. "Right here you hedged for 8 seconds before getting to the point. Here's what a tighter version sounds like."

### Lightweight Companion UI
Not replacing Claude Code, but a read-only dashboard that visualizes `coaching_state.md`: score trends over time, storybank coverage heatmap, interview loop status, drill progression. Think of it as a `progress` command you can glance at without running anything. Could be a simple local web server that reads the markdown file.

### Calendar Awareness
Connect to Google Calendar / Outlook. When an interview is 24 hours out, auto-trigger `hype`. When it's a week out and no `prep` has been run, nudge. Time-aware coaching exists in v1 but requires the candidate to self-report timelines.

### Collaborative Storybank Building
A friend or mentor can review your storybank and leave comments. Still file-based, but with a lightweight review protocol. Most candidates build stories in isolation -- a second pair of eyes catches blind spots the coach can't.

---

## v6: Platform (planned)

**Thesis**: The coaching engine is proven. Now make it accessible to people who'll never touch a CLI.

### Full Web App
Backend, auth, database replacing `coaching_state.md`, real UI for all commands. The skill files become the system prompt for an API-based product. The reference architecture is already modular enough to port -- each command file maps to an API endpoint.

### Coaching Marketplace
Let experienced interviewers or career coaches customize the rubrics, add company-specific intelligence, and offer specialized coaching tracks (e.g., "FAANG PM prep" with insider-calibrated scoring). The cross-cutting module architecture already supports this -- new modules slot in without rewriting commands.

### Team/Org Mode
Companies use this to prep internal candidates for promotion panels, or recruiting teams use it to train interviewers (flip the perspective -- coach the person *giving* the interview). Same 5 dimensions, different lens.

### Anonymized Intelligence Network
With enough users, the system can surface patterns across candidates: "Candidates who get offers at Stripe tend to score 4+ on Differentiation. Candidates rejected at Amazon most often fail on Structure." No individual data shared -- just aggregate signals that improve everyone's prep.

---

## Version Tension

v3 extended the coaching engine to every surface that matters in a job search. v3.1-v3.5 added navigation, security, relationship intelligence, archetype detection, and expert frameworks. v4 closed the last gap: making the system sound like the candidate, not like AI. The system is now both comprehensive and personal.

v5 (voice, UI, integrations) is exciting but expensive. v6 is a different company. The question now is whether this system, deployed by real job seekers, produces measurably better outcomes than generic AI interview prep.
