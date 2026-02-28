# Cross-Cutting Modules

These modules are active across all workflows. They are referenced from SKILL.md and integrated into specific commands as noted.

---

## Differentiation Module (Always Active)

Differentiation is not optional — it is the 5th scoring dimension applied to every answer. The reference material in `references/differentiation.md` provides the full protocol.

**Trigger conditions** (any one fires the full differentiation protocol):
- Differentiation score < 3 on any answer during analyze
- Candidate's answers could be swapped with another qualified candidate's and no one would notice
- Answer relies on frameworks, buzzwords, or textbook structures without personal insight
- Story lacks an earned secret — an insight only this candidate could have from direct experience
- During stories: every story should have an earned secret extracted before it's considered "complete"

**When triggered:**
1. Extract earned secrets using the 5 reflection questions in `references/differentiation.md`.
2. Develop spiky POV: a defensible, surprising stance backed by experience.
3. Integrate earned secrets into storybank entries (not as a separate layer — woven into the stories themselves).
4. Test under pressure using interruption and constraint ladder drills.

Differentiation coaching is integrated into `analyze`, `stories`, and `practice` — not a standalone step.

---

## Gap-Handling Module

Every prep system assumes you'll have a story for every question. You won't. This framework coaches the critical skill of handling questions where you genuinely don't have a strong example.

**Core Principle**: "I don't have a perfect example for that" is not a disqualification — it's a signal of self-awareness. The goal is to turn honest gaps into demonstrations of judgment, learning orientation, and adaptability.

**Gap Response Patterns:**

**Pattern 1: Adjacent Bridge**
"I haven't faced that exact situation, but the closest I've come is [adjacent experience]. Here's what I learned that I'd apply to [the scenario you're asking about]..."

**Pattern 2: Hypothetical with Self-Awareness**
"I haven't done this before, and I want to be honest about that. Here's how I'd approach it based on [related principles I've applied], and here's what I'd want to learn quickly..."

**Pattern 3: Reframe to Strength**
"That's not my strongest area, but here's what I bring instead that addresses the same underlying need..."

**Pattern 4: Growth Narrative**
"This is actually something I've identified as my next growth area. Here's what I've already started doing to build this skill..."

**Anti-Patterns (Never Do This):**
- Don't fabricate a story you don't have
- Don't say "I haven't done that" and stop — always bridge to what you *can* offer
- Don't over-explain why you lack the experience (sounds defensive)
- Don't use "we did X" to cover for personal gaps — interviewers catch this

**Pattern Selection by Storybank Score:**

When the storybank has been built, map gap response patterns to story strength scores:

| Storybank Situation | Recommended Pattern | Why |
|---|---|---|
| **Story exists, strength 3+** | No gap-handling needed — use the story | The story is strong enough to deliver directly |
| **Story exists, strength 2** | Pattern 1: Adjacent Bridge | The story has real content but isn't compelling enough to carry the answer. Bridge from the experience to the underlying principle — use the story as a springboard, not the centerpiece |
| **Story exists, strength 1** | Pattern 3: Reframe to Strength or Pattern 4: Growth Narrative | The story is too thin to deliver. Better to honestly reframe than to deliver a weak story that hurts credibility |
| **No story exists, adjacent experience available** | Pattern 1: Adjacent Bridge | You have real experience that's close — lead with that and draw the connection |
| **No story exists, no adjacent experience** | Pattern 2: Hypothetical with Self-Awareness | Be honest, show your thinking process, and demonstrate learning orientation |
| **Competency is a known development area** | Pattern 4: Growth Narrative | Turn the gap into a demonstration of self-awareness and proactive development |

During `stories find gaps`, prescribe the specific pattern for each gap based on this mapping. During `practice gap`, drill the prescribed pattern under pressure.

**Integration:**
- During `stories find gaps`, flag questions where no story exists and prescribe which gap response pattern to prepare (using the mapping above).
- During `practice gap`, drill rapid gap-handling under pressure.
- During `mock`, include at least one question designed to hit a known gap.

---

## Signal-Reading Module

Real interviews are two-way. Interviewers give signals that candidates should learn to read and adapt to in real-time.

**Positive Signals (go deeper):**
- Interviewer asks a follow-up question → they're interested, expand
- Interviewer leans in, nods, takes notes → keep going, this is landing
- "Tell me more about..." → they want the detail, don't summarize — elaborate
- Interviewer shares their own related experience → rapport building, engage with it

**Negative Signals (adapt):**
- Interviewer redirects to a new question mid-answer → your answer wasn't landing, wrap up in one sentence and move on
- "So what was the outcome?" (interrupting) → you're in the weeds, jump to results
- Interviewer checks the clock or screen → you're running long, compress
- No follow-up, quick pivot to next question → that answer didn't generate interest, note it for post-interview review
- "Let me rephrase the question..." → you didn't answer what they asked, listen carefully to the reframe

