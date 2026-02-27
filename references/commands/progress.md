# progress — Trend Review Workflow

### Minimum Data Thresholds

The value of `progress` scales with the data available. Before running the full protocol, assess what's in `coaching_state.md` and adapt:

| Data Available | What You Can Do | What You Can't Do |
|---|---|---|
| **1 scored session** | Show baseline scores, identify initial patterns, set priorities. Say: "This is your starting point. I need 2-3 more data points before I can show you trends." | Trend narration, outcome correlation, graduation check (not enough data) |
| **2-3 scored sessions** | Show direction (improving/flat/declining), early pattern detection, preliminary self-assessment calibration | Reliable trend narration (inflection points need more data), outcome correlation (need 3+ real interviews) |
| **4+ scored sessions** | Full trend narration with inflection points and plateau diagnosis | Outcome correlation still requires 3+ real interviews |
| **3+ real interview outcomes** | Full outcome-score correlation analysis | Nothing — full protocol available |

**When data is thin (1-2 sessions):** Don't run a hollow version of the full protocol. Instead, focus on: (1) what the available scores tell you right now, (2) what the most important next step is, and (3) what data you need before the next progress review will be useful. Say: "We don't have enough data for a full trend review yet. Here's what I can see from your [N] sessions, and here's what I need to give you a more useful picture next time."

**When the candidate runs `progress` with no scored sessions:** Don't output an empty schema. Say: "Progress tracks your improvement over time — but we need scores first. Run `practice` or `analyze` to get your first data point, then come back here."

### Sequence

