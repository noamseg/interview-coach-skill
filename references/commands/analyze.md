# analyze — Transcript Analysis Workflow

Use `references/transcript-processing.md` as execution guide.

### Cold Start (No Coaching State)

If a candidate drops a transcript without having run `kickoff` first, don't refuse or force kickoff — but collect the minimum needed for a useful analysis:

1. **Infer what you can from the transcript.** The questions asked often reveal role type, seniority level, and company culture. Note these inferences explicitly: "Based on the questions, this looks like a mid-career PM behavioral screen."
2. **Ask for two things before scoring**: (a) "What seniority level are you targeting? This affects how I calibrate scores." (b) "What role/company is this for? Even brief context helps me assess Relevance."
3. **Proceed with analysis.** Use inferred or stated seniority band for calibration. Skip story-mapping sections (no storybank exists). Skip cross-referencing with prep data.
4. **After the analysis, suggest kickoff**: "I've scored this transcript, but I'm working without your full context — no storybank, no coaching history, no target company profile. If you want to get the most from this system, run `kickoff` to set up your coaching profile. Your analysis scores will carry forward."

### Step Sequence

1. **Check for existing debrief data.** If `coaching_state.md` has a `debrief` entry for this interview (same company/round), pull it in as context — the candidate's emotional read, interviewer signals they noticed, stories they used, and their same-day self-assessment. This is valuable because debrief captures impressions while fresh, before memory reconstruction smooths things over. Note any discrepancies between debrief impressions and what the transcript actually shows — these deltas are coaching gold.
2. Ask self-assessment questions first: "Before I dig in — which answer do you feel best about, and which one do you think was weakest? And overall, how do you think it went?" (Wait for response before proceeding.) If a debrief already captured this, reference it: "You told me right after the interview that Q3 felt rough. Let's see what the transcript shows."
3. **Set the self-assessment aside.** Do NOT let the candidate's answer influence your scoring. Analyze the transcript independently — score first, form your own conclusions, then compare to what they said.
4. Clean transcript minimally.
5. **Transcript quality gate**: After cleaning, assess how much is usable. If significant gaps exist (garbled sections, missing speaker labels, <60% recoverable), say so upfront: "This transcript has significant quality issues. I can score what's here, but my confidence is reduced. Here's what I can and can't assess: [specifics]." Be transparent throughout the analysis about where you're working from solid data vs. filling in gaps.
6. Parse into Q&A pairs.
7. Score each answer on 5 dimensions (including Differentiation).
8. **Compare your scores to their self-assessment.** This is where the self-assessment becomes valuable — not as input to your scoring, but as a calibration signal. If you agree with their picks, explain why with evidence. If you disagree, say so plainly: "You flagged Q3 as your weakest, but I'd actually point to Q5 — here's why." The delta between their perception and your analysis is itself useful coaching data. If debrief data exists, compare all three: debrief impression → current self-assessment → coach scores. Shifts between the fresh debrief read and the later self-assessment reveal how the candidate processes interview experiences over time.
9. **Signal-reading analysis.** Scan the transcript for interviewer behavior patterns using the Signal-Reading Module below. Include observations in the per-answer analysis and in the overall debrief.
10. **Question decode for low-Relevance answers.** For any answer scoring < 3 on Relevance, don't just say "you missed the point." Explain what the question was actually probing for: "This question about 'a time you failed' isn't testing whether you've failed — it's testing self-awareness, learning orientation, and honesty. A targeted answer would have focused on what you learned and how it changed your approach, not on the failure itself."
11. **Proactive rewrite of the weakest answer.** Don't just offer a rewrite — do one automatically for the lowest-scoring answer. Show the original excerpt and the improved version side by side with annotations. Say: "Here's what your weakest answer could look like at a 4-5. I'll show the delta so the improvement is concrete — not to give you a script, but to make it tangible." Still offer rewrites of other answers on request.
12. **Triage — identify primary bottleneck and branch:**

### Post-Scoring Decision Tree

After scoring, identify bottleneck dimensions and branch. Most candidates have multiple weak dimensions — use the priority stack below to determine which to address first.

**Priority stack** (address the highest-priority bottleneck first — you can't fix downstream issues if upstream ones aren't resolved):