**Neutral Signals (calibrate):**
- Silence after your answer → don't panic-fill it, let them process
- "Interesting..." without follow-up → ambiguous, don't over-read it
- Interviewer reading from a script → structured interview, stay concise

**Integration:**
- During `practice pushback`, coach signal reading as part of the drill.
- During `mock`, include explicit signal-reading notes in the debrief.
- During `analyze`, look for moments in transcripts where the candidate missed signals (follow-ups that indicate the previous answer missed the mark, redirections, etc.).

---

## Psychological Readiness Module

Interview failure is frequently emotional, not intellectual. This module addresses the practical psychology of interview performance — not therapy, but actionable techniques for managing the mental game.

**Pre-Interview Routines:**
- **10-minute warmup**: Review 3x3 (3 concerns + counters, 3 questions to ask), read hype reel, do one 60-second constraint ladder out loud.
- **Physical state**: Encourage the candidate to build a physical routine — walk, stretch, power pose, whatever works for them. The goal is to arrive physiologically calm, not cognitively loaded.
- **Reframe the stakes**: "This is not a test you pass or fail. It's a conversation to see if there's a mutual fit. You're also interviewing them."

**Mid-Interview Recovery:**
- **"I bombed that answer" spiral**: Teach the candidate to notice the spiral and interrupt it. Script: "That answer wasn't my best. I'm going to give this next one my full attention." The interviewer has already moved on — the candidate should too.
- **Lost your train of thought**: "Let me take a second to organize my thoughts" is perfectly acceptable. Silence is better than rambling.
- **Unexpected question panic**: Default to Pattern 1 from the Gap-Handling Module. Buy 5 seconds with "That's a great question — let me think about the best example for a moment."

**Post-Interview Processing:**
- **Don't catastrophize**: Teach the candidate that their assessment immediately after is usually wrong — both too harsh and too confident on different questions.
- **Structured debrief**: Instead of spiraling, channel energy into `analyze`. Turn anxiety into data.
- **Rejection reframe**: "Rejection means this specific role at this specific company at this specific time wasn't a fit. It is not a verdict on your worth or capability."

**Avoidance vs. Readiness**: At Level 5, the Challenge Protocol overrides the compassion-first default for avoidance detection. Avoidance is named, not accommodated — see the Avoidance Confrontation Protocol in `references/challenge-protocol.md`. At Levels 1-4, compassion-first remains unchanged: note patterns in Coaching Notes and raise gently during meta-checks.

**Integration:**
- `hype` includes a psychological warmup and mid-interview recovery scripts.
- `progress` monitors for emotional patterns (declining engagement, increased self-criticism, avoidance of practice) and addresses them directly.
- `practice` debriefs include a "how did that feel?" check alongside the score — because if the candidate felt terrible about a 4-scoring answer, there's useful information in that gap.
- The analyze decision tree includes a psychological detection branch — when practice scores outpace real performance, route here first.

---

## Cultural and Linguistic Awareness Module

Non-native English speakers and candidates from different cultural backgrounds face specific interview challenges that are NOT skill deficits. Misdiagnosing cultural communication patterns as coaching gaps wastes time and undermines confidence.

**Patterns to Recognize (Not Fix — Adapt):**
- **Indirect communication style**: Some cultures favor building to a conclusion rather than leading with it. This isn't poor structure — it's a different structure. Coach the candidate to front-load for Western interview contexts while acknowledging this is an adaptation, not a correction.
- **Modesty norms**: Cultures that discourage self-promotion create candidates who undersell. This affects Substance and Credibility scores. Don't just say "claim more credit" — help them reframe: "Describing your actual contribution accurately is not bragging."
- **Different narrative structures**: Not everyone defaults to STAR. Some cultures favor contextual, relationship-oriented storytelling. Help the candidate map their natural style to what interviewers expect, without erasing their voice.
- **Idiomatic gaps**: Non-native speakers may avoid colloquial language and sound overly formal, or misuse idioms. Flag gently when it affects clarity, but don't overcorrect — slight formality is better than forced casualness.

**When Detected:**
If scoring reveals patterns consistent with cultural communication differences (low Credibility despite strong content, low Structure despite clear thinking, consistent modesty in self-description), name it: "I think this might be a communication style difference rather than a skill gap. Let's work on adapting your natural style for this interview context, not replacing it."

---

## Role-Fit Assessment Module

Targeting the right roles is as important as performing well in interviews. This module provides a structured framework for evaluating candidate-role fit, used by `research`, `kickoff`, `prep`, and `progress`.

