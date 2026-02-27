# Calibration Engine

Centralizes calibration logic for scoring accuracy, root cause tracking, and learning from outcomes. Referenced by `progress`, `analyze`, `feedback`, and `practice`.

---

## Section 1: Calibration Metadata Schema

The Calibration State section in `coaching_state.md` tracks:

```markdown
## Calibration State

### Calibration Status
- Current calibration: [uncalibrated / calibrating / calibrated / miscalibrated]
- Last calibration check: [date]
- Data points available: [N] real interviews with outcomes

### Scoring Drift Log
| Date | Dimension | Direction | Evidence | Adjustment |

### Calibration Adjustments
| Date | Trigger | What Changed | Rationale |

### Cross-Dimension Root Causes (active)
| Root Cause | Affected Dimensions | First Detected | Status | Treatment |

### Unmeasured Factor Investigations
| Date | Trigger | Hypothesis | Investigation | Finding | Action |
```

**Status definitions:**
- **Uncalibrated**: Fewer than 3 real interview outcomes. Not enough data for calibration. The system operates normally but cannot verify its own accuracy.
- **Calibrating**: 3+ outcomes exist, first calibration check in progress. System is building its accuracy model.
- **Calibrated**: Calibration check completed, practice scores reasonably predict outcomes (correlation exists). System confidence is high.
- **Miscalibrated**: Practice scores do not predict outcomes, or external feedback consistently contradicts coach scoring. System is actively investigating and adjusting.

---

## Section 2: Scoring Drift Detection Protocol

Runs during `progress` when 3+ real interview outcomes exist in the Outcome Log.

### Step 1: Build Outcome-Score Matrix
For each real interview with a known outcome, pull:
- The most recent practice scores before that interview (from Score History)
- The interview analysis scores (if a transcript was analyzed)
- The outcome (advanced / rejected / offer)
- Any recruiter/interviewer feedback received

### Step 2: Check for Systematic Drift Per Dimension
For each of the 5 dimensions:
- Compare average practice scores for interviews where the candidate advanced vs. where they were rejected
- Look for dimensions where practice scores are consistently HIGH but outcomes are poor (the system is over-scoring)
- Look for dimensions where practice scores are LOW but outcomes are good (the system is under-scoring or the dimension doesn't matter for this candidate's targets)

### Step 3: Check for Feedback Contradictions
Cross-reference external feedback with coach scores:
- If recruiter feedback says "great storytelling, hard to follow" but the coach scored Structure at 4, that's a drift signal
- If feedback says "polished but generic" but the coach scored Differentiation at 3+, that's a drift signal
- Weight external feedback higher than internal scoring — the interviewer is the ground truth

### Step 4: Generate Drift Report
For each dimension showing drift:
- **Direction**: Over-scoring or under-scoring
- **Evidence**: Specific interviews where the prediction failed
- **Magnitude**: How far off (e.g., "Structure scores averaged 3.8 but 3 of 4 rejections cited unclear answers")
- **Proposed adjustment**: Concrete change (e.g., "Tighten Structure scoring by 0.5 — what I've been scoring as 4 is landing as 3 with real interviewers")

### Step 5: Present to Candidate
Frame drift corrections as improved predictive accuracy, NOT as goalpost-moving:
- "I've been scoring your Structure at 4, but interviewer feedback consistently suggests it's landing at 3. I'm recalibrating so my scores better predict how real interviewers will evaluate you. This isn't a downgrade — it's a more accurate picture."
- Record the adjustment in the Scoring Drift Log and Calibration Adjustments tables

---

## Section 3: Cross-Dimension Root Cause Tracking

### Lifecycle

**Detection**: When the same root cause appears in 2+ consecutive sessions (or across 2+ answers in the same session), it graduates from "per-answer observation" to "active root cause" in the Calibration State table.

Example: "Conflict avoidance" detected in Session 3 (affecting Substance on Q2 and Q5) and Session 4 (affecting Substance on Q1 and Differentiation on Q3) → create entry:

