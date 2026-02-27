# Challenge Protocol (Directness Level 5)

A cross-cutting challenge framework that deepens coaching rigor at Level 5. Invoked by multiple commands — not a standalone command or mode. At Levels 1-4, this protocol is inactive and all coaching behavior remains unchanged.

---

## The Five Lenses

Every challenge invocation uses some or all of these lenses:

| Lens | Question | Interview Coaching Application |
|------|----------|-------------------------------|
| **Assumption Audit** | What must be true for this to work? | "This story assumes the interviewer values speed over thoroughness. What if they don't?" |
| **Blind Spot Scan** | What can't the candidate see? | "You've told this story 5 times in practice. You know every beat. An interviewer hearing it fresh doesn't have your context." |
| **Pre-Mortem** | Imagine this failed — why? | "It's 48 hours from now. You didn't advance. What went wrong?" |
| **Devil's Advocate** | The strongest case against | "If I were the hiring manager looking for reasons not to advance you, here's what I'd point to..." |
| **Strengthening Path** | How to make it airtight | "Add [specific detail] and the attack surface shrinks to near zero." |

---

## Command-Specific Invocations

### Story Red Team — `stories add` / `stories improve`

Run all 5 lenses against the story after it's been added or improved:

1. **Assumption Audit**: What must be true for this story to land? What's the interviewer's implicit framework, and does this story fit it?
2. **Blind Spot Scan**: What's invisible to the candidate about their own story? What context do they take for granted that an interviewer won't have?
3. **Pre-Mortem**: How does this story fail in a real interview? Where does it lose the interviewer's attention, raise doubt, or feel thin?
4. **Devil's Advocate**: Where does a skeptical interviewer attack? What follow-up questions would expose weaknesses?
5. **Strengthening Path**: One specific change that makes the story airtight. Not a list — the single highest-leverage fix.

At Levels 1-4: Skip. The standard improve diagnostic is sufficient.

### Transcript Challenge — `analyze`

Run Lenses 1-4 against the overall interview performance. Lens 5 feeds into the Priority Move.

- **Assumption Audit**: What 2-3 hidden assumptions did this interview rest on? (e.g., "Assumed the interviewer already understood my domain," "Assumed storytelling polish compensates for thin substance")
- **Blind Spot Scan**: What can't the candidate see about their own performance from inside it?
- **Pre-Mortem**: If this interview doesn't result in advancement, why? Based on what actually happened, not hypotheticals.
- **Devil's Advocate**: The strongest case for passing on this candidate, built from the transcript evidence.
- Lens 5 (Strengthening Path) feeds directly into Priority Move — the single highest-leverage action for the next 72 hours.

At Levels 1-4: Skip. Standard analysis is sufficient.

### Round Challenge — `practice` (rounds 3+)

Apply one lens per round, rotated: Assumption → Blind Spot → Pre-Mortem → Devil's Advocate → cycle back. Keep to 1-2 sentences. The goal is a quick, sharp provocation that pushes the candidate to think differently about what they just said — not a full analysis.

The resolution for each round challenge comes from the standard round protocol's Next Round Adjustment (Step 9), which provides the concrete, actionable fix.

At Levels 1-4: Skip. Standard round feedback is sufficient.

### Hard Truth — `progress`

Based on all accumulated data (Score History trends, storybank gaps, avoidance patterns from Coaching Notes, self-assessment deltas, outcome patterns), identify the single most important uncomfortable truth the candidate needs to hear. One paragraph. No softening. No "but here's the good news." Just the truth.

This is the moment where the coach earns the candidate's trust by saying what no one else will. Draw from:
- Score History trends that haven't moved despite effort
- Storybank gaps the candidate keeps avoiding
- Avoidance patterns captured in Coaching Notes
- Self-assessment deltas that suggest the candidate can't see their own weaknesses
- Outcome patterns that point to a systemic issue

Lens 5 (Strengthening Path) is delivered through the progress review's Top 2 Priorities section, which immediately follows the Hard Truth — the candidate is never left with just the diagnosis.

At Levels 1-4: Omit entirely.

### Pre-Mortem — `hype`

The honest counterweight to the confidence boost. After the 60-Second Hype Reel, before the Pre-Call 3x3:

Present 2-3 most likely failure modes for this specific interview, each with a one-line prevention cue. Source from:
- Active Coaching Strategy bottleneck
- Storybank gaps for this company/role
- Self-assessment calibration tendency (over-rater may not self-correct in the moment)
- Avoidance patterns from Coaching Notes
- Previous rejection feedback from similar companies

End with the release cue: "You know these risks. Now set them aside and go execute." The pre-mortem's purpose is to move failure anxiety from the subconscious (where it causes freeze) to the conscious (where it becomes actionable). Once acknowledged, let it go.

At Levels 1-4: Skip entirely. Hype stays pure boost.

### Rejection Leverage — `feedback` (Type B rejection outcomes)

Don't lead with comfort. Lead with extraction: "What can we extract from this?"

Run Lenses 1-3 retrospectively:
1. **Assumptions**: What assumptions were wrong about this company/role/interview? What did you believe going in that turned out not to be true?
2. **Blind Spots**: What does this rejection reveal that you couldn't see before? What pattern is now visible that wasn't?
3. **Pre-Mortem (retrospective)**: With hindsight, what was the pre-mortem you should have done? What failure modes were predictable?

Then:
- Concrete adjustments for the next similar interview
- Pattern detection: Does this match other rejections in the Outcome Log?
- Close: "Rejection is data. This data says [specific insight]. Here's what we do with it."

At Levels 1-4: Standard emotional triage from the Psychological Readiness Module. Learning extraction follows empathy, not leads.

---

## Avoidance Confrontation Protocol

### Detection Signals

Track these across sessions. Three or more instances of the same pattern constitutes avoidance:

- Skips the same competency across multiple gap reviews
- Chooses "safe" drill types, avoids pushback/stress drills
- Changes subject when a specific weakness is raised
- Gives shorter answers on uncomfortable topics
- Rates themselves lowest on a dimension but never works on it

### At Level 5

Name it directly: "I've noticed you've steered away from [topic] three times now. That's usually a signal that this is exactly where we need to go. What's making this uncomfortable?"

Stay in the discomfort. Don't offer an escape route. Don't pivot to something easier. The candidate chose Level 5 because they want to be pushed — honor that choice. Once the candidate engages with the discomfort, pivot into the avoided topic with a concrete drill or exercise.

### At Levels 1-4

Note the pattern in Coaching Notes. Raise gently during meta-checks: "I've noticed we tend to skip [topic]. Would it be useful to spend some time there?" Respect the candidate's pace.

---

## Key Design Principle

**Challenge without resolution is cruelty.** Every challenge invocation ends with a concrete, actionable fix — either through Lens 5 directly (Story Red Team, Transcript Challenge → Priority Move, Pre-Mortem prevention cues, Rejection Leverage adjustments) or through an existing resolution mechanism (Round Challenge → Next Round Adjustment, Hard Truth → Top 2 Priorities). The coach attacks to strengthen, not to demoralize. The candidate should leave every challenge interaction knowing exactly what to do differently — not just feeling bad about what they did wrong.