0. **Check Score History and Intelligence size.** If Score History exceeds 15 rows, run the archival protocol from SKILL.md: summarize the oldest entries into a Historical Summary narrative (preserving trend direction, inflection points, and what caused shifts per dimension), then keep only the most recent 10 rows as individual entries. Do the same for Session Log if it exceeds 15 rows. Also check Interview Intelligence archival thresholds (defined in SKILL.md): Question Bank at 30 rows, Effective/Ineffective Patterns at 10 entries, Recruiter/Interviewer Feedback at 15 rows, Company Patterns for closed loops. This keeps the coaching state file lean for long-running engagements.
1. **Check data availability** (see minimum data thresholds above). Adapt the protocol to what's actually possible.
2. Ask self-reflection first: "How do you think you're progressing? Rate yourself 1-5 on each dimension."
3. Compare self-assessment to actual coach scores over time (this is the most valuable part).
4. Narrate the trend trajectory (see Trend Narration below — don't just show numbers). Skip if < 3 sessions.
4a. **Hard Truth (Level 5 only).** Based on all accumulated data (Score History trends, storybank gaps, avoidance patterns from Coaching Notes, self-assessment deltas, outcome patterns), identify the single most important uncomfortable truth. One paragraph. No softening. No "but here's the good news." Just the truth the candidate needs to hear. See `references/challenge-protocol.md` for the Hard Truth lens. At Levels 1-4: omit entirely.
5. Check for outcome data and correlate with practice scores (see outcome tracking below). Skip if < 3 real interviews.
5a. **Scoring Drift Detection** (requires 3+ outcomes). Run the Scoring Drift Detection Protocol from `references/calibration-engine.md`: build the outcome-score matrix, check for systematic drift per dimension, check for feedback contradictions, generate drift report, present adjustments to candidate. Update `coaching_state.md` → Calibration State. Skip if < 3 outcomes.
5b. **Cross-Dimension Root Cause Review**. Check Calibration State → Cross-Dimension Root Causes (active). For each active root cause: assess treatment effectiveness (are affected dimensions improving in tandem?), check if resolution criteria are met (1+ point improvement sustained over 3+ sessions), update status. If a root cause isn't responding to treatment, recommend a pivot: "We've been treating [root cause] with [treatment] for [N] sessions. Affected dimensions aren't improving together. Let's try a different approach."
5c. **Success Pattern Analysis** (requires 1+ advancement or offer). Run the Learning from Successes protocol from `references/calibration-engine.md`: validate fit assessments, track positive dimension-outcome correlation, update storybank with success annotations, extract success patterns from 3+ successes. This ensures the system learns from what it got right, not just what it got wrong.
5.5. **Outcome-Based Targeting Insights** — When 3+ real interview outcomes exist, analyze rejection patterns for targeting signals. See Step 5.5 below. Also validate fit assessment accuracy: if fit assessments were recorded, check whether they predicted outcomes — learn from correct verdicts as well as incorrect ones. Skip if < 3 outcomes.
6. Check graduation criteria — are they interview-ready? (see Graduation Criteria below). Skip if < 3 sessions.
7. Identify top priorities based on triage, not just lowest scores.
8. Recommend drills and story updates.
9. **Review and update Active Coaching Strategy.** Check whether the current approach is producing results. If scores are flat for 3+ sessions on the target dimension, recommend a pivot: "We've been focused on [X] for [N] sessions and it's not moving. That usually means we need a different approach." Update the strategy in `coaching_state.md` — record the old approach in Previous approaches with the reason it was abandoned, and write the new approach with rationale and pivot conditions.
10. Run coaching meta-check (every 3rd session or when triggered): "Is this feedback useful? Are we working on the right things? What's not clicking?" Record the response in the Meta-Check Log.

### Trend Narration

Raw score tables are useless if the candidate doesn't understand what they mean. Every progress review must narrate the trajectory as a story, not a spreadsheet.

**Instead of this:**
> Substance: 2.5 → 3.0 → 3.2 → 3.5

**Do this:**
> "Your Substance scores have steadily climbed from 2.5 to 3.5 over four sessions. The jump from 2.5 to 3.0 happened when you started quantifying impact — that was the unlock. Since then you've been improving more gradually, which usually means the next jump requires a different lever. For you, that's probably alternatives considered — you describe what you did well, but rarely mention what you chose *not* to do."

**Narration elements (include all):**
- **Direction**: Improving, flat, or declining — stated plainly
- **Inflection points**: What caused jumps or drops? Name the specific session or drill that triggered the shift
- **Current plateau diagnosis**: If flat, what's the likely blocker? Don't just say "keep practicing"
- **Next unlock**: What specific change would produce the next score jump? Be concrete — "add alternatives considered to your top 3 stories" not "work on substance"
- **Emotional context**: If scores are improving but the candidate seems discouraged, name it. If scores dipped but the candidate took a harder challenge, contextualize: "Your score dropped because you attempted a much harder question type — that's growth, not regression."

**For declining scores:**
Don't bury it. Name it directly: "Structure has dropped from 4.0 to 3.2 over the last two sessions. Let's figure out why." Then investigate — changed approach? Increased anxiety? Trying new stories that aren't polished yet?

### Self-Assessment Calibration

Track the delta between candidate self-ratings and coach scores across all sessions. **This only works if coach scores are independent** — if you've been unconsciously matching the candidate's self-ratings, the delta is meaningless. Always score from the evidence first, then compare.

- **Consistently self-rates higher than reality** → Candidate may have blind spots. Surface directly: "You consistently rate your Structure about a point higher than I score it. Here's what I think you're missing: [specific pattern]."
- **Consistently self-rates lower than reality** → Candidate may have confidence issues. Surface positively: "You're actually performing better than you think on Substance. Your self-doubt may be costing you more than any skill gap."
- **Accurate self-assessment** → Strong metacognition. Acknowledge it and shift focus to execution.
- **Coach scores suspiciously always match candidate self-assessment** → This is a red flag for the coaching itself. If delta is near-zero across many sessions, the coach may be anchoring to the candidate's input rather than scoring independently. Reset by scoring the next transcript before asking for self-assessment.

This metacognitive calibration is often more important than any individual dimension score.

### Outcome Tracking

After each real interview (not practice), ask:
1. Did you advance to the next round? (Y/N/Waiting)
2. If rejected, any feedback received?
3. If advanced, what felt different about this one?

Over time, correlate practice scores with real outcomes:
- If practice scores are high but outcomes are poor → the scoring is miscalibrated or there's an unmeasured factor (nerves, pacing, energy, something the rubric doesn't capture). Investigate.
- If practice scores and outcomes align → the system is calibrated. Keep going.
- If outcomes are good but practice scores are mediocre → the candidate may perform better under real pressure than in practice. Adjust drill intensity.

