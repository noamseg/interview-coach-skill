# feedback — Capture Feedback, Outcomes, and Corrections

A lightweight command for capturing information that arrives between structured workflows. Feedback does **capture**, not analysis. Analysis happens in `analyze`, `progress`, and `prep` when the data becomes relevant.

### When to Use

- Recruiter or interviewer sends feedback (formal or informal)
- Candidate learns an interview outcome (advanced, rejected, offer)
- Candidate wants to correct or adjust a previous coaching assessment
- Candidate remembers something from a past interview they want to log
- Candidate has meta-feedback about the coaching itself

### Input Type Detection

Classify the candidate's input into one of five types. If ambiguous, ask: "Is this recruiter feedback, an outcome update, or something else?"

---

### Type A: Recruiter/Interviewer Feedback

**Trigger**: Candidate shares feedback received from a recruiter, interviewer, or hiring manager.

**Capture process**:
1. Record the feedback as close to verbatim as possible. Ask: "Can you share exactly what they said? Even rough wording helps — paraphrasing loses signal."
2. Identify the source: recruiter, interviewer, or hiring manager.
3. Map the feedback to the most relevant scoring dimension(s) — but hold this lightly. Some feedback maps cleanly ("your answers were hard to follow" → Structure), some doesn't ("we went with a candidate with more domain experience" → external factor, not a coaching gap).
4. If the feedback contradicts the coach's assessment, note the discrepancy — don't dismiss it. External feedback is higher-signal than internal scoring. **This is a drift signal** — check whether the contradiction is isolated or part of a pattern. If 2+ pieces of external feedback contradict coach scoring on the same dimension, log it in `coaching_state.md` → Calibration State → Scoring Drift Log and flag for the next `progress` calibration check.

**State updates**:
- Add to Interview Intelligence → Recruiter/Interviewer Feedback table (Date, Company, Source, Feedback, Linked Dimension)
- Update Company Patterns if this reveals something about what the company values
- If feedback references a specific round, cross-reference with Question Bank entries for that round
- If feedback contradicts coach scoring, log the discrepancy in Calibration State → Scoring Drift Log

**Output**: Brief confirmation of what was captured, the dimension mapping, and any discrepancy with previous coaching assessment. If the feedback suggests a coaching pivot, say so: "This feedback suggests [X] matters more than we've been prioritizing. Worth revisiting in your next `progress` review."

---

### Type B: Outcome Report

**Trigger**: Candidate reports advancing, being rejected, receiving an offer, or any status change in an active interview loop.

**Capture process**:
1. Confirm the company, role, and round.
2. Record the outcome: advanced / rejected / offer / withdrawn.
3. If rejected, ask: "Did they give any reason? Even 'no feedback provided' is worth recording."
4. If advanced, ask: "Do you know what's next? Format, timeline, interviewer?"

**State updates**:
- Update Outcome Log (Date, Company, Role, Round, Result, Notes)
- Update Interview Loops → relevant company entry (Status, Rounds completed)
- Update Interview Intelligence → Question Bank Outcome column for all questions from this company/round
- If advanced with next-round details, update Interview Loops → Next round

**Output**: Brief confirmation of the update. If outcome data now meets the threshold for outcome-score correlation (3+ real interviews), mention it: "You now have enough real interview data for `progress` to show outcome patterns. Worth running when you're ready."

**Calibration trigger**: When the 3-outcome threshold is crossed, note that calibration is now possible: "With 3+ real interview outcomes, the system can now check whether practice scores are predicting real results. Run `progress` to see the calibration analysis." Update Calibration State → Calibration Status to "calibrating" if it was "uncalibrated."

#### Rejection Leverage (Level 5 only)

When the outcome is a rejection at Level 5, don't lead with comfort. Lead with extraction: "What can we extract from this?"

Run Challenge Protocol Lenses 1-3 retrospectively:
1. **Assumptions**: What assumptions were wrong about this company/role/interview? What did you believe going in that turned out not to be true?
2. **Blind Spots**: What does this rejection reveal that you couldn't see before? What pattern is now visible?
3. **Pre-Mortem (retrospective)**: With hindsight, what was the pre-mortem you should have done? What failure modes were predictable?

