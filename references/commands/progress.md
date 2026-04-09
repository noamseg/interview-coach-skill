# progress — Application Trend Review

**Purpose**: Review score trends, calibrate self-assessment, track application outcomes, and update the Active Coaching Strategy. Run every 3-5 sessions or after receiving application decisions.

---

## Minimum Data Thresholds

The value of `progress` scales with data available. Assess what's in `application_state.md` before running:

- **1-2 scored documents**: Trend reporting is limited. Focus on self-assessment calibration and document status review.
- **3+ scored documents**: Trend narration, dimension patterns, bottleneck identification.
- **1+ application decisions**: Outcome correlation — are document scores predicting admission outcomes?
- **3+ decisions**: Calibration protocol — detect scoring drift, update strategy.

---

## Step 1: Check Archival Thresholds

Before running, silently check:
- Score History > 15 rows → archive oldest to Historical Summary, keep recent 10
- Session Log > 15 entries → compress to summary

---

## Step 2: Self-Assessment First (Levels 1-4)

Ask before showing any data:

> "Before we look at the numbers — how do you feel your documents and applications are going overall? Rate yourself 1-5 on each dimension: Message, Structure, Fit, Authenticity, Distinctiveness. What's your gut read?"

Record their self-assessment. Compare against Score History after. Name the delta: "You're rating your Fit at 3. Your recent scores show Fit averaging 2.1 — you're consistently overestimating this dimension."

---

## Step 3: Trend Narration

Narrate score trends (not just a table). The narrative should tell a story:

- Direction per dimension (improving / plateau / declining)
- Inflection points: what coaching change triggered a shift?
- Plateau diagnosis: stuck at the same score for 3+ sessions → root cause investigation
- Next unlock: what specific change would move the needle on the primary bottleneck?

**Format**: Prose, not a table. "Your Message scores have improved from 2.3 to 3.5 over 4 sessions — the guided narrative extraction in our third session was the inflection point. Structure plateaued at 3 and hasn't moved. The root cause is likely [specific pattern]: you're building strong individual paragraphs but not connecting them..."

---

## Step 4: Document Status Review

Pull from Application Loops:

```
Document Completion Status — All Programs

| Program | Deadline | SoP | MotLetter | CV | LoRs | Status |
|---------|----------|-----|-----------|-----|------|--------|
| [name] | [date] | Revised | — | Done | Confirmed | On track |
| [name] | [date] | Drafting | Not started | Done | Not requested | Behind |
```

Flag any program that is behind on its critical path (from `deadline-plan`).

---

## Step 5: Outcome Correlation (if decisions received)

When 1+ application decisions are available, compare document scores to outcomes:

- **Advanced (admitted/waitlisted)**: Was this program's document score in the Strong Admit / Admit range? If yes, scores are calibrated. If no, investigate: was there a non-document factor (fit, credentials)?
- **Rejected**: Was this program's document score in the Borderline/Reject range? If yes, scores predicted it. If scores were high but outcome was rejection: calibration drift possible — investigate.

**Calibration protocol** (at 3+ decisions):
- Build correlation: score → outcome
- Detect systematic drift: are practice scores consistently over/under-predicting outcomes?
- If drift detected: update Calibration State, add note on what the scores are missing
- Update Active Coaching Strategy if systematic gap is identified

---

## Step 6: Graduation Criteria Check

Check whether the applicant is ready to submit applications:

**Application-ready criteria**:
- [ ] At least 1 program's SoP scored Admit or above
- [ ] Program-fit paragraphs are program-specific (not generic) for all applying programs
- [ ] LoRs requested and confirmed for all programs with upcoming deadlines
- [ ] Narrative Bank has 6+ narratives covering all critical document sections
- [ ] Academic CV reviewed and optimized

If criteria met: "Your applications look ready for submission. Your primary remaining task is [final action]."
If not: identify the highest-priority unmet criterion.

---

## Step 7: Active Coaching Strategy Update

Based on trend data and outcome correlation, update the Active Coaching Strategy:

- Confirm or change Primary bottleneck
- If current approach has been tried for 3+ sessions without improvement → Pivot: move to Previous approaches, define new approach
- Update Root causes detected with any new patterns identified in this session

---

## Step 8: Coaching Meta-Check (every 3rd session)

Every third progress session, ask:

> "Before we wrap up — is the coaching landing for you? Are we working on the right things? Is there something you're worried about that we haven't addressed?"

Record response in Meta-Check Log.

---

## Level 5: Hard Truth Section

For Level 5 applicants, after the standard review, deliver one uncomfortable truth from all accumulated data:

> "The hard truth from everything we've looked at: [the single most important uncomfortable finding]. This isn't fatal — here's exactly how to address it: [specific action]."

Examples of hard truths:
- "Your Fit scores haven't moved despite 4 sessions on document drafting. The real problem is that you haven't done the professor research. Until you know specifically what each target professor is working on right now, the program-fit paragraph will remain generic."
- "Your Message scores are strong but you've been rejected from two programs. The pattern suggests a credential gap that documents can't fully bridge. You may need to reconsider whether your top-choice programs are realistic targets without a stronger research output."

---

## Progress Output Format

```
## Application Progress Review — [Date]

**Sessions to date**: [count]
**Data available**: [documents scored / applications submitted / decisions received]

### Score Trends
[Prose narration of trends per dimension]

**Self-Assessment Calibration**:
[Your self-assessment vs. actual scores — delta and tendency (over/under/calibrated)]

### Document Status
[Table from Step 4]

### Outcome Correlation (if applicable)
[Correlation summary and calibration status]

### Current Bottleneck
**Primary**: [dimension + evidence]
**Root cause**: [specific pattern]
**Treatment**: [current approach]

### Active Coaching Strategy
[Updated strategy with any pivots]

### Graduation Status
[Application-ready criteria — met/unmet per criterion]

---
[Level 5: Hard Truth section if applicable]

**Recommended next**: [highest-leverage command] — [reason]. **Alternatives**: [command], [command]
```

---

## State Updates

- Update Score History archival if thresholds exceeded
- Update Active Coaching Strategy (bottleneck, approach, pivot if applicable)
- Update Calibration State (status, drift log, cross-dimension root causes)
- Add entry to Meta-Check Log if meta-check ran
- Update Session Log with this session's summary
