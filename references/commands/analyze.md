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
3.5. **Format detection and normalization.** Before cleaning, run the format detection protocol from `references/transcript-formats.md`. Identify the transcript source tool (Otter, Grain, Zoom VTT, etc.) and normalize to the standard internal representation. If Interview Loops has round format info for this company, use it to confirm or override the transcript format detection.
4. Clean the normalized transcript (content-level cleaning — timestamps should already be stripped by normalization).
5. **Transcript quality gate**: After cleaning, assess how much is usable. Incorporate format-derived quality signals (speaker label coverage, normalization confidence, multi-speaker detection). If significant gaps exist (garbled sections, missing speaker labels, <60% recoverable), say so upfront: "This transcript has significant quality issues. I can score what's here, but my confidence is reduced. Here's what I can and can't assess: [specifics]." Be transparent throughout the analysis about where you're working from solid data vs. filling in gaps.
6. **Format-aware parsing.** Dispatch to the appropriate parsing path from `references/transcript-processing.md` Step 2 based on the detected interview format: Path A (Behavioral — default), Path B (Panel), Path C (System Design/Case Study), Path D (Technical+Behavioral Mix), or Path E (Case Study, candidate-driven).
7. Score each unit on 5 core dimensions (including Differentiation). For non-behavioral formats, also score the format-specific additional dimensions (see Step 3 scoring extensions in `references/transcript-processing.md`).
8. **Compare your scores to their self-assessment.** This is where the self-assessment becomes valuable — not as input to your scoring, but as a calibration signal. If you agree with their picks, explain why with evidence. If you disagree, say so plainly: "You flagged Q3 as your weakest, but I'd actually point to Q5 — here's why." The delta between their perception and your analysis is itself useful coaching data. If debrief data exists, compare all three: debrief impression → current self-assessment → coach scores. Shifts between the fresh debrief read and the later self-assessment reveal how the candidate processes interview experiences over time.
9. **Signal-reading analysis.** Scan the transcript for interviewer behavior patterns using the Signal-Reading Module in `references/cross-cutting.md`. Include observations in the per-answer analysis and in the overall debrief.
10. **Question decode for low-Relevance answers.** For any answer scoring < 3 on Relevance, don't just say "you missed the point." Explain what the question was actually probing for: "This question about 'a time you failed' isn't testing whether you've failed — it's testing self-awareness, learning orientation, and honesty. A targeted answer would have focused on what you learned and how it changed your approach, not on the failure itself."
11. **Proactive rewrite of the weakest answer.** Don't just offer a rewrite — do one automatically for the lowest-scoring answer. Show the original excerpt and the improved version side by side with annotations. Say: "Here's what your weakest answer could look like at a 4-5. I'll show the delta so the improvement is concrete — not to give you a script, but to make it tangible." Still offer rewrites of other answers on request.
11.5. **Interviewer's Inner Monologue.** Replay the interview from the interviewer's real-time perspective. Same principles as mock's Inner Monologue (`mock.md` lines 181-196): ground in actual transcript quotes, show pivot points where the interviewer's impression shifted, include both positive and negative reactions. This is especially powerful for real transcripts — it shows the candidate what actually happened on the other side of the table. Include at all directness levels.

11.6. **Transcript Challenge (Level 5 only).** Run Challenge Protocol Lenses 1-4 against the overall interview performance. Lens 5 (Strengthening Path) feeds into Priority Move. See `references/challenge-protocol.md` for lens details. At Levels 1-4: skip.

12. **Triage — identify primary bottleneck and branch** using the Post-Scoring Decision Tree below.

#### Post-Scoring Decision Tree (Step 12 detail)

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

**Format-aware triage rules** (apply on top of the standard priority stack):
- System design/case study: If Process Visibility < 3, prioritize it over standard dimensions — the candidate's thinking process isn't visible, which undermines everything else.
- Panel: If Interviewer Adaptation < 3 or Energy Consistency < 3, these become primary coaching targets alongside the weakest core dimension.
- Technical+behavioral mix: If Mode-Switching Fluidity < 3, address it before optimizing either mode individually.
- Case study: If the candidate made zero information requests or zero hypothesis statements, flag scoping/hypothesis behavior as the primary bottleneck.

12a. **Cross-Dimension Root Cause Check.** After scoring all units, scan for root causes that appear across 2+ answers (e.g., "conflict avoidance" affecting both Substance and Differentiation). Cross-reference with `coaching_state.md` → Calibration State → Cross-Dimension Root Causes (active). If a detected root cause already exists as an active entry, update its status and note whether affected dimensions are improving. If a new root cause is detected (same pattern in 2+ answers), create a new entry in the Calibration State table with a unified treatment recommendation. This ensures recurring root causes are tracked as systemic issues, not re-diagnosed per session.
13. Run multi-lens analysis (scoped by triage decision):
    - Hiring Manager
    - Skeptical Specialist
    - Values Alignment
    - Calibration (skip if Substance < 3 — premature optimization)