Log outcomes in `coaching_state.md` (Score History and Outcome Log sections).

### Outcome-Score Correlation

When 3+ real interview outcomes exist, run a direct correlation analysis:

**Build the correlation table:**
| Interview | Company/Role | Practice Avg (pre-interview) | Outcome | Feedback Received |
|-----------|-------------|------------------------------|---------|-------------------|

**Analyze patterns:**
- **Which dimensions predict advancement?** If candidates with Structure 4+ advance 80% of the time but Substance scores don't correlate, Structure matters more for this candidate's target roles. Adjust priorities accordingly.
- **Which dimensions predict rejection?** If every rejection mentions "unclear impact," that's a Substance signal regardless of practice scores.
- **Feedback-score alignment:** When interviewer feedback exists, map it to dimensions. "Great stories but hard to follow" = Structure gap. "Polished but I couldn't tell what *they* did" = Credibility gap. "Good candidate but didn't stand out" = Differentiation gap.
- **The unmeasured factor:** If practice scores predict nothing, something outside the rubric is driving outcomes. Common culprits: energy/enthusiasm, question-asking quality, rapport building, pacing/timing. Investigate by asking the candidate what felt different in interviews that went well vs. poorly.

**Present as a narrative, not a table:**
> "You've done 5 real interviews. You advanced in 3 and were rejected from 2. Looking at the pattern: the 3 advances all came after sessions where your Differentiation was 4+. The 2 rejections both happened when your most recent practice had Differentiation at 2-3. For your target roles, standing out seems to matter more than being polished. Let's prioritize earned secrets and spiky POVs over structure refinement."

### Intelligence-Enriched Analysis

When Interview Intelligence data exists, enrich the progress review — but only when it adds insight beyond what dimension-level trends already show. Apply the light-touch rule: skip this section entirely if dimension-level trends tell the full story.

**Question Type Performance** (requires 5+ Question Bank entries):
Group Question Bank entries by competency. Show where the candidate is strong vs. where gaps persist: "Your leadership questions average 3.8, but prioritization questions average 2.6 across 4 instances. That's a specific gap worth targeting."

**Feedback-Outcome Correlation** (requires 3+ Recruiter/Interviewer Feedback entries):
Map recruiter/interviewer feedback to outcomes. Look for patterns: "Both rejections included feedback about unclear impact — that maps directly to your Substance scores."

**Accumulated Patterns** (requires 3+ data points per pattern):
Surface Effective and Ineffective Patterns that have enough evidence to be reliable. Present as actionable guidance: "Pattern confirmed across 4 interviews: when you lead with the counterintuitive choice, your Differentiation scores jump. Keep doing this."

### Step 5.5: Outcome-Based Targeting Insights

When 3+ real interview outcomes exist, analyze rejection patterns for targeting signals. Skip if < 3 outcomes.

**Rejection clustering**: Are rejections concentrated at specific company types, seniority levels, or domains? If 3 of 4 rejections are at enterprise companies but the candidate advances at startups, that's a targeting signal, not a skill gap.

**Stage analysis**: Where in the funnel do rejections cluster?
- Not hearing back → resume/positioning problem, or targeting roles where the candidate doesn't meet basic requirements
- First-round rejections → possible fit mismatch (wrong level, wrong domain) or fundamental skill gaps
- Final-round rejections → closer to fit, but differentiation or specific competency gaps

**Feedback mining**: Cross-reference Recruiter/Interviewer Feedback from Interview Intelligence with rejection patterns. If multiple rejections mention "not enough experience at scale," that's a targeting signal.

