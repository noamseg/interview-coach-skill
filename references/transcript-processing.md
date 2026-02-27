# Transcript Processing Guide

This guide covers how to clean, parse, and analyze interview transcripts for maximum learning.

---

## Step 0.5: Format Detection and Normalization

**Before cleaning, detect the transcript source format and normalize to a standard representation.** See `references/transcript-formats.md` for the full protocol.

1. Examine the first 30-50 lines for format signals (VTT headers, timestamp styles, speaker label patterns, topic headers).
2. Identify the source format: Otter.ai, Grain, Google Meet, Zoom VTT, Granola, Microsoft Teams, Tactiq, or Manual/generic.
3. Apply format-specific normalization rules to produce the internal representation (one speaker turn per block, timestamps stripped, speaker labels standardized).
4. Detect speaker count: 2 speakers → Interviewer/Candidate. 3+ speakers → flag as potential panel, preserve distinct labels.
5. Report quality signals: speaker label coverage, normalization confidence, multi-speaker detection, artifacts detected.

If detection is uncertain, default to Manual/generic processing and note the ambiguity.

The normalized transcript is the input to Step 1 (cleaning). Timestamps should already be stripped by normalization — Step 1 focuses on content-level cleaning only.

---

## Step 1: Clean the Transcript

The normalized transcript (from Step 0.5) is cleaner than raw input, but still needs content-level cleaning. Timestamps should already be stripped by normalization.

### What to Remove
- Filler words: "um," "uh," "like," "you know," "basically"
- False starts: "I was going to— actually, let me say—"
- Duplicated speaker lines (any remaining after normalization)
- Any residual timestamps not caught by normalization