1. **Relevance** (highest priority) → If < 3 on majority: the candidate is answering the wrong question. Nothing else matters until this is fixed. Focus on question-decoding drills and story-matching practice.
2. **Substance** → If < 3 on majority: the candidate doesn't have enough raw material. Skip Calibration lens — premature to polish content that doesn't exist yet. Focus entirely on evidence-building and story-strengthening.
3. **Structure** → If primary bottleneck: the candidate knows their content but can't organize it. Run constraint ladder drill immediately as part of debrief. Focus on narrative architecture.
4. **Credibility** → If bottleneck: check for root cause — over-claiming (status anxiety), reflexive "we" framing (obscuring contribution), or missing proof points. Prescribe targeted fix based on which root cause.
5. **Differentiation** (lowest priority — only address after other dimensions are ≥ 3) → Candidate sounds generic. Invoke differentiation protocol from `references/differentiation.md`.

**When multiple dimensions are < 3**: Address the highest-priority one from the stack above. Name the others explicitly: "I see gaps in Substance and Structure, but we're going to focus on Substance first — you need stronger raw material before we work on organizing it."

**The "all 3s" candidate** (all dimensions at 3, none clearly weak): This candidate is stuck in the middle. The intervention is different — they don't have a skill deficit, they have a ceiling problem. The path forward is almost always Differentiation + depth. Push them to go from "competent" to "memorable." Ask: "Your answers are solid but not standing out. What would make your version of this story impossible for another candidate to tell?"

**Psychological detection**: If practice scores are significantly better than real interview performance (reported by candidate or visible in outcome data), or if self-assessment is consistently much lower than coach scores, the primary bottleneck may be emotional rather than cognitive. Route to the Psychological Readiness Module before additional cognitive drills. Say: "Your skills are ahead of your performance. Let's work on the mental game before adding more content."

**If scores are balanced (all 3+, with clear dimension leaders)** → Run full multi-lens analysis as designed.

13. Run multi-lens analysis (scoped by triage decision):
    - Hiring Manager
    - Skeptical Specialist
    - Values Alignment
    - Calibration (skip if Substance < 3 — premature optimization)
14. Synthesize into delta plan with triage-informed priorities.

### Per-Answer Format (for each analyzed answer)

```markdown
### Q#
- Scores: Substance __ / Structure __ / Relevance __ / Credibility __ / Differentiation __
- Forward Signal: Yes / Maybe / No
- What worked:
- Biggest gap:
- Root cause pattern (if detected):
- Tight rewrite direction:
- Evidence:
```

### Answer Rewrite Option

After scoring each answer (or at the end of the full analysis), offer: "Want to see a rewrite of any answer at 4-5 quality? I'll show you the delta — not to give you a script, but to make the improvement concrete."

When rewriting:
- Show the original excerpt and the rewrite side by side.
- Annotate each change: why this word/phrase/structure is different and what it achieves.
- Preserve the candidate's voice — improve the content and structure, don't replace their personality.
- Flag where the rewrite added information the candidate would need to supply: "I added a metric here — you'll need to fill in the actual number."


### Delta Output Schema

```markdown
## Interview Delta

## Scorecard
- Substance:
- Structure:
- Relevance:
- Credibility:
- Differentiation:
- Calibration band used:
- Overall Hiring Signal: Strong Hire / Hire / Mixed / No Hire

## Triage Decision
<!-- After scoring, branch the debrief based on what the data reveals -->
- Primary bottleneck dimension:
- Coaching path chosen: [see decision tree below]

## What Is Working
1.
2.
3.

## Top 3 Gaps To Close (ordered by triage priority)
1. Gap:
   Why it matters:
   Root cause pattern:
   Drill:
2. Gap:
   Why it matters:
   Root cause pattern:
   Drill:
3. Gap:
   Why it matters:
   Root cause pattern:
   Drill:

## Storybank Changes
- Rework:
- Retire:
- Add:

## Priority Move (Next 72 Hours)
- One highest-leverage action:

## Confidence
- Score confidence:
- Data quality notes:

**Next commands**: `practice`, `stories`, `progress`
```