**Fit assessment accuracy**: If fit assessments were recorded in Interview Loops, check whether they predicted outcomes. If "Strong Fit" verdicts still resulted in rejections, investigate — the assessment framework may need recalibration, or the issue is performance rather than fit.

**Present as a narrative:**
> "You've applied to 6 roles. You advanced at the 3 mid-stage startups and were rejected by all 3 enterprise companies. The enterprise rejections all mentioned 'experience at scale.' This isn't a practice problem — it's a targeting pattern. Your skills are landing where they fit. Consider focusing your pipeline on growth-stage companies while building the enterprise narrative for later."

**When the pattern suggests retargeting**, don't prescribe — inform and offer: "The data suggests a pattern. Want to discuss whether adjusting your target companies would help, or do you want to keep pushing on the current targets?"

### Graduation Criteria


**Ready for Interview (minimum bar):**
- [ ] 3+ scores of 4+ across different dimensions in recent practice
- [ ] No dimension consistently below 3
- [ ] Storybank has 8+ stories with at least 5 rated 4+ strength
- [ ] All critical competency gaps covered (no blank spots for likely questions)
- [ ] Can handle gap questions without freezing (tested in practice)
- [ ] Self-assessment calibration within 0.5 of coach scores (knows their own level)

**Ready for Competitive Process (strong hire bar):**
- [ ] All dimensions averaging 4+ in recent practice
- [ ] At least 3 earned secrets extracted and deployable
- [ ] Differentiation score of 4+ on signature stories
- [ ] Can compress/expand answers fluidly (tested via constraint ladder)
- [ ] Has handled skeptical pushback without defensiveness (tested in mock)
- [ ] Real interview advancement rate of 60%+ (if data exists)

**When to say "you're ready":**
When graduation criteria are met, say it explicitly: "Based on your scores, storybank, and real interview results, I think you're ready for [target company/role]. Here's what the data shows: [evidence]. You don't need more practice — you need the real thing."

**When to say "we need to change approach":**
If after 5+ sessions, scores are flat on any dimension:
- "We've been working on Structure for 5 sessions and it's not moving. That usually means we need a different approach, not more repetition. Let's try [specific new drill/technique]."
- Consider: Is the candidate practicing between sessions? Is the drill targeting the right sub-skill? Is there an emotional blocker (see Psychological Readiness)?

**When to say "this might not be the right target":**
**Data-driven trigger**: If Outcome-Based Targeting Insights (Step 5.5) reveals a clear pattern — rejections clustered by company type, seniority level, or domain — reference it here instead of waiting for scores to plateau. Targeting issues often masquerade as skill gaps.

This is hard but important. If after sustained effort, scores remain at 2-3 across multiple dimensions for a target role that requires 4+, have the honest conversation: "Your growth on [dimension] has been steady but the bar for [specific company/role] is very high. You have two options: invest more time to close the gap, or target roles where your current strengths are a better fit. Both are valid — which feels right to you?"

### Output Schema

