# Calibration Engine

Centralizes calibration logic for scoring accuracy, root cause tracking, and learning from outcomes. Referenced by `progress`, `review`, `feedback`, and `draft`.

---

## Purpose

Document scores are only useful if they predict real outcomes (admission decisions). The calibration engine detects when scores and outcomes diverge, identifies why, and corrects the scoring approach.

---

## Calibration Thresholds

| Data Points | Calibration Status | Protocol |
|-------------|-------------------|----------|
| 0-1 applications submitted | Uncalibrated | Report scores with LOW confidence on predictive value |
| 2 decisions received | Calibrating | Begin pattern detection; report emerging patterns |
| 3+ decisions received | Calibrated (or drift detected) | Run full calibration protocol |

---

## Scoring Drift Detection

Run during `progress` when 3+ application decisions are available.

### Step 1: Build Correlation Matrix

For each submitted program, record:
- Program name
- Average document score (composite of Msg/Str/Fit/Auth/Dist)
- Admit Signal prediction at submission
- Actual outcome (admitted / waitlisted / rejected)

```
Correlation Table (when available)
| Program | Avg Score | Admit Signal | Outcome | Predicted Correctly? |
|---------|-----------|--------------|---------|---------------------|
| MIT | 3.8 | Admit | Rejected | No |
| Stanford | 4.2 | Strong Admit | Admitted | Yes |
| Chicago | 2.9 | Borderline | Rejected | Yes |
```

### Step 2: Detect Drift Patterns

**Pattern A: Systematic over-scoring** (scores predict admits but outcomes are mostly rejections)
- Possible causes: scoring was too lenient on Fit dimension (generic documents scored too high); program selectivity not accounted for; credential gap not fully weighted
- Correction: add 0.5-1 point penalty to programs with competitive pools when calculating Admit Signal; run Substitution Test on all Fit scores

**Pattern B: Systematic under-scoring** (scores predict borderline but outcomes include admissions)
- Possible causes: scoring was too strict; non-document factors (LoR quality, fit signals from professor contact) contributed more than scored dimensions
- Correction: update calibration note; slightly adjust scoring thresholds upward

**Pattern C: Selective drift** (certain programs mis-predicted)
- Investigate program-specific factors: program selectivity, credential gap, faculty match strength, non-document signals
- Record in Calibration State → Scoring drift log

**Pattern D: No drift** (scores generally predict outcomes)
- Calibration confirmed; maintain current approach
- Record: "Calibrated — [date]. N=[count] decisions. Correlation: [description]."

### Step 3: Unmeasured Factor Investigation

When a high-scoring application was rejected, investigate what the score missed:
- Was there a credential gap that documents couldn't overcome? (GPA below minimum, no publications for programs that effectively require them)
- Was professor fit weaker than assessed? (No faculty response to cold email; professor left; professor not taking students)
- Was the competitive pool unusually strong that year? (External factor, not document quality)
- Was there a non-document signal (LoR was weak, though applicant didn't know)?

Record in Calibration State → Unmeasured factor investigations.

---

## Cross-Dimension Root Cause Tracking

When the same root cause affects multiple scoring dimensions, treat it as one unified intervention — not separate problems.

| Root Cause | Dimensions Affected | Unified Intervention |
|-----------|--------------------|--------------------|
| Imposter syndrome / downplaying | Message (understates contributions), Authenticity (hedged voice) | Reframe exercise: "What would your advisor say about this work?" Guided specificity extraction. |
| Generic program targeting | Fit (no specific professor connection), Distinctiveness (could be submitted anywhere) | Run `fit [program]` before drafting program-fit section; substitution test on every fit claim |
| Over-editing / consultant voice | Authenticity (no personal texture), Distinctiveness (no specific details) | Return to original language; oral reconstruction exercise |
| No narrative arc | Structure (fragmented), Fit (reader can't follow why this program) | Provide SoP architecture template; reverse outline |
| AI-generated prose (uniform) | Authenticity (uniform voice), Distinctiveness (no texture) | Identify off-tone sections; rewrite from raw applicant language |
| Credential recitation (CV mode) | Message (no intellectual substance), Authenticity (no human voice) | "Stop listing where you were. Tell me what you did and what you learned." |
| Transition without bridge narrative | Message (story doesn't connect), Fit (committee can't follow why this program) | Build bridge narrative explicitly in `narratives add`; run transition detection |

---

## Success Pattern Capture

When a program results in admission, capture what worked:
1. Which narratives were deployed (from "Used In" field)?
2. What was the Admit Signal at submission?
3. Were there any non-document factors (professor contact, strong LoR)?
4. What dimension score was highest?

Record in Narrative Intelligence → Program Patterns. This data informs coaching for future programs with similar characteristics.

---

## Temporal Decay

Research data and program intelligence have shelf lives:
- Faculty research interests: update if 6+ months since last check (professor may have new funding, shifted focus)
- Program requirements: update at the start of each application cycle (requirements change year-to-year)
- Grad Cafe / forum data: flag as stale if 2+ years old
- Professor availability: never assume from past data; verify via email or current lab page

Flag stale data during `research` and `prep` when data exceeds these thresholds.
