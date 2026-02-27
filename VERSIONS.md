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

## v3: Interaction Model (planned)

**Thesis**: Now that the coaching brain is strong, change *how* candidates interact with it.

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

## v4: Platform (planned)

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

v2 is clearly the right step after v1 — it makes the product meaningfully better for current users without architectural risk. v3 is exciting but expensive (voice, UI, integrations). v4 is a different company. The mistake would be jumping to v3/v4 before v2 has proven that the coaching engine actually moves candidate outcomes.