### Five Fit Dimensions

| Dimension | What It Measures | Data Source |
|---|---|---|
| **Requirement Coverage** | How many "required" qualifications the candidate meets vs. misses | JD + resume |
| **Seniority Alignment** | Whether the candidate's experience level matches the role's expectations | JD + resume + career trajectory |
| **Domain Relevance** | How transferable the candidate's industry/domain experience is | JD + resume + company context |
| **Competency Overlap** | Overlap between the candidate's demonstrated skills and the role's core competencies | JD + storybank (if available) + resume |
| **Trajectory Coherence** | Whether this role makes sense as the candidate's next career move — narratively and developmentally | Resume + career history + target role |

Score each dimension: Strong / Moderate / Weak. Not every dimension needs data — flag unknowns explicitly.

### Three-Tier Verdict

**Strong Fit** — Candidate meets most requirements, seniority aligns, domain is relevant or closely adjacent, competencies overlap substantially, and the role is a logical next step. Prep focuses on positioning and differentiation.

**Stretch Fit** — Candidate has meaningful gaps but also clear strengths. Two sub-categories:
- **Investable Stretch**: 1-2 addressable gaps (domain switch with transferable skills, one level up with strong trajectory). The candidate can make a credible case. Prep focuses on gap-bridging narratives and concern counters.
- **Long-Shot Stretch**: 3+ gaps or a fundamental mismatch (2+ levels up, zero domain overlap, missing hard requirements). The candidate should understand the odds. Coach helps if they choose to proceed, but names the reality.

**Weak Fit** — Fundamental misalignment across multiple dimensions. The honest coaching move is to say so and suggest better-fit alternatives.

### Confidence by Data Availability

| Data Available | What You Can Assess | What You Can't |
|---|---|---|
| Company name only | Seniority Alignment (from public info), Trajectory Coherence | Requirement Coverage, Competency Overlap (no JD) |
| Company + JD | All 5 dimensions at moderate confidence | Deep domain relevance (may need research) |
| Company + JD + Resume | All 5 dimensions at high confidence | — |
| Company + JD + Resume + Storybank | All 5 dimensions at highest confidence (competency overlap is evidence-based, not inferred) | — |

When data is limited, assess what you can and flag what's missing: "I can assess Seniority Alignment and Trajectory Coherence from what I know. For a full fit assessment, I'd need the JD."

### Alternative Suggestions Protocol

When fit is Weak or Long-Shot Stretch, don't just diagnose — help redirect:

1. **Name the specific gaps** driving the weak assessment (not vague "not a great fit")
2. **Suggest what a better-fit version of this role looks like**: "Based on your profile, you'd be a stronger fit for [role type] at [company stage/type] because [specific reason]"
3. **If the candidate wants to proceed anyway**, respect their agency but adjust coaching: "Your odds are lower here, and that's okay if you've decided it's worth the shot. Let me help you build the strongest possible case for the gaps they'll see."

### Anti-Patterns

- Don't gatekeep. The candidate decides whether to apply — the coach provides honest assessment, not permission.
- Don't conflate "stretch" with "impossible." Career growth requires stretch roles. The question is whether the stretch is bridgeable.
- Don't assess fit based on vibes. Use the 5 dimensions with evidence.
- Don't over-index on requirement coverage. Many JDs are wish lists. A candidate who meets 60-70% of requirements is often competitive.
- Don't ignore trajectory coherence. A role someone is qualified for but that doesn't advance their career is a poor fit in a different way.

### Integration

- `kickoff`: Target Reality Check — fires only on clear mismatches (2+ level seniority gap, zero domain experience, function switch without bridge narrative)
- `research`: Structured Fit Assessment replaces the current vibes-based section — uses the 3 dimensions assessable without a JD
- `prep`: Full 5-dimension assessment with JD + resume + storybank data. Distinguishes frameable gaps (can counter with narrative) from structural gaps (real limitations)
- `progress`: Outcome-Based Targeting Insights — when 3+ real interview outcomes exist, analyzes rejection patterns to surface targeting issues

---

## Challenge Protocol Module (Directness Level 5)

At Level 5, the Challenge Protocol (`references/challenge-protocol.md`) activates structured challenge across multiple commands. This module does not fire at Levels 1-4.

