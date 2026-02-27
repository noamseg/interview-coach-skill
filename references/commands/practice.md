# practice — Practice System

Show menu with progression status:

```text
Practice Menu (stages 1-8 are gated by progression)
1) practice ladder     — Constraint drills: tell the same story at 30s, 60s, 90s, 3min
2) practice pushback   — Handle skepticism, interruption, "so what?" pressure
3) practice pivot      — Redirect when a question doesn't match your prep
4) practice gap        — Handle "I don't have an example for that" moments
5) practice role       — Role-specific specialist scrutiny
6) practice panel      — Multiple interviewer personas simultaneously
7) practice stress     — Role-specific high-pressure simulation
8) practice technical  — Thinking out loud, clarification-seeking, tradeoff articulation (optional — system design/mixed format only)

Standalone (not gated by progression):
•  practice retrieval  — Rapid-fire question-to-story matching under time pressure (requires 8+ stories)
```

Use `references/role-drills.md` for role-specific pressure prompts and technical communication drills.

### Drill Progression Ladder

Drills are ordered by prerequisite difficulty. Do not advance until the candidate meets the gating threshold:

| Stage | Drill | Gate to advance | Prerequisite |
|---|---|---|---|
| 1 | Ladder | Structure ≥ 3 on 3 consecutive rounds | None |
| 2 | Pushback | Credibility ≥ 3 under pressure | Stage 1 |
| 3 | Pivot | Relevance ≥ 3 when redirected | Stage 2 |
| 4 | Gap | Credibility ≥ 3 with honest gap handling | Stage 2 |
| 5 | Role | Substance ≥ 3 under specialist scrutiny | Stages 1-3 |
| 6 | Panel | All dimensions ≥ 3 with multiple personas | Stages 1-4 |
| 7 | Stress | All dimensions ≥ 3 under maximum pressure | Stages 1-5 |
| 8 (optional) | Technical | Structure + Substance ≥ 3 in technical communication | Stages 1-3. Only for candidates with system design, case study, or technical+behavioral mix interviews. |

**If a candidate requests a drill above their current stage**, flag it: "You can absolutely try this, but your [dimension] scores suggest you'd get more value from [prerequisite drill] first. Want to start there, or jump ahead anyway?" Respect their choice but name the risk.

### Revisit Queue

Track drill weaknesses across sessions. If a candidate struggled with pushback handling in session 1, automatically resurface it after 2-3 sessions: "Last time, pushback drills exposed [specific pattern]. Let's check if that's durable — want to run a quick pushback round?"

### Question Tailoring

Don't throw generic drill questions. Before each practice session, pull from:
- The candidate's target companies and roles (from `coaching_state.md`)
- Known weak spots from previous analyses or practice rounds
- Storybank gaps where no strong story exists
- The specific competencies the candidate's target JDs emphasize

If this data isn't available yet, use role-appropriate questions from `references/role-drills.md`, but note: "These are general practice questions. Once we have your prep data, I'll tailor questions to your actual interviews."

### Warmup Round

The first round of every practice session is explicitly **unscored**. Its purpose is to get the candidate talking and reduce performance anxiety:
- State: "This first one is a warmup — I won't score it. Just get your thoughts flowing."
- Deliver an easy, open-ended question related to the drill type.
- Give brief, encouraging feedback (no scoring, no rubric).
- Then transition: "Good, you're warmed up. From here on I'll score each round."

**Level 5 warmup skip option**: At Level 5, offer the option to skip: "At your directness level, you can skip the warmup and go straight to scored rounds. Want the warmup or jump in?" Respect either choice. At Levels 1-4, warmup remains mandatory and unscored.

### Round Protocol (every drill round)

1. State round objective.
2. Candidate responds.
3. **Form your own assessment immediately** — score the response in your head before asking the candidate anything. This prevents their self-assessment from anchoring your evaluation.
4. Ask self-reflection (with specific score self-estimate).
5. Give strengths-first feedback **based on your independent assessment, not theirs**. If your read differs from the candidate's self-assessment, name the difference explicitly: "You rated yourself a 3 on Structure, but I'd put it at 2 — here's what I noticed." Never quietly adjust your scores to match theirs.
6. Score using 5-dimension rubric.
6a. **Role-drill score mapping** (for `practice role` and other role-specific drills): After scoring with the native drill axes, map scores to core dimensions using the mapping table in `references/calibration-engine.md` Section 5. Record the blended scores in Score History alongside the native drill scores. This ensures role-drill performance feeds into trend analysis, calibration checks, and graduation criteria.
7. Record self-assessment vs. coach-assessment delta.
8. **Cross-reference peak moments.** After 3+ rounds, reference the candidate's best moment from a previous round: "Your answer in round 2 hit a 4 on Structure — that's what you're capable of. The goal is making that your floor, not your ceiling." This builds confidence and gives a concrete target.
8a. **Round Challenge (Level 5, rounds 3+ only).** Apply one Challenge Protocol lens per round, rotated: Assumption → Blind Spot → Pre-Mortem → Devil's Advocate → cycle back. Keep to 1-2 sentences — a quick, sharp provocation that pushes the candidate to think differently about what they just said. At Levels 1-4: skip.
9. Set one specific change for next round.

### Round Output Schema

```markdown
## Round Debrief
- Drill:
- Objective:
- Candidate Self-Assessment:

## What Worked
1.
2.

## Gaps
1.
2.

## Scorecard
- Substance:
- Structure:
- Relevance:
- Credibility:
- Differentiation:

## Self-Assessment Delta
- Candidate rated themselves: __
- Coach scored: __
- Calibration gap (if any):

## Interviewer's Read
[1-2 key moments from this round, told from the interviewer's perspective]

## Challenge Note (Level 5, rounds 3+ only)
[One lens, 1-2 sentences]

## Next Round Adjustment
- Try this single change:

**Recommended next**: `practice [next drill or continue]` — [reason based on round performance]. **Alternatives**: `stories`, `mock [format]`, `progress`
```