### What to Keep
- Speaker labels (Interviewer / Candidate)
- Substantive content, even if awkwardly phrased
- Pauses marked as [pause] if they're meaningful (shows thinking)
- Questions exactly as asked (don't paraphrase)

### Cleaning Prompt

```
TASK: Clean this interview transcript.

INPUT: [paste raw transcript]

INSTRUCTIONS:
- Remove filler words (um, uh, like, you know, basically) without changing meaning
- Remove false starts and self-corrections, keeping the final version
- Fix obvious transcription errors
- Keep speaker labels
- Preserve the actual content and meaning

OUTPUT: Cleaned transcript ready for analysis
```

---

## Step 1.5: Transcript Quality Gate

After cleaning, assess how much of the transcript is usable before proceeding to analysis.

### Quality Assessment

| Quality Level | Criteria | Action |
|---|---|---|
| **High** (>80% clean) | Clear speaker labels, most content recoverable, questions identifiable | Proceed with full analysis. Normal evidence confidence. |
| **Medium** (60-80% clean) | Some garbled sections, occasional missing speaker labels, most Q&A pairs recoverable | Proceed but flag: "This transcript has gaps. I'll note where my confidence is reduced." Be explicit when claims are based on incomplete data. |
| **Low** (<60% clean) | Major gaps, missing speaker labels, garbled sections, can't identify all questions | Say so upfront: "This transcript has significant quality issues. I can score [N] of the [M] answers, but my confidence is low overall. Here's what I can and can't assess." Consider asking: "Do you remember any answers that are missing or garbled? Your memory + partial transcript is better than partial transcript alone." |

### Format-Derived Quality Factors

Incorporate these signals from Step 0.5 into the quality assessment:
- **Speaker label coverage**: If normalization couldn't identify speakers for >20% of text blocks, downgrade quality level by one tier.
- **Normalization confidence**: Low confidence (defaulted to generic processing) adds uncertainty — note in quality assessment.
- **Multi-speaker detection**: 3+ speakers detected → flag for panel-aware parsing in Step 2. If speaker roles couldn't be assigned, ask the candidate to clarify who was who.
- **Artifacts detected**: Echo artifacts, misattributions, or garbled sections identified during normalization should be counted toward the quality assessment.

State the quality level at the start of analysis. Don't pretend bad data is good data.

---

## Step 2: Format-Aware Parsing

Structure the transcript for systematic analysis. The parsing approach depends on the interview format.

### Step 2.0: Format Detection

Determine the interview format using this priority chain:
1. **Coaching state**: Check `coaching_state.md` → Interview Loops → Round formats for this company/round.
2. **Candidate statement**: The candidate may have told you the format in conversation.
3. **Transcript inference**: Panel interviews have 3+ speakers. System design transcripts have long candidate monologues with probing follow-ups. Technical+behavioral mix shows distinct mode switches.
4. **Ask**: If ambiguous, ask: "What type of interview was this — behavioral, system design, panel, or a mix?"
5. **Default**: If unknown, default to Path A (Behavioral).

### Path A: Behavioral Interview (default)

Used for: behavioral screen, deep behavioral, bar raiser, culture fit, hiring manager 1:1.

```
FOR EACH Q&A PAIR, CAPTURE:
- unit_id: Q1, Q2, etc.
- question_text (verbatim)
- answer_text (verbatim, trimmed of filler)
- topic: behavioral / technical / strategic / situational / cultural
- competency_tested: leadership / collaboration / problem-solving / communication / technical / etc.
- word_count: number of words in answer
- did_answer_question: Yes / Partial / No
- follow_up_triggered: Yes / No (did interviewer ask for more?)

SUMMARY STATS:
- Total questions: ___
- Fully answered: ___
- Partially answered: ___
- Not answered: ___
- Average answer length: ___ words
- Longest answer: ___ words (flag if >300)
- Follow-ups triggered: ___
```

### Path B: Panel Interview

Used when: 3+ distinct speakers detected, or format is known to be panel.

Parse into **exchanges** (not pairs). Each exchange may involve multiple interviewers.

```
FOR EACH EXCHANGE, CAPTURE:
- unit_id: E1, E2, etc.
- lead_interviewer: [name/label of who asked the primary question]
- question_text (verbatim)
- answer_text (verbatim)
- follow_up_chain: [list of follow-ups from ANY interviewer, with interviewer label for each]
- cross_examiner: [did a different interviewer jump in? who?]
- competency_tested:
- word_count:

PANEL ANALYSIS:
- Interviewer participation map: [who asked how many questions, who followed up most]
- Cross-interviewer patterns: [did interviewers build on each other's questions? tag-team?]
- Candidate adaptation: [did the candidate adjust style/depth across different interviewers?]
- Energy distribution: [even across the panel, or front-loaded/faded?]
```

### Path C: System Design / Case Study

Used for: system design, technical case study, architectural review, product design.

Parse into **phases** (not pairs). Phase types: scoping, approach, deep-dive, tradeoff, adaptation, summary.

```
FOR EACH PHASE, CAPTURE:
- unit_id: P1, P2, etc.
- phase_type: scoping / approach / deep-dive / tradeoff / adaptation / summary
- candidate_contributions: [key statements, decisions, reasoning]
- interviewer_probes: [questions, challenges, redirections within this phase]
- key_decisions: [decisions the candidate made and rationale]
- clarification_questions_asked: [by the candidate — critical in system design]
- thinking_out_loud_quality: High / Medium / Low
- duration_estimate: [rough time in this phase if inferable]

SUMMARY STATS:
- Time-in-scoping %: ___ (< 10% is a red flag — candidate skipped scoping)
- Clarification questions count: ___ (0 is a red flag)
- Tradeoffs articulated unprompted: ___ vs. when probed: ___
- Phase progression: [did the candidate manage time across phases?]
```

### Path D: Technical + Behavioral Mix

Used when: the interview contains distinct behavioral and technical segments.

Segment the transcript by mode, then parse each segment with the appropriate path.

```
SEGMENTATION:
- Identify transition points between behavioral and technical modes
- Label each segment: [behavioral] or [technical]
- Note transition quality: smooth / abrupt / confused

BEHAVIORAL SEGMENTS: Parse via Path A (Q# units)
TECHNICAL SEGMENTS: Parse via Path C (P# phases)

MODE-SWITCHING METADATA:
- Transition points: [where did mode switches happen?]
- Transition quality: [did the candidate shift cleanly?]
- Mode balance: [% behavioral vs. % technical]
- Integration moments: [did the candidate connect technical and behavioral threads?]
```

### Path E: Case Study (Candidate-Driven)

Used for: consulting-style cases, business cases, product strategy cases where the candidate drives the analysis.

Parse into **stages**: problem definition, framework, analysis, recommendation, Q&A.

```
FOR EACH STAGE, CAPTURE:
- unit_id: S1, S2, etc.
- stage_type: problem-definition / framework / analysis / recommendation / q-and-a
- information_requests: [what data/clarification did the candidate ask for?]
- hypothesis_statements: [did the candidate state hypotheses?]
- pivots: [did the candidate change direction when given new information?]
- quantitative_rigor: High / Medium / Low / None
- synthesis_quality: [how well did the candidate tie analysis back to the original problem?]

SUMMARY STATS:
- Information requests count: ___
- Hypotheses stated: ___
- Pivots on new information: ___ (0 may indicate rigidity)
- Quantitative elements: ___
- Recommendation clarity: High / Medium / Low
```

---

## Step 2.5: Anti-Pattern Scan

Before scoring, scan the transcript against known failure patterns. This provides an objective checklist that doesn't rely on the coach to "notice" problems organically.

### Detection Checklist

| Anti-Pattern | Detection Heuristic | Severity | Fix Reference |
|---|---|---|---|
| **Rambling** | Any answer >3 minutes / >300 words without a check-in or pause | High | Constraint ladder drill |
| **Verbal crutches** | Same filler phrase ("So basically...", "At the end of the day...") appears 3+ times across answers | Medium | Record and playback — awareness is often enough |
| **"We" default** | >50% of action verbs in an answer use "we" instead of "I" | High | I/we audit drill |
| **Never clarifies** | Candidate asks zero clarifying questions across entire interview | Medium | Question-before-answer drill |
| **Conflict avoidance** | Stories about "challenges" contain no actual disagreement, tension, or failure | High | Tension-mining drill |
| **Question dodging** | Answer addresses a related topic but not what was actually asked | High | Question-decoding drill |
| **Over-claiming** | Impact claims without specific role, or "I" replacing obvious team effort | High | Constraint practice (add realistic limitations) |
| **Jargon hiding** | >5 domain-specific terms per 100 words with no plain-language explanation | Medium | "Explain to a 10-year-old" drill |
| **Front-loaded hedge** | Answer starts with "I think maybe...", "It's hard to say but...", "I'm not sure if..." | Medium | Opening line practice |
| **Story recycling** | Same story used for 2+ different questions | Medium | Storybank gap analysis |
| **Abrupt ending** | Answer stops without impact/outcome/takeaway — just trails off | Medium | "Land the plane" drill: practice the last 15 seconds |
| **Monologue mode** | Answers average >2 minutes with no pauses, check-ins, or reads of interviewer signals | Medium | Signal-reading practice |
| **Missing "so what"** | Story has actions but never connects to why it mattered | High | Impact chain drill |
| **Defensive deflection** | When pressed on a weakness, redirects to strengths without acknowledging the gap | Medium | Gap-handling drill |
| **Rehearsed robotics** | Answer sounds memorized — identical phrasing to previous practice, no adaptation to question nuance | Medium | Variation practice: same story, different framings |

After scanning, include detected anti-patterns in the analysis output. Each detected pattern should reference which unit (Q#, E#, P#, S#) triggered it and link to the specific fix.

### Format-Specific Anti-Patterns

In addition to the behavioral anti-patterns above, scan for these format-specific patterns:

**Panel Interview Anti-Patterns:**

| Anti-Pattern | Detection Heuristic | Severity | Fix |
|---|---|---|---|
| **Plays to one interviewer** | 70%+ of eye contact cues / engagement directed at one panelist | High | Practice distributing attention. Address follow-ups to the asker, then reconnect with the panel. |
| **Ignores silent observer** | One panelist asks zero questions and candidate never engages them | Medium | Proactively include quiet panelists: "I'd be curious about your perspective on this." |
| **Inconsistent depth** | Answers vary wildly in depth across panelists (detailed for senior, thin for junior) | Medium | Calibrate depth to the question, not the questioner's perceived seniority. |
| **No cross-reference** | Candidate never connects an answer to a previous panelist's question | Low | Build narrative threads: "Building on what [name] asked earlier..." |

**System Design Anti-Patterns:**

| Anti-Pattern | Detection Heuristic | Severity | Fix |
|---|---|---|---|
| **Skips scoping** | Candidate jumps to solution within first 2 minutes, no clarification questions | High | Clarification-seeking drill. First 3-5 minutes must be questions. |
| **Solution fixation** | Commits to one approach without exploring alternatives | High | Tradeoff articulation drill. Name 2+ approaches before committing. |
| **Silent thinking** | Long pauses (30s+) without narrating thought process | Medium | Thinking-out-loud drill. Narrate even when uncertain. |
| **Ignores probes** | Interviewer asks a probing question, candidate continues on original track | High | Signal-reading practice. Treat probes as required pivots. |
| **No time management** | Spends 60%+ of time on one phase, rushes or skips others | Medium | Phase-pacing practice with explicit time targets. |
| **Bluffs on unknowns** | Claims knowledge of systems/concepts they clearly don't understand | High | Honesty drill: "I'm less familiar with X, but here's how I'd approach learning it..." |

**Technical + Behavioral Mix Anti-Patterns:**

| Anti-Pattern | Detection Heuristic | Severity | Fix |
|---|---|---|---|
| **Mode confusion** | Gives behavioral answer to technical question or vice versa | High | Mode-switching drill. Identify the question type before answering. |
| **One-mode dominance** | 80%+ of interview time spent in one mode despite mixed format | Medium | Balance practice. Deliberately shift modes. |
| **No integration** | Never connects technical decisions to behavioral context or vice versa | Medium | Integration drill: "The technical choice connects to my leadership approach because..." |
| **Energy cliff** | Performance visibly drops in the second mode (usually technical → behavioral) | Medium | Stamina practice. Run 45+ minute mixed sessions. |

**Case Study Anti-Patterns:**

| Anti-Pattern | Detection Heuristic | Severity | Fix |
|---|---|---|---|
| **Framework forcing** | Applies a named framework (MECE, Porter's 5 Forces) that doesn't fit the problem | High | Problem-first thinking. Understand the problem before reaching for a framework. |
| **Analysis without hypothesis** | Runs through data/analysis without stating what they expect to find | Medium | Hypothesis-first practice: "I expect to see X because Y. Let me check..." |
| **Ignores new info** | When given additional data, doesn't update analysis or conclusions | High | Flexibility drill. Practice pivoting when assumptions are challenged. |
| **No recommendation** | Analyzes thoroughly but never commits to a recommendation | High | "If you had to decide right now" drill. Force a recommendation with rationale. |
| **Math avoidance** | Skips quantitative analysis when numbers are available | Medium | Quantitative practice. Back-of-envelope calculations build credibility. |

---

## Step 3: Multi-Lens Scoring

Run the parsed transcript through evaluative lenses. **Important**: Which lenses you run depends on the Post-Scoring Decision Tree in `references/commands/analyze.md`. If a primary bottleneck is identified after initial scoring, scope the analysis accordingly rather than running all four lenses mechanically. Always follow the evidence sourcing standard from SKILL.md. **For Quick Prep track**: Run only Lens 1 and skip to delta sheet.

### Scoring Weight Adjustments by Format

Reference `references/commands/prep.md`'s Interview Format Taxonomy as the single source of truth for format-specific weight adjustments:

| Format | Primary Dimensions (weighted highest) |
|---|---|
| Behavioral screen | Structure, Relevance |
| Deep behavioral | Substance, Credibility |
| System design / case study | Structure, Substance |
| Panel | All dimensions + Adaptability |
| Technical + behavioral mix | Substance, Structure |
| Presentation round | Structure, Differentiation |
| Bar raiser / culture fit | Credibility, Differentiation |
| Hiring manager 1:1 | Relevance, Differentiation |

### Additional Scoring Dimensions for Non-Behavioral Formats

These supplement the core 5 dimensions — they do not replace them. Score each 1-5 when the format applies:

**System Design / Case Study:**
- **Process Visibility** (1-5): How clearly the candidate narrated their thinking process. 1 = silent/opaque, 5 = every decision explained in real-time.
- **Scoping Quality** (1-5): How well the candidate defined the problem before solving it. 1 = jumped to solution, 5 = thorough scoping with clarifying questions.
- **Tradeoff Articulation** (1-5): How well the candidate named tradeoffs and alternatives. 1 = single approach with no alternatives, 5 = multiple approaches compared with explicit tradeoff reasoning.
- **Adaptability** (1-5): How well the candidate responded to probes, redirections, and new constraints. 1 = rigid, 5 = graceful pivots.

**Panel:**
- **Interviewer Adaptation** (1-5): How well the candidate calibrated responses to different panelists. 1 = identical style for everyone, 5 = clearly adapted depth, tone, and focus per interviewer.
- **Energy Consistency** (1-5): How well the candidate maintained engagement across the full panel session. 1 = visible fatigue/disengagement, 5 = consistent energy throughout.
- **Cross-Referencing** (1-5): How well the candidate connected threads across different panelists' questions. 1 = treated each question in isolation, 5 = built narrative connections.

**Technical + Behavioral Mix:**
- **Mode-Switching Fluidity** (1-5): How cleanly the candidate transitioned between technical and behavioral modes. 1 = confused or jarring, 5 = seamless transitions.
- **Integration Quality** (1-5): How well the candidate connected technical decisions to behavioral context. 1 = no connection, 5 = naturally wove both together.
- **Energy Trajectory** (1-5): How energy/quality held up across the full mixed session. 1 = significant drop in second half, 5 = maintained or improved.

### Lens 1: Hiring Manager Perspective

The person who'll champion you (or not) in the hiring committee.

```
LENS 1: HIRING MANAGER PERSPECTIVE

Evaluate as the hiring manager for this role.

For each answer, score 1-5 on:
- Substance
- Structure
- Relevance
- Credibility
- Differentiation

After each answer:
- One concrete improvement (specific missing evidence, numbers, or tradeoffs)
- Root cause pattern (if detected — see rubrics-detailed.md root cause taxonomy)
- Would this answer move candidate forward? Y/N/Maybe + brief why

SUMMARY TABLE:
| Q# | Sub | Str | Rel | Cred | Diff | Avg | Forward? | Root Cause | Top Fix |
|----|-----|-----|-----|------|------|-----|----------|------------|---------|

SIGNAL-READING ANALYSIS:
- Questions where follow-up indicated interest (positive signal):
- Questions where interviewer moved on quickly (likely negative):
- Questions where interviewer redirected (answer wasn't landing):
- Missed signals: moments where the candidate should have adapted but didn't

ANTI-PATTERNS DETECTED:
[List from Step 2.5 scan with Q# references]

FINAL OUTPUT:
- Hire Signal: Strong Hire / Hire / Mixed / No Hire
- 3 strongest answers (why they worked)
- 3 weakest answers (specific gaps + root cause patterns)
- Biggest concern about this candidate
- One-sentence justification for your decision
- Primary bottleneck dimension → triage recommendation (see Post-Scoring Decision Tree in `references/commands/analyze.md`)
```

### Lens 2: Skeptical Specialist

The senior practitioner checking if you actually know what you're talking about.

```
LENS 2: SKEPTICAL SPECIALIST

Evaluate as a skeptical senior specialist in the candidate's field.

For each technical or domain-specific answer, identify where they:
- Hand-waved technical details
- Skipped constraints or edge cases
- Over-claimed impact without methodology
- Used jargon to hide lack of depth
- Missed obvious alternatives or tradeoffs

For each answer:
- One "dig deeper" question that would expose gaps
- Score 1-5: Technical accuracy
- Score 1-5: Depth vs breadth (1=too shallow, 5=appropriate)
- Score 1-5: Acknowledgment of tradeoffs

FLAG: Answers that would make a specialist skeptical
```

### Lens 3: Company Values Alignment

Checking if the candidate demonstrates the company's specific principles.

```
LENS 3: VALUES ALIGNMENT

Score each answer on alignment with company principles.

FOR EACH PRINCIPLE:
- Which answers touched it? (list Q#s)
- How explicitly? (implicit mention / direct example)
- Score 1-5: How well the story demonstrates this value

IDENTIFY:
- Principles completely missed
- Principles mentioned but not demonstrated with evidence
- Strongest principle alignment (which answers showed which values best)

SUGGEST:
For each missed principle:
1. Which existing story could have surfaced it?
2. How to weave it into an answer next time (specific insertion point)
```

### Lens 4: Calibration (Brevity & Clarity)

Checking if answers are too long, too jargon-heavy, or meandering.

```
LENS 4: CALIBRATION

For each answer >150 words, create:
- 30-second version (≤80 words)
- 90-second version (≤220 words)
- "Explain to a 10-year-old" version

ANALYZE:
- Jargon density (domain-specific terms per 100 words)
- Hedging frequency (count: "maybe," "kind of," "sort of," "I think")
- Passive voice usage (flag sentences)
- Meandering score 1-5 (5 = every sentence advances the answer)

FOR EACH ANSWER:
- Core point (one sentence)
- Redundant phrases or tangents to cut
- Where to cut without losing substance

SUMMARY:
- Average answer length: ___ words
- % of answers that meandered (score <3): ___
- Most common filler phrases: ___
- Clarity grade: A / B / C / D
```

---

## Step 4: Synthesize into Interview Delta

Combine all lens outputs into actionable summary.

```
INTERVIEW DELTA SHEET

INTERVIEW: [Company] - [Role] - [Date]

OVERALL SCORES:
Substance: ___ | Structure: ___ | Relevance: ___ | Credibility: ___ | Differentiation: ___
Calibration band: [early career / mid-career / senior/lead / executive]
Hire Signal: Strong Hire / Hire / Mixed / No Hire

PRIMARY BOTTLENECK: [dimension]
TRIAGE PATH: [coaching path chosen per Post-Scoring Decision Tree in references/commands/analyze.md]

ANTI-PATTERNS DETECTED: [list with Q# references]

3 FIXES FOR NEXT TIME (ordered by triage priority):
1. [Specific behavior] - because [evidence from this interview]
   Root cause: [pattern from taxonomy]
   Drill: [exact practice exercise]
2. [Behavior] - because [evidence]
   Root cause: [pattern]
   Drill: [exercise]
3. [Behavior] - because [evidence]
   Root cause: [pattern]
   Drill: [exercise]

2 STORIES TO RETIRE (OR REWORK):
1. [Story title] - Why: overused / thin evidence / low differentiation
2. [Story title] - Why: [reason]

1 NEW STORY TO ADD:
Gap observed: [competency missing]
Suggested source: [which experience could fill this]

CARRY FORWARD:
[One strong behavior from this interview to maintain]

INTERVIEW FORMAT: [detected format]
FORMAT-SPECIFIC ANALYSIS: [include if non-behavioral — see below]

REFLECTION PROMPTS:
- How does this feedback compare to your gut feeling about the interview?
- Of the growth areas above, which feels most within your control?
- What would it look like to practice that this week?

NEXT ACTIONS (co-created with candidate):
[ ] Update storybank: retire [stories], add [new story]
[ ] Run drill: [specific exercise for priority growth area]
[ ] Practice: [weak unit from this interview] until scores 4+
[ ] Review before next interview: this delta sheet
```

### Format-Specific Delta Sheet Sections

Include the relevant section below when the interview format is non-behavioral:

**System Design / Case Study:**
```
FORMAT-SPECIFIC ANALYSIS: System Design

PROCESS SCORES:
Process Visibility: ___ | Scoping Quality: ___ | Tradeoff Articulation: ___ | Adaptability: ___

PHASE ANALYSIS:
- Scoping %: ___% of total time (target: 15-25%)
- Clarification questions: ___ (0 = red flag)
- Tradeoff breakdown: ___ unprompted / ___ when probed
- Phase progression: [managed time well / rushed end / stuck in one phase]
- Strongest phase: [which phase and why]
- Weakest phase: [which phase and why]
```

**Panel:**
```
FORMAT-SPECIFIC ANALYSIS: Panel

PANEL SCORES:
Interviewer Adaptation: ___ | Energy Consistency: ___ | Cross-Referencing: ___

PANEL DYNAMICS:
- Interviewer engagement: [who was most engaged, who was least]
- Strongest exchange: E___ — [why it worked]
- Weakest exchange: E___ — [what went wrong]
- Cross-interviewer threads: [moments where the candidate connected questions across panelists]
- Energy arc: [how energy changed across the session]
```

**Technical + Behavioral Mix:**
```
FORMAT-SPECIFIC ANALYSIS: Technical + Behavioral Mix

MIX SCORES:
Mode-Switching Fluidity: ___ | Integration Quality: ___ | Energy Trajectory: ___

MODE ANALYSIS:
- Behavioral mode average: Sub ___ / Str ___ / Rel ___ / Cred ___ / Diff ___
- Technical mode average: Sub ___ / Str ___ / Rel ___ / Cred ___ / Diff ___
- Stronger mode: [behavioral / technical / balanced]
- Transition moments: [where mode switches happened and quality of each]
- Integration highlights: [moments where the candidate connected both modes]
```

---

## Step 5: Update Coaching State

After analysis, update `coaching_state.md` per the State Update Triggers in SKILL.md:

1. **Score History**: Add a row with the interview scores, Type: interview, and Hire Signal from the overall assessment.
2. **Active Coaching Strategy**: Write or update the strategy based on the triage decision (see Step 15 in `references/commands/analyze.md`). Preserve Previous approaches when changing strategy.
3. **Session Log**: Add an entry for this analysis session.
4. **Storybank**: Apply any rework/retire/add recommendations from the delta sheet.

The following pattern metrics are captured inline in the analysis output (Anti-Pattern Scan, Per-Answer Scorecards, and Delta Sheet) rather than in a separate tracker. Key metrics to reference in future sessions:
- Average scores per dimension
- Anti-patterns detected (with Q# references)
- Top 3 weak competencies
- Top 3 overused crutches
- Trend vs. previous analysis (improving/stagnant/declining per dimension)