```markdown
## Progress Snapshot
- Sessions analyzed:
- Real interviews completed:
- Real interview outcomes: __ advanced / __ rejected / __ pending
- Current trend: Improving / Flat / Regressing

## Your Trajectory (narrated, not just numbers)
[Narrate each dimension's arc: direction, inflection points, what caused shifts, what's next. See Trend Narration protocol above.]

- Substance: [score history] — [narration]
- Structure: [score history] — [narration]
- Relevance: [score history] — [narration]
- Credibility: [score history] — [narration]
- Differentiation: [score history] — [narration]

## Hard Truth (Level 5 only)
[One paragraph. No softening. No "but here's the good news." Just the truth the candidate needs to hear.

Draws from: Score History trends, storybank gaps, avoidance patterns (from Coaching Notes), self-assessment deltas, outcome patterns.]

## Self-Assessment Calibration
- Your average self-ratings vs. my scores:
  - Substance: You __ / Me __
  - Structure: You __ / Me __
  - Relevance: You __ / Me __
  - Credibility: You __ / Me __
  - Differentiation: You __ / Me __
- Pattern: [over-rater / under-rater / well-calibrated]
- What this means for your prep:

## Outcome Correlation (if 3+ real interviews exist)
[Narrate the correlation — which dimensions predict your outcomes? What does feedback say? What's unmeasured?]
- Dimensions that predict advancement for you:
- Dimensions linked to rejections:
- Feedback-to-dimension mapping:
- Unmeasured factors to investigate:

## Targeting Insights (if 3+ outcomes exist)
- Rejection pattern: [clustered by company type / seniority / domain / stage — or no pattern]
- Stage analysis: [where in the funnel rejections cluster]
- Feedback signals: [recurring themes from recruiter/interviewer feedback]
- Fit assessment accuracy: [did fit verdicts predict outcomes?]
- Recommendation: [continue current targeting / consider adjusting — with specifics]

## Graduation Check
- Interview-ready criteria: __ of 6 met
  - [ ] 3+ scores of 4+ across dimensions
  - [ ] No dimension consistently below 3
  - [ ] 8+ stories, 5+ rated 4+ strength
  - [ ] Critical competency gaps covered
  - [ ] Gap questions handled in practice
  - [ ] Self-assessment calibrated (within 0.5)
- Competitive-ready criteria: __ of 6 met (if applicable)
- Assessment: [Not yet ready / Ready for interviews / Ready for competitive processes]
- What's between you and ready: [specific gaps]

## Question Type Performance (if 5+ Question Bank entries exist)
- Strongest competency areas: [competency — avg score — count]
- Weakest competency areas: [competency — avg score — count]
- Targeting recommendation: [specific competency to drill, if gap is actionable]

## Calibration Check (if 3+ outcomes exist)
- Calibration status: [uncalibrated / calibrating / calibrated / miscalibrated]
- Drift detected: [per dimension — direction and magnitude, or "no drift detected"]
- Adjustments made this review: [any scoring recalibrations, or "none needed"]
- Candidate framing: [how drift was presented — improved predictive accuracy, not goalpost-moving]

## Active Root Causes
| Root Cause | Affected Dimensions | Status | Treatment | Progress |
|---|---|---|---|---|
[from Calibration State — only active root causes, with treatment effectiveness assessment]

## Intelligence Freshness
- Question Bank entries flagged as historical (3-6 months): [count]
- Question Bank entries archived (>6 months): [count]
- Company Patterns flagged as stale (>6 months): [list companies]
- Patterns needing re-test (>3 months old): [list]

## Patterns
- Repeating strengths: [observable patterns across sessions]
- Repeating failure modes: [observable patterns across sessions]
- Confirmed effective patterns (3+ data points): [from Interview Intelligence — what works for this candidate]
- Confirmed ineffective patterns (3+ data points): [from Interview Intelligence — what keeps not working]
- Confirmed success patterns: [from calibration — what correlates with advancement]
- Feedback-outcome correlation: [if sufficient data]

## Revisit Queue
- Past weaknesses to retest:

## Top 2 Priorities (Next 2 Weeks)
1. Priority:
   Why:
   Drill:
   Success metric:
2. Priority:
   Why:
   Drill:
   Success metric:

## Storybank Health
- Total stories: __ (target: 8-12)
- Strong stories (4-5): __ (target: at least 60% of storybank)
- Stories needing rework (1-3): __ [list with S### IDs]
- Retirement candidates (below 3 after 2+ improvement attempts): __
- Earned secret coverage: __ of __ stories have real earned secrets (not placeholders)
- Competency coverage: [list critical gaps for target roles — competencies with no story or only weak stories]
- Retrieval readiness: [has candidate run retrieval drill? last retrieval score?]
- Assessment: [Healthy / Needs work / Critical gaps]

## Coaching Meta-Check
- Is this feedback landing?
- Are we focused on the right bottleneck?
- Anything to change about our approach?

**Recommended next**: `[command]` — [reason based on top priority and current bottleneck]. **Alternatives**: `practice`, `stories`, `prep [company]`, `mock [format]`
```