#### Interviewer's Read — How To Write It

Keep it to 1-2 moments per round — practice rounds are short, so be selective. Pick the moments with the highest teaching value.

**Always include at least one positive moment** — what would have genuinely impressed an interviewer, and why. Candidates need to know what's working, not just what's failing.

**Ground in the candidate's actual words.** Quote what they said, then show the evaluative reaction:
- "When you said '[specific quote],' an interviewer would be thinking: [reaction]."
- "The moment that landed strongest was when you [specific moment] — that's the kind of detail that makes an interviewer lean in."

**Connect to the scoring.** The Interviewer's Read should make the scorecard *make sense*. If Structure scored a 2, the monologue should show what that felt like from the other side of the table: "I was 30 seconds in and still didn't know where this was going. That uncertainty is what a 2 on Structure feels like to an interviewer."

**Level 5, rounds 3+**: Expand from 1-2 moments to a mini Inner Monologue (3-4 sentences showing the interviewer's real-time evaluative stream). Closer to mock's Inner Monologue — show what the answer felt like from the other side, including positive reactions, doubt, and pivot points. At Levels 1-4, keep to the standard 1-2 moments.

### Coaching State Integration

After each practice session (not per-round — at the end of the session):
1. **Add scores to Score History** — Type: practice. Leave Hire Signal blank (practice doesn't produce one).
2. **Update Drill Progression** — advance stage if gating threshold met, update Revisit Queue if weaknesses detected.
3. **Review Active Coaching Strategy** — if practice scores reveal patterns that confirm or contradict the current strategy, update accordingly. Preserve Previous approaches when changing strategy.

### `practice technical` — Session Protocol

When the candidate runs `practice technical`, don't just throw all four drills at them. Run a structured session:

1. **Check coaching state.** Does the candidate have a system design or technical+behavioral mix interview coming up? If so, tailor drill scenarios to their target company and role. If not, use generic scenarios.
2. **Check Format Discovery data.** If the candidate has previously described their specific interview format (stored in coaching state Interview Loops or Profile), reference it: "You told me your system design round is a collaborative verbal walkthrough. I'll tailor the drills to that format."
3. **Select 1-2 drills per session.** Don't run all four — a 30-minute session covering Thinking Out Loud + Clarification-Seeking is better than a shallow pass through all four. Selection logic:
   - **First session**: Start with Clarification-Seeking (most common failure mode — jumping to solutions without scoping). Follow with Thinking Out Loud.
   - **If preparing for technical+behavioral mix**: Prioritize Mode-Switching drill.
   - **If the candidate's recent practice/analyze scores show weak tradeoff articulation**: Prioritize Tradeoff Articulation drill.
   - **Subsequent sessions**: Rotate through whichever drills the candidate hasn't practiced, or revisit weak areas.
4. **Run each drill following the protocol in `references/role-drills.md`** (Technical Communication Drills section). Use the role-specific scenario adaptations for the candidate's target role.
5. **Debrief after each drill** using the standard Round Output Schema above.
6. **End with integration note**: "These communication skills — scoping, narrating, articulating tradeoffs — transfer to every format variation. Even if the specific interview setup is different from what we practiced, the underlying skills are the same."

### `practice stress` — Session Protocol

The stress drill is the final test before a real high-stakes interview. See `references/role-drills.md` (High-Pressure Stress Drill section) for the full drill protocol, stress layers, and role-specific variants.

**Session setup:**

1. **Gate check.** Confirm the candidate has completed Stages 1-5 in the progression ladder. If not, flag it: "The stress drill is designed for candidates who've built a solid foundation. Your current stage is [X]. Want to work on [prerequisite drill] first, or push ahead anyway?" Respect their choice.
2. **Pull weaknesses from coaching state.** The stress drill should target known patterns (from Active Coaching Strategy and Revisit Queue), not random pressure. Tell the candidate: "I'm designing this drill around your specific patterns — the places where you've been most vulnerable in practice."
3. **Run 4-5 questions** with 3-4 stress layers active per question (see role-drills.md for the full layer menu).
4. **Do NOT debrief between questions.** Maintain continuous pressure through the full sequence.
5. **Post-drill debrief** focuses on recovery and composure, not content quality. Use the stress-specific scoring from role-drills.md.
6. **Update coaching state**: Log the stress drill in Score History with type: practice/stress. Note composure and recovery scores alongside the standard 5-dimension scores.

### `practice retrieval` — Session Protocol

Retrieval is a standalone drill — not gated by the progression ladder — because it's a storybank maintenance skill, not a core interview skill. See `references/storybank-guide.md` (Rapid-Retrieval Drill section) for the full protocol, scoring, and progression rounds.

**Session setup:**

1. **Gate check.** Requires 8+ indexed stories in the storybank. If fewer exist, redirect: "Retrieval practice works best with 8+ stories to draw from. You have [N]. Want to add a few with `stories add` first?"
2. **Tailor questions to target roles.** Pull from `coaching_state.md` — use the candidate's target companies, JDs, predicted questions from `prep`, and known weak competencies. Don't use generic questions if role-specific data exists.
3. **Run the drill** per the protocol in storybank-guide.md (10 rapid-fire questions, 10 seconds each, story ID + opening line).
4. **Debrief** focuses on retrieval gaps (which competencies had no quick answer?), hesitation patterns (which question types cause delay?), and indexing issues (did they reach for the wrong story?).
5. **Update coaching state**: Note retrieval patterns in the Session Log. If gaps are discovered, add them to the Revisit Queue and suggest `stories find gaps` or `stories add`.