14. Synthesize into delta plan with triage-informed priorities.
15. **Update Active Coaching Strategy in `coaching_state.md`.** Write the chosen coaching path, rationale, and pivot conditions. If an Active Coaching Strategy already exists, check whether this analysis confirms or contradicts it. If the data suggests a different bottleneck than the current strategy targets, **move the old approach to Previous approaches** (with brief reason for the change) before writing the new one: "Your previous coaching focus was Structure, but this transcript shows Structure at 4 while Differentiation is at 2. I'm updating the strategy to focus on Differentiation." Always preserve the history of what was tried and why it was abandoned — this prevents the coach from cycling back to strategies that already failed.
16. **Update Interview Intelligence.** Extract each scored question to the Question Bank (date, company, role, round type, question, competency, score as 5-dim average, outcome). Then cross-reference with existing Question Bank data — but only surface cross-references when they're meaningful:
    - Score trajectory on a repeated competency (3+ instances) — e.g., "Your Differentiation on leadership questions has gone 2.2 → 2.8 → 3.4 across three interviews."
    - Same question type appearing at the same company across rounds
    - A pattern that changes the coaching recommendation
    Update Effective/Ineffective Patterns only when 3+ data points support the pattern. Update Company Patterns with question types observed and what seems to matter based on this interview.

### Per-Unit Format (for each analyzed unit)

Use the appropriate unit ID based on interview format: Q# for behavioral, E# for panel exchanges, P# for system design phases, CS# for case study stages. Mixed-format interviews use the relevant ID per segment.

```markdown
### [Q#/E#/P#/CS#]
- Scores: Substance __ / Structure __ / Relevance __ / Credibility __ / Differentiation __
- Format-specific scores (if applicable): [e.g., Process Visibility __ / Scoping Quality __]
- What worked:
- Biggest gap:
- Root cause pattern (if detected):
- Intelligence cross-reference (only when past data changes the coaching):
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

## Interview Format
- Detected format: [behavioral / panel / system design / technical+behavioral mix / case study]
- Format source: [coaching state / candidate / transcript inference / default]
- Scoring weight adjustments: [which dimensions are weighted highest for this format]
- Format-specific dimensions scored: [list any additional dimensions, or "N/A — standard behavioral"]
- Coaching scope: [for non-behavioral formats, note coaching boundaries per SKILL.md Rule 11]

## Scorecard
- Substance:
- Structure:
- Relevance:
- Credibility:
- Differentiation:
- Format-specific scores: [if applicable — e.g., Process Visibility, Scoping Quality, etc.]
- Calibration band used:
- Hire Signal: Strong Hire / Hire / Mixed / No Hire

## Triage Decision
- Primary bottleneck dimension:
- Coaching path chosen: [specific path based on bottleneck analysis]

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

## Carry Forward
- [One strong behavior from this interview to maintain]

## Priority Move (Next 72 Hours)
- One highest-leverage action:

## Reflection Prompts
- How does this feedback compare to your gut feeling about the interview?
- Of the growth areas above, which feels most within your control?

## Interviewer's Inner Monologue
[Replay key moments from the interviewer's perspective — what they were thinking as the candidate spoke. Quote the transcript. Show where the impression shifted. Include both positive and negative reactions.]

## Challenge (Level 5 only)
- Assumptions this interview rested on: [2-3 hidden assumptions]
- Blind spots: [what the candidate can't see about their own performance]
- Pre-mortem: [if this doesn't result in advancement, why?]
- Devil's advocate: [strongest case for passing on this candidate]

## Intelligence Updates
- Questions added to Question Bank: [count]
- Patterns observed: [new effective/ineffective patterns, or "not enough data yet"]
- Company learning: [new observations about this company's interview patterns, or "first interview at this company"]

## Confidence
- Score confidence:
- Data quality notes:

## Recommended Next Step
**Recommended next**: `[command]` — [one-line reason based on the triage decision above]. **Alternatives**: `practice`, `stories`, `progress`, `concerns`
```

#### Recommended Next Step Logic

Prescribe ONE specific command based on the triage decision — not a generic menu:
- Relevance bottleneck → recommend `practice pivot` to drill question-decoding
- Substance bottleneck → recommend `stories improve S###` on weakest story, or `stories add` to surface new ones
- Differentiation bottleneck → recommend `stories` to extract earned secrets from existing stories
- Storybank changes needed → recommend `stories` to handle reworks and gaps
- Strong performance → recommend `progress` for trend comparison, or `mock [format]` for full simulation