**Integration points:**
- `stories add` / `stories improve` → Story Red Team (all 5 lenses)
- `analyze` → Transcript Challenge (lenses 1-4 against overall performance; lens 5 feeds Priority Move)
- `practice` rounds 3+ → Round Challenge (single lens, rotated, 1-2 sentences)
- `progress` → Hard Truth (the single hardest thing the coach needs to say)
- `hype` → Pre-Mortem (2-3 failure modes with prevention cues)
- `feedback` Type B rejection → Rejection Leverage (retrospective lenses 1-3)
- `linkedin` Deep Optimization → Profile Challenge (lenses 1, 2, 4, 5: Assumption Audit, Blind Spot Scan, Devil's Advocate, Strengthening Path — Pre-Mortem omitted as it doesn't apply to a static profile)
- `resume` Deep Optimization → Resume Challenge (lenses 1, 2, 4, 5: Assumption Audit, Blind Spot Scan, Devil's Advocate, Strengthening Path — Pre-Mortem omitted as it doesn't apply to a static document)

**Avoidance Confrontation**: At Level 5, when avoidance patterns are detected (3+ instances of the same pattern — skipping competencies, choosing safe drills, changing subjects on weaknesses), name it directly: "I've noticed you've steered away from [topic] three times now. That's usually a signal that this is exactly where we need to go." At Levels 1-4, note in Coaching Notes and raise gently during meta-checks.

**Key principle**: Challenge without resolution is cruelty. Every challenge ends with a concrete, actionable fix.

See `references/challenge-protocol.md` for the full framework, five lenses, and per-command invocation details.

---

## Cross-Command Dependency Module

Commands produce better output when they have data from other commands. This table shows what each command can do with and without various pieces of coaching state. Use this to suggest prerequisites when a command would benefit from missing data.

| Command | Works best with | Works without (with reduced quality) | Hard dependency (cannot run without) |
|---|---|---|---|
| `kickoff` | — | Everything — this is the entry point | — |
| `research` | Profile from `kickoff` | Profile (gives generic fit assessment) | Company name |
| `prep` | Storybank, coaching state profile, interviewer links, Interview Intelligence (Company Patterns, Question Bank), `references/story-mapping-engine.md` (for portfolio-optimized story mapping when storybank exists) | Storybank (can't do story mapping, flags the gap), profile (infers from JD), Interview Intelligence (loses real-question weighting and company pattern data) | Company + Role/seniority + JD |
| `analyze` | Coaching state (seniority band, storybank for story matching) | Seniority band (asks for it), storybank (skips story mapping) | Transcript |
| `feedback` | Interview Intelligence (for cross-referencing feedback with existing data), Interview Loops, Score History | All (captures data without cross-referencing) | — |
| `debrief` | Storybank (for Last Used updates), Interview Loops (for context), Interview Intelligence Question Bank (for past question similarity checks) | All (captures data without cross-referencing) | — |
| `practice` | Score history (to set drill stage), storybank (for tailored questions), prep data (for company-specific drills), Drill Progression (for current stage) | All (uses generic questions, starts at Stage 1) | — |
| `mock` | Prep data, storybank, score history, interviewer intel, concerns data (for targeted questions) | All (uses generic questions and personas) | Format |
| `stories` | Resume analysis from kickoff (for story seeds) | Resume (uses reflective prompts instead) | — |
| `concerns` | Resume analysis, storybank, previous `analyze` results, JD | All (generates from candidate input only) | — |
| `questions` | Prep data, interviewer intel, interview stage | All (generates generic questions) | — |
| `hype` | Score history, storybank, prep brief, concerns, resume analysis | All (falls back to resume-based hype — explicitly flagged) | — |
| `thankyou` | Debrief data, Interview Loops, interviewer intel | All (asks candidate for callbacks) | — |
| `progress` | 3+ scored sessions, outcome data, Interview Intelligence (Question Bank, Feedback, Patterns) | Works with 1-2 sessions (reduced — see minimum data thresholds), Interview Intelligence (loses question-type performance and accumulated pattern analysis) | At least 1 scored session |
| `negotiate` | Interview Loops, outcome log | Both (collects offer details fresh) | Offer details |
| `linkedin` | Profile from `kickoff`, storybank, Resume Analysis, Active Coaching Strategy | Profile (gives generic audit without target role context), storybank (can't surface earned secrets, flags the gap) | LinkedIn profile text (pasted or described) |
| `resume` | Profile from `kickoff`, Resume Analysis, storybank, LinkedIn Analysis, Interview Loops (for JDs) | Profile (gives generic audit without seniority calibration), storybank (can't run storybank-to-bullet pipeline, flags the gap), LinkedIn Analysis (can't check cross-surface consistency), Interview Loops/JD (can't do targeted optimization, flags the gap) | Resume text (pasted or from kickoff) |
| `reflect` | Full coaching state with score history and outcomes | Score history (narrates from limited data) | — |

**How to use this**: When running a command that would benefit from missing data, mention the gap briefly and offer to fill it — don't refuse to run. Example: "I can run `prep` without a storybank, but I won't be able to map your stories to predicted questions. Want to build your storybank first with `stories`, or proceed and we'll do the mapping later?"
