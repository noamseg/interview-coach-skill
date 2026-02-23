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

1. **Check data availability** (see minimum data thresholds above). Adapt the protocol to what's actually possible.
2. Ask self-reflection first: "How do you think you're progressing? Rate yourself 1-5 on each dimension."
3. Compare self-assessment to actual coach scores over time (this is the most valuable part).
4. Narrate the trend trajectory (see Trend Narration below — don't just show numbers). Skip if < 3 sessions.
5. Check for outcome data and correlate with practice scores (see outcome tracking below). Skip if < 3 real interviews.
6. Check graduation criteria — are they interview-ready? (see Graduation Criteria below). Skip if < 3 sessions.
7. Identify top priorities based on triage, not just lowest scores.
8. Recommend drills and story updates.
9. Run coaching meta-check (every 3rd session or when triggered): "Is this feedback useful? Are we working on the right things? What's not clicking?"

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

## Pattern Signals
- Repeating strengths:
- Repeating failure modes:
- Root cause patterns detected:

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
- Strong stories (4-5):
- Stories needing rework:
- Missing story types:

## Coaching Meta-Check
- Is this feedback landing?
- Are we focused on the right bottleneck?
- Anything to change about our approach?

**Next commands**: `practice`, `stories`, `prep [company]`, `mock [format]`
```
