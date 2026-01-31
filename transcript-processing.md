# Transcript Processing Guide

This guide covers how to clean, parse, and analyze interview transcripts for maximum learning.

---

## Step 1: Clean the Transcript

Raw transcripts from Granola, Otter, Tactiq, or other tools are messy. Clean before analyzing.

### What to Remove
- Filler words: "um," "uh," "like," "you know," "basically"
- False starts: "I was going to— actually, let me say—"
- Duplicated speaker lines (transcription errors)
- Timestamps (unless needed for specific analysis)

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

## Step 2: Parse into Q&A Units

Structure the transcript for systematic analysis.

### Parsing Prompt

```
TASK: Parse this transcript into question-answer pairs.

INPUT: [cleaned transcript]

FOR EACH PAIR, CAPTURE:
- question_number (Q1, Q2, etc.)
- question_text (verbatim)
- answer_text (verbatim, trimmed of filler)
- topic: behavioral / technical / strategic / situational / cultural
- competency_tested: leadership / collaboration / problem-solving / communication / technical / etc.
- word_count: number of words in answer
- did_answer_question: Yes / Partial / No
- follow_up_triggered: Yes / No (did interviewer ask for more?)

OUTPUT FORMAT:
1. Table with all Q&A pairs and metadata
2. Summary stats:
   - Total questions: ___
   - Fully answered: ___
   - Partially answered: ___
   - Not answered: ___
   - Average answer length: ___ words
   - Longest answer: ___ words (flag if >300)
   - Follow-ups triggered: ___
```

---

## Step 3: Multi-Lens Scoring

Run the parsed transcript through four evaluative lenses, each revealing different insights.

### Lens 1: Hiring Manager Perspective

The person who'll champion you (or not) in the hiring committee.

```
LENS 1: HIRING MANAGER PERSPECTIVE

INPUTS:
- Role: [title]
- Company: [name]
- Parsed Q&A from above
- Company prep brief (values, priorities)
- Hiring manager LinkedIn (if available)

TASK:
Act as the hiring manager for this role.

For each answer, score 1-5 on:
- Substance
- Structure  
- Relevance
- Credibility

After each answer:
- One concrete improvement (specific missing evidence, numbers, or tradeoffs)
- Would this answer move candidate forward? Y/N/Maybe + brief why

SUMMARY TABLE:
| Q# | Sub | Str | Rel | Cred | Avg | Forward? | Top Fix |
|----|-----|-----|-----|------|-----|----------|---------|

FINAL OUTPUT:
- Overall impression: Strong Hire / Hire / Mixed / No Hire
- 3 strongest answers (why they worked)
- 3 weakest answers (specific gaps)
- Biggest concern about this candidate
- One-sentence justification for your decision
```

### Lens 2: Skeptical Specialist

The senior practitioner checking if you actually know what you're talking about.

```
LENS 2: SKEPTICAL SPECIALIST

INPUTS:
- Candidate's role/discipline: [engineer / PM / designer / data scientist / etc.]
- Parsed Q&A

TASK:
Role-play as a skeptical senior specialist in the candidate's field.

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

INPUTS:
- Company: [name]
- Company values/principles: [list them]
- Parsed Q&A

TASK:
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

INPUTS:
- Parsed Q&A

TASK:
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
Substance: ___ | Structure: ___ | Relevance: ___ | Credibility: ___
Hiring Manager Assessment: Strong Hire / Hire / Mixed / No Hire

3 FIXES FOR NEXT TIME:
1. [Specific behavior] - because [evidence from this interview]
   Drill: [exact practice exercise]
2. [Behavior] - because [evidence]
   Drill: [exercise]
3. [Behavior] - because [evidence]
   Drill: [exercise]

2 STORIES TO RETIRE (OR REWORK):
1. [Story title] - Why: overused / thin evidence / low differentiation
2. [Story title] - Why: [reason]

1 NEW STORY TO ADD:
Gap observed: [competency missing]
Suggested source: [which experience could fill this]

CARRY FORWARD:
[One strong behavior from this interview to maintain]

NEXT ACTIONS:
[ ] Update storybank: retire [stories], add [new story]
[ ] Run drill: [specific exercise for Fix #1]
[ ] Practice: [weak Q# from this interview] until scores 4+
[ ] Review before next interview: this delta sheet
```

---

## Step 5: Update Tracking (Full System)

After each interview, update the persistent failure mode tracker.

```
FAILURE MODE TRACKER UPDATE

Add this interview's data:

PATTERN METRICS:
- % questions actually answered: ___
- Average scores: Sub ___ | Str ___ | Rel ___ | Cred ___
- Talk:listen ratio estimate: ___
- Filler word rate: ___ per minute
- Answer length consistency (std dev): ___

COMPETENCY BREAKDOWN:
Top 3 weak competencies:
1. [competency] - avg score ___ across Q#[list]
2. [competency] - avg score ___
3. [competency] - avg score ___

TOP 3 OVERUSED CRUTCHES:
1. [pattern] - appeared in Q#[list]
2. [pattern] - appeared in Q#[list]
3. [pattern] - appeared in Q#[list]

TREND COMPARISON:
vs. Previous interview:
- Improving: [list]
- Stagnant: [list]
- Declining: [list]

CELEBRATION:
What improved since last time: ___
```

---

## Timing Guidelines

- Clean transcript: 5-10 minutes
- Parse into Q&A: 10 minutes
- Lens 1 (Hiring Manager): 15 minutes
- Lens 2 (Specialist): 10 minutes
- Lens 3 (Values): 10 minutes
- Lens 4 (Calibration): 10 minutes
- Synthesize delta: 10 minutes

**Total: ~60-75 minutes for full analysis**

For Quick Prep users: Run only Lens 1 and skip to delta sheet (~30 minutes).