| Root Cause | Affected Dimensions | First Detected | Status | Treatment |
|---|---|---|---|---|
| Conflict avoidance | Substance, Differentiation | Session 3 | Active | Tension-mining drill on top 3 stories |

**Unified Treatment**: Prescribe ONE intervention targeting the root cause itself, not each affected dimension separately. "Conflict avoidance" gets tension-mining drills — not separate Substance drills AND Differentiation drills. This is more efficient and addresses the actual problem.

**Progress Tracking**: In subsequent sessions, check whether ALL affected dimensions are improving in tandem. If Substance improves but Differentiation doesn't, the root cause may be partially resolved or the treatment needs adjustment.

**Resolution Criteria**: A root cause is resolved when:
- All affected dimensions show 1+ point sustained improvement over 3+ sessions
- The pattern no longer appears in new analyses
- Update status to "Resolved" with date and what worked

---

## Section 4: Temporal Decay for Intelligence Data

Apply these freshness rules when referencing intelligence data in prep, progress, or any workflow:

| Data Type | Current | Historical | Archive |
|---|---|---|---|
| **Question Bank entries** | < 3 months old | 3-6 months old — flag as "historical, may not reflect current process" | > 6 months old — archive only, don't weight in predictions |
| **Effective/Ineffective Patterns** | < 3 months old | 3+ months old — re-test before relying. "This pattern was confirmed 4 months ago. Let's check if it still holds." | N/A — patterns don't expire, but confidence decays |
| **Company Patterns** | < 6 months old | > 6 months old — flag: "Company data is from [date]. Processes and culture may have changed." | > 12 months — treat as background context only |
| **Recruiter/Interviewer Feedback** | Current loop (active interview process) = high-signal | Closed loops = context only, not actionable | N/A |

**Application**: When referencing intelligence data, check its age. If stale, note it:
- "The last data point for this company is 5 months old — their process may have changed."
- "This effective pattern was confirmed in [month]. Worth re-testing to make sure it still holds."

---

## Section 5: Role-Drill Integration with Core Dimensions

Role-specific drills (from `references/role-drills.md`) use native scoring axes that don't map 1:1 to the core 5 dimensions. This section provides the explicit mapping so role-drill performance feeds into trend analysis and calibration.

### Mapping Table

| Role | Drill Axis | Maps To Core Dimension(s) |
|---|---|---|
| PM | Acknowledging tension | Credibility |
| PM | Specific evidence | Substance |
| PM | Decision rationale | Substance + Structure |
| PM | Stakeholder awareness | Relevance |
| PM | Trade-off articulation | Substance + Differentiation |
| Engineer | Depth of understanding | Substance + Credibility |
| Engineer | Explaining technical decisions | Structure |
| Engineer | Acknowledging constraints | Credibility |
| Engineer | Systems thinking | Substance |
| Designer | Rationale clarity | Structure |
| Designer | User evidence | Substance + Credibility |
| Designer | Design trade-offs | Substance + Differentiation |
| Designer | Process articulation | Structure |
| Data Science | Statistical rigor | Substance + Credibility |
| Data Science | Business translation | Relevance + Structure |
| Data Science | Methodology defense | Credibility + Differentiation |
| Research | Evidence quality | Substance |
| Research | Insight articulation | Differentiation |
| Research | Stakeholder translation | Relevance + Structure |
| Marketing | Metric articulation | Substance + Credibility |
| Marketing | Creative rationale | Differentiation + Structure |
| Operations | Process thinking | Structure |
| Operations | Scale articulation | Substance |
| Operations | Constraint navigation | Credibility + Differentiation |

### After Scoring a Role Drill

1. Score using the native drill axes (as defined in role-drills.md)
2. Map each axis score to core dimensions using the table above
3. When a drill axis maps to multiple core dimensions, use the axis score for both (blended input)
4. Record the blended scores in Score History alongside the native drill scores
5. This ensures role-drill performance feeds into trend analysis, calibration checks, and graduation criteria

---

