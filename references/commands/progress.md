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

0. **Check Score History and Intelligence size.** If Score History exceeds 15 rows, run the archival protocol from COACH.md: summarize the oldest entries into a Historical Summary narrative (preserving trend direction, inflection points, and what caused shifts per dimension), then keep only the most recent 10 rows as individual entries. Do the same for Session Log if it exceeds 15 rows. Also check Interview Intelligence archival thresholds (defined in COACH.md): Question Bank at 30 rows, Effective/Ineffective Patterns at 10 entries, Recruiter/Interviewer Feedback at 15 rows, Company Patterns for closed loops. This keeps the coaching state file lean for long-running engagements.
1. **Check data availability** (see minimum data thresholds above). Adapt the protocol to what's actually possible.
2. Ask self-reflection first: "How do you think you're progressing? Rate yourself 1-5 on each dimension."
3. Compare self-assessment to actual coach scores over time (this is the most valuable part).
4. Narrate the trend trajectory (see Trend Narration below — don't just show numbers). Skip if < 3 sessions.
4a. **Hard Truth (Level 5 only).** Based on all accumulated data (Score History trends, storybank gaps, avoidance patterns from Coaching Notes, self-assessment deltas, outcome patterns), identify the single most important uncomfortable truth. One paragraph. No softening. No "but here's the good news." Just the truth the candidate needs to hear. See `references/challenge-protocol.md` for the Hard Truth lens. At Levels 1-4: omit entirely.
4.5. **Velocity Analysis** (if 4+ scored sessions of the same Interview_Type exist): Calculate rate-of-change per dimension using the Velocity Analysis methodology below. Surface fastest-moving dimension, most stagnant dimension, coaching ROI signal, and any mismatch between where progress is happening and where coaching effort is going. Skip entirely if fewer than 4 sessions — the numbers aren't stable enough to be useful.
5. Check for outcome data and correlate with practice scores (see outcome tracking below). Skip if < 3 real interviews.
5a. **Scoring Drift Detection** (requires 3+ outcomes). Run the Scoring Drift Detection Protocol from `references/calibration-engine.md`: build the outcome-score matrix, check for systematic drift per dimension, check for feedback contradictions, generate drift report, present adjustments to candidate. Update `coaching_state.md` → Calibration State. Skip if < 3 outcomes.
5b. **Cross-Dimension Root Cause Review**. Check Calibration State → Cross-Dimension Root Causes (active). For each active root cause: assess treatment effectiveness (are affected dimensions improving in tandem?), check if resolution criteria are met (1+ point improvement sustained over 3+ sessions), update status. If a root cause isn't responding to treatment, recommend a pivot: "We've been treating [root cause] with [treatment] for [N] sessions. Affected dimensions aren't improving together. Let's try a different approach."
5c. **Success Pattern Analysis** (requires 1+ advancement or offer). Run the Learning from Successes protocol from `references/calibration-engine.md`: validate fit assessments, track positive dimension-outcome correlation, update storybank with success annotations, extract success patterns from 3+ successes. This ensures the system learns from what it got right, not just what it got wrong.
5.5. **Outcome-Based Targeting Insights** (see Step 5.5 below). Skip if < 3 outcomes.
5.5b. **Funnel Stats** (see Step 5.5b below). Skip if < 5 total tracked opportunities.
5.6. **Cross-Loop Pattern Mining via Minutes** (see Step 5.6 below). Skip if minutes not installed.
6. Check graduation criteria (see Graduation Criteria below). Skip if < 3 sessions.
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

### Velocity Analysis

**Minimum data**: 4+ scored sessions of the same Interview_Type. If fewer than 4 exist, skip — variance is too high for the numbers to be meaningful.

**Interview-type filtering**: Calculate velocity separately per Interview_Type (behavioral, system design, etc.). Do not blend types. If the candidate has 3 behavioral and 3 system design sessions, run velocity analysis separately for each.

**Calculation method**:
- **Baseline**: Average score of your first 2 sessions
- **Recent**: Average score of your most recent 2 sessions
- **Total delta** per dimension: Recent avg − Baseline avg
- **Velocity**: Total delta ÷ sessions elapsed (expressed as Δ/session, two decimal places)
- **Coaching ROI**: How many sessions to gain half a point? Calculation: sessions elapsed × 0.5 ÷ |total delta|. Example: 8 sessions, +1.0 total → 4 sessions per half-point (good). 8 sessions, +0.2 total → 20 sessions per half-point (approach not working). Flag: ≥8 on any dimension below 3.5 → approach change needed.

**Status thresholds** (per dimension):

| Status | Velocity | Notes |
|--------|----------|-------|
| **Accelerating** | ≥ +0.15/session | Strong momentum — name what changed; use as model for other dimensions |
| **Improving** | +0.05 to +0.14/session | Steady progress — current approach is working |
| **Plateau** | +0.02 to +0.04/session | Marginal gains — approach change coming soon if no unlock |
| **Stagnant** | < +0.02/session for 4+ sessions | No meaningful movement — intervention required |
| **Declining** | ≤ −0.05/session | Regression — investigate immediately |
| **Ceiling** | < +0.05/session AND recent avg ≥ 3.8 | Near maximum — this is progress, not stagnation |

**Critical distinction — plateau vs. ceiling**:
Stagnant at 2.8 is a problem. Stagnant at 3.9 is a ceiling — the candidate has likely maxed this dimension at their current level. Don't prescribe more work on a dimension sitting at 3.9.

**What to surface**:

1. **Fastest-moving dimension**: Name it and say what drove the improvement. This is what coaching leverage looks like. Use it as the model: "Differentiation moved +0.12/session after you started leading with counterintuitive choices. That same 'earned insight first' principle can unlock Credibility too."

2. **Most stagnant/declining dimension** (if below ceiling): Name it directly. If stagnant for 5+ sessions below 3.8, prescribe a different approach — not more of the same: "Structure hasn't moved in 5 sessions despite consistent drilling. The bottleneck may not be practice volume — it may be how you're mentally modeling the structure before you speak."

3. **Coaching ROI signal**: If any dimension has ROI ≥ 8 sessions/half-point AND the current avg is below 3.5: "We've invested [N] sessions on [dimension] and it's barely moved. That's not a practice problem — it's an approach problem. Let's try [specific different drill]."

4. **Mismatch flag**: If the fastest-moving dimension is not the one currently targeted in Active Coaching Strategy: flag it. "Your Relevance is improving faster than anything else (+0.13/session). But we've been focused on Structure. Are we coaching the right bottleneck?"

5. **ROI table** (only when helpful — skip if there's only one notable insight): Show the full per-dimension velocity table so the candidate can see the complete picture, not just the extremes.

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

### Step 5.5b: Funnel Stats

Computes the candidate's own conversion rates from data already in Interview Loops and Outcome Log, no new tracking required. Borrowed from mukeshbasvekar/Job-Search-OS `jsos stats` pattern, adapted to compute from existing freeform coaching_state.md notes rather than a separate tracker.

**Minimum data**: 5+ total tracked opportunities (Active loops + Recently closed combined). Below that, the rates are too noisy to be useful, skip and say so.

**Stage detection** (parse from Interview Loops + Outcome Log + Score History entries):
- **Applied**: any entry exists for the company, regardless of outcome
- **Screen reached**: notes mention "recruiter screen," "screen passed," or a Score History entry tagged `recruiter_screen`
- **HM round reached**: notes mention "HM," "hiring manager," or a Score History entry tagged `HM_conversational` / `HM_deep_dive`
- **Final/offer reached**: notes mention "final," "R3"/"R4," "offer," or status is "OFFER SIGNED" / "offer received"
- **Outcome**: rejected / withdrawn / declined / closed / advancing / offer (from the Outcome column or Stage column)

**Channel detection** (parse from freeform notes, best-effort, not all entries will have this):
- **Cold application**: notes mention "applied (cold)," "cold apply," "via Ashby"/"via Greenhouse" with no referral mention
- **Warm intro / referral**: notes mention "referral," "intro," a named connector ("Pallavi Sreerama," "Trisha," "Bruno")
- **Inbound**: notes mention "inbound," "reached out to," recruiter-initiated contact
- **Unknown**: cannot be determined from notes, bucket separately rather than guessing

**Calculation**:
- **Stage-to-stage conversion**: (count reaching stage N) / (count reaching stage N-1), for Applied to Screen, Screen to HM, HM to Final/Offer
- **Per-channel conversion**: (count reaching Screen+ via channel X) / (total attempts via channel X), only compute for channels with 3+ attempts, below that note "insufficient data for this channel"
- **Overall reply/response rate**: (count reaching Screen+) / (total Applied)

**Comparison against Channel Benchmark Module** (`references/cross-cutting.md`): once a channel has 3+ of the candidate's own data points, present their actual rate alongside the generic benchmark: "Your warm-intro conversion is 60% (3 of 5) vs. the general ~50% decision-maker-reach benchmark. Referrals are working unusually well for you, lean into them."

**What NOT to do:**
- Don't compute a rate from fewer than 3 data points for that specific channel or stage. Say "insufficient data" instead of a misleadingly precise percentage.
- Don't blend stale rejected-for-non-performance reasons (H-1B budget, role closed) into conversion math the same way as skill-driven rejections. Flag closures explicitly: "[N] of your 'rejected' entries were non-performance closures (H-1B/budget/role-closed), excluded from conversion math."

**Output** (only include in the progress review when 5+ total opportunities exist):
```
## Funnel Stats
- Total tracked opportunities: __
- Applied to Screen: __% (__/__)
- Screen to HM round: __% (__/__)
- HM round to Final/Offer: __% (__/__)
- Non-performance closures excluded from above: __ (H-1B/budget/role-closed)

Per-channel (3+ attempts only):
- Cold application: __% (__/__) vs. industry-general ~1%
- Warm intro/referral: __% (__/__) vs. industry-general ~50% decision-maker reach
- Inbound: __% (__/__) (no generic benchmark, recruiter-initiated)
- Unknown channel: __ entries (channel not determinable from notes, consider tagging going forward)

Insight: [Which channel/stage is the candidate's strongest? Weakest? Does this match where they're spending outreach effort? Flag mismatch if effort and conversion are misaligned.]
```

### Step 5.6: Cross-Loop Pattern Mining (Minutes, if available)

Check `~/meetings/` for meeting files whose dates fall within the active window of any Interview Loop. For each closed loop with a recorded start date:

```bash
ls ~/meetings/YYYY-MM-DD*.md 2>/dev/null  # Replace YYYY-MM-DD with dates within that loop's window
```

Then grep those files for question patterns, recurring topics, and post-interview impressions across loops. See the Minutes Integration Module in `references/cross-cutting.md` for detection and querying patterns. Skip silently if minutes is not installed or fewer than 3 matching files exist across all loops.

If 3+ matching files are found, surface:
- Questions appearing across 3+ meeting files from different companies: high-priority drill targets that may not be in the Question Bank because the candidate forgot to log them post-round
- Recurring weakness patterns mentioned in post-interview voice memos (e.g., "lost the thread mid-answer" appearing across three different loop memos)
- Post-interview action items in `action_items` frontmatter with no corresponding coaching state update

Output as an addendum to the triage step: "Minutes cross-loop patterns: [N] recurring questions detected across [N] loops not yet in Question Bank. Adding to Interview Intelligence."

Add newly discovered questions to Interview Intelligence, Question Bank with source tag `[minutes-inferred]` so future calibration knows these came from meeting notes rather than scored rounds.

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

## Velocity Metrics [skip if < 4 sessions]
- Data window: [N] sessions — [interview type]
- Baseline: sessions 1–[N] (avg)  /  Recent: sessions [N]–[N] (avg)

| Dimension | Baseline | Recent | Total Δ | Velocity | Status |
|-----------|----------|--------|---------|----------|--------|
| Substance | | | | | |
| Structure | | | | | |
| Relevance | | | | | |
| Credibility | | | | | |
| Differentiation | | | | | |

- Fastest-moving: [dimension] (+X.XX/session) — [what drove it]
- Most stagnant: [dimension] (+X.XX/session) — [plateau or ceiling? — diagnosis]
- Coaching ROI: [which dimensions respond fastest; any dimension at ≥8 sessions/0.5pt below ceiling]
- Mismatch flag: [fastest-moving dimension vs. Active Coaching Strategy target — flag if different]

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
- Rejection pattern: [clustered by company type, seniority, domain, or stage, or no pattern]
- Stage analysis: [where in the funnel rejections cluster]
- Feedback signals: [recurring themes from recruiter/interviewer feedback]
- Fit assessment accuracy: [did fit verdicts predict outcomes?]
- Recommendation: [continue current targeting, or consider adjusting, with specifics]

## Funnel Stats (if 5+ total tracked opportunities exist)
- Total tracked opportunities: __
- Applied to Screen: __% (__/__)
- Screen to HM round: __% (__/__)
- HM round to Final/Offer: __% (__/__)
- Non-performance closures excluded: __ (H-1B/budget/role-closed)
- Per-channel (3+ attempts only): [cold application, warm intro/referral, inbound, each vs. the Channel Benchmark Module general rate]
- Insight: [strongest/weakest channel or stage, and whether outreach effort matches where conversion is actually happening]

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

## JD Pattern Analysis (if 3+ JD Analyses exist)
- Recurring competencies across decoded JDs: [competencies that appear in 3+ JDs — this is the candidate's market-validated sweet spot]
- Emerging requirements: [competencies appearing in recent JDs that weren't in earlier ones — market is shifting]
- Competency coverage: [which recurring competencies have strong storybank coverage vs. gaps]
- Targeting signal: [what the JD patterns reveal about the candidate's actual market position]

## Storybank Health
- Total stories: __ (target: 8-12)
- Strong stories (4-5): __ (target: at least 60% of storybank)
- Stories needing rework (1-3): __ [list with S### IDs]
- Retirement candidates (below 3 after 2+ improvement attempts): __
- Earned secret coverage: __ of __ stories have real earned secrets (not placeholders)
- Competency coverage: Run the Storybank Gap Check from `references/cross-cutting.md` across all active Interview Loops simultaneously. For each gap, classify as Critical / Addressable / Covered. Surface: (a) competencies that are Critical Gaps for 2+ active companies — fix these first, highest leverage; (b) gaps that are company-specific vs. appearing across the market — company-specific gaps may be targeting signals rather than skill gaps to build.
- Retrieval readiness: [has candidate run retrieval drill? last retrieval score?]
- Assessment: [Healthy / Needs work / Critical gaps]

### Story Deployment Analytics
When 3+ scored interviews exist in Score History, compute and display:
- **Per-story advance rate**: For each story deployed in a live interview, calculate: (interviews where story was deployed AND candidate advanced) / (total deployments). Surface the top 3 performers and any stories with 0% advance rate.
- **Deployment diversity**: (Unique stories deployed across all interviews) / (Total story deployments). Below 40% = over-reliance on 1-2 stories at the PORTFOLIO level (a delivery-energy concern, not an interviewer-facing concern). Above 60% = healthy rotation. Note: this is a portfolio health signal, not an overuse warning. Interviewer-facing overuse risk is loop-scoped only, see `references/cross-cutting.md` Storybank Gap Check.
- **Unused high-strength stories**: Stories with Strength 4+ and Use Count 0 in live interviews. These are ready weapons that aren't being fired. Name them.
- **Recommendation**: Based on the data, suggest specific stories to deploy more (high advance rate, underused) and stories to retire or rework (low advance rate despite multiple deployments).

Reference: Story Deployment Analytics module in `references/cross-cutting.md`.

## Narrative Consistency
When 3+ companies have interview data (from Score History or Interview Loops), run the Narrative Consistency Checker from `references/cross-cutting.md`. Surface any contradictions found. If all tracked narratives are consistent, say so in one line: "Narrative consistency: No contradictions detected across [N] companies."

## Coaching Meta-Check
- Is this feedback landing?
- Are we focused on the right bottleneck?
- Anything to change about our approach?

**Recommended next**: `[command]` — [reason based on top priority and current bottleneck]. **Alternatives**: `practice`, `stories`, `prep [company]`, `mock [format]`
```