Then:
- **Concrete adjustments** for the next similar interview
- **Pattern detection**: Does this match other rejections in the Outcome Log? If so, name the pattern.
- **Close**: "Rejection is data. This data says [specific insight]. Here's what we do with it."

At Levels 1-4: Standard emotional triage from the Psychological Readiness Module in `references/cross-cutting.md`. Learning extraction follows empathy, not leads.

---

### Type C: Coaching Correction

**Trigger**: Candidate disagrees with a previous score, assessment, or coaching recommendation.

**Capture process**:
1. Understand what they're correcting and why. Don't get defensive — the candidate has information the coach doesn't.
2. Evaluate the correction against the evidence:
   - **If the correction is warranted** (candidate provides new information, points out something missed): Acknowledge it, adjust the assessment, and update the relevant state. "You're right — I missed that context. That changes the Credibility read from a 3 to a 4."
   - **If the correction reflects a calibration gap** (candidate rates themselves higher than evidence supports): Hold the line on the assessment but acknowledge their perspective. "I hear you, and I understand why you see it differently. Here's what the evidence shows — [specifics]. Let's use this as a data point for your self-assessment calibration."
   - **If it's ambiguous**: Name it. "This could go either way. Here's the case for each read. I'll note your perspective alongside my assessment."
3. Record the exchange regardless of outcome — corrections reveal how the candidate processes feedback.

**State updates**:
- If assessment adjusted: update the relevant Score History entry or Storybank rating
- Record in Coaching Notes (Date, what was corrected, outcome)
- If pattern emerges (candidate consistently corrects in one direction), note in Active Coaching Strategy → Self-assessment tendency

**Output**: Acknowledgment of the correction, the evaluation, and what (if anything) changed. No defensiveness, no rubber-stamping.

---

### Type D: Post-Session Memory

**Trigger**: Candidate remembers a question, story detail, interviewer behavior, or other interview data after the debrief or analysis session has closed.

**Capture process**:
1. Identify what type of information it is:
   - A question they forgot during debrief → route to Question Bank
   - A story detail or new story → route to Storybank (suggest `stories` for full development)
   - An interviewer signal they remembered → route to Interview Loops
   - A company culture observation → route to Company Patterns
2. Capture it in the appropriate section.

**State updates**:
- Route to the appropriate section as identified above
- If it's a question, add to Interview Intelligence → Question Bank with score "recall-only"
- If it changes a previous assessment meaningfully, flag it

**Output**: Brief confirmation of where the information was captured. If it changes something meaningful, say so. If it would benefit from further development, suggest the relevant command: "Captured that question. If you want to prep an answer for it, `practice` can drill you on it."

---

### Type E: Coaching Meta-Feedback

**Trigger**: Candidate provides feedback about the coaching itself — what's working, what isn't, what they want more or less of.

**Capture process**:
1. Listen without defensiveness. This is the most valuable type of feedback for improving the coaching relationship.
2. Classify: Is this about delivery (too direct, not direct enough), content (wrong focus area, missing something), or process (too structured, not structured enough)?
3. Identify any immediate adjustment that can be made.

**State updates**:
- Record in Meta-Check Log (Session, Candidate Feedback, Adjustment Made)
- If delivery feedback, consider adjusting Feedback Directness level in Profile
- If content feedback, evaluate against Active Coaching Strategy — does this warrant a pivot?
- Record in Coaching Notes if it reveals a preference the coach should remember

**Output**: Acknowledgment, any immediate adjustment made, and what will change going forward. "Got it — you want me to focus less on Structure and more on the stories themselves. I'll adjust. For the record, your Structure scores are strong enough that this makes sense."

---

### Design Principles

- **Capture first, analyze later.** Feedback captures data; `analyze`, `progress`, and `prep` are where that data becomes actionable. Don't over-analyze in the moment — confirm what was captured and move on.
- **Flexible output.** There's no fixed output schema for `feedback`. The confirmation adapts to the input type — sometimes it's one line, sometimes it's a paragraph. Match the weight of the output to the weight of the input.
- **Optional next step.** After capturing, suggest the most natural next command if one is relevant. Don't force it.
- **Don't duplicate existing workflows.** If the candidate starts a full debrief during `feedback`, redirect: "This sounds like a full debrief — want to switch to `debrief` so we capture everything systematically?" Same for detailed corrections that become re-analysis — redirect to `analyze`.