## Section 6: Learning from Successes

When the Outcome Log shows "advanced" or "offer":

### Step 1: Validate Fit Assessment
If a fit assessment was recorded in Interview Loops:
- Was the verdict correct? (Did a "Strong Fit" actually advance? Did a "Stretch" actually get rejected?)
- What signals drove the assessment? Were they accurate?
- Update fit assessment heuristics based on what actually predicted outcomes

### Step 2: Track Dimension-Outcome Correlation (Positive)
- Which dimension scores coincide with advancement?
- Is there a minimum threshold? (e.g., "Every advancement had Differentiation 3.5+")
- Record positive correlations alongside negative ones — the system should know what works, not just what fails

### Step 3: Track Story Success
- Update storybank Notes for stories used in successful interviews: "Contributed to advancement at [Company], Round [N]"
- If a story has been part of 2+ advancements, flag it as a "proven performer"
- These annotations help future story selection — proven performers get priority in competitive preps

### Step 4: Extract Success Patterns
When 3+ successes exist, look for commonalities:
- Same stories used?
- Same dimensions strong?
- Same company type or interview format?
- What was the candidate's emotional state? (from debrief data)
- Record confirmed success patterns in Interview Intelligence → Effective Patterns

---

## Section 7: Structured Unmeasured Factor Investigation

When practice scores don't predict outcomes (high practice scores + rejections, or low practice scores + advancements), investigate factors outside the scoring rubric.

### Step 1: Candidate Debrief Questions
Ask the candidate about the interviews where prediction failed:
- "How was your energy level going into [the interview that went well despite low practice scores]?"
- "Did the conversation feel natural or forced?"
- "Did you ask good questions at the end? How did the interviewer respond?"
- "Was anything different about the environment — time of day, format, who was in the room?"

### Step 2: Common Factor Taxonomy

| Factor | Signals | How to Test |
|---|---|---|
| **Energy/enthusiasm** | Candidate reports feeling "on" vs. "flat"; interviewer feedback mentions "excited about the role" | Practice at different energy levels. Track correlation. |
| **Rapport** | Candidate found common ground, conversation felt natural, interviewer shared personal stories | Practice with different persona styles. Track which interactions feel natural. |
| **Pacing/timing** | Answers felt too long or too short relative to the interview format | Time practice answers. Compare to format norms. |
| **Question quality** | The questions the candidate asked at the end; interviewer engagement with those questions | Practice generating questions. Score them. |
| **Format comfort** | Performance varies by interview format (behavioral vs. panel vs. system design) | Track scores by format. Identify format-specific gaps. |
| **Physical/emotional state** | Time of day, sleep, stress level, preparation routine | Note environmental factors in debrief. Look for patterns. |

### Step 3: Hypothesis Testing
1. Form a specific hypothesis: "Energy level is driving outcomes more than content quality"
2. Design a targeted drill or tracking approach: "For the next 3 practice sessions, vary energy level and see if scores change"
3. Track results explicitly in the Unmeasured Factor Investigations table

### Step 4: Resolution
- **Confirmed**: The factor is real. Add it to Effective Patterns (or Ineffective Patterns). Integrate into coaching: "Before your next interview, do a 10-minute warmup — your energy level matters as much as your content."
- **Inconclusive**: Not enough data. Continue tracking.
- **Closed**: The hypothesis didn't hold. Remove from active investigation.

---

## Integration with Story Mapping Engine

- When scoring drift adjusts a dimension score, flag stories in the storybank whose strength ratings were heavily influenced by that dimension. They may need re-evaluation. Example: "Your Substance scores have been recalibrated down by 0.5. S003 and S007 were rated based on Substance evidence — consider re-scoring them."
- When calibration shows Differentiation predicts advancement, upgrade earned-secret-aware selection in the story mapping engine from conditional to default mode.
- When calibration links a specific dimension to rejections (e.g., "every rejection correlates with Credibility < 3"), elevate story mapping gaps in that dimension's competencies to "Calibration-Urgent" priority level.
