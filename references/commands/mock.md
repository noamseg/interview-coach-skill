# mock — Full Simulated Interview

A complete simulated interview (4-6 questions in sequence) with holistic feedback on the full arc — not just individual answers.

### Setup

1. Ask for format (behavioral screen, deep behavioral, panel, bar raiser, system design/case study, technical+behavioral mix — see format taxonomy in prep). **For system design/case study and technical+behavioral mix, run the Format Discovery Protocol before proceeding.** See format-specific simulation UX sections below.
2. Ask for company/role context (or use existing prep data).
3. **Calibrate difficulty and tone to the target company.** A mock for a FAANG final round should feel very different from a Series A startup first call:
   - Large tech companies: more structured, higher bar on specificity and metrics, interviewers often follow rubrics
   - Startups: more conversational, care more about adaptability and scrappiness, may go off-script
   - Consulting/finance: more case-study oriented, precision matters, presentation polish expected
   - If prep data exists for this company, use the culture read and format analysis to shape the mock's feel.
4. Set interviewer persona based on format. For panel, deploy 2-3 distinct interviewer archetypes from `references/role-drills.md`.

### Execution

1. Deliver questions one at a time. Wait for each response before the next.
2. Do NOT give feedback between questions — this simulates a real interview. Note observations silently.
3. Vary question difficulty: start moderate, escalate, include one curveball.
4. Include at least one question targeting a known story gap (from storybank gap analysis or `coaching_state.md`) to test gap-handling under realistic conditions.
5. **Pull from saved concerns data.** If `concerns` was previously run for this company (check `coaching_state.md` Interview Loops or Active Patterns), include at least one question that targets the top-ranked concern. This tests whether the candidate's counter-strategy holds under mock pressure.
6. **Adapt mid-mock like a real interviewer.** Don't just move mechanically through a question list:
   - When an answer is strong, go deeper: ask a follow-up that probes the most interesting part. Real interviewers pursue strong threads.
   - When an answer is weak, do what a real interviewer would: move on, redirect, or give a subtle cue ("Can you be more specific about your role in that?").
   - When the candidate says something surprising or contradictory, follow up on it — don't let it pass.
   - Track which threads you pursued and which you abandoned — this is signal-reading data for the debrief.
7. Track: story diversity (did they use the same story twice?), energy trajectory, answer length distribution, time management.

### Panel Simulation UX

For panel format, use named personas with distinct voices. Prefix each question/follow-up with the persona name in bold:

> **[Sarah — Skeptic]**: "I'm not sure that metric tells the full story. How did you isolate your team's impact from market tailwinds?"
>
> **[James — Ally]**: "That's interesting. Can you walk us through the timeline on that?"
>
> **[Director Lin — Silent Observer]**: *[takes notes, no follow-up]*

Switch between personas naturally within the session. Create moments where personas' styles conflict (e.g., the Ally encourages deeper detail while the Time-Pressured Exec wants the bottom line). See `references/role-drills.md` for the full archetype definitions.

### System Design / Case Study Simulation UX

**Before starting, run the Format Discovery Protocol** (see format taxonomy section). If the candidate has described their specific format, simulate THAT. If not, default to a verbal walkthrough format (the most coachable variant) and say so.

**State the coaching boundary at setup**: "In this mock, I'll be evaluating your communication process — how you scope, structure, reason, and articulate tradeoffs. I won't be evaluating the technical correctness of your solution. For that kind of feedback, you'll want to practice with a domain peer."

**Execution adjustments** (this is NOT a behavioral mock — the structure is different):

1. Present a problem statement. Keep it open-ended enough that scoping is required. If the candidate's format involves getting the problem in advance, give it to them and allow thinking time.
2. **Observe the clarification phase.** Do NOT prompt them to ask questions — note silently whether they scope the problem before solving. If they jump straight to a solution, let them. This is data for the debrief.
3. During the solution walkthrough, behave like an interviewer: nod, take notes, ask occasional clarifying questions. Don't coach mid-mock.
4. **Probe tradeoffs**: "Why this approach over X?", "What breaks at 10x scale?", "What are you optimizing for and what are you sacrificing?", "What would you do differently with more time?"
5. **Test adaptability**: "What if I told you [constraint] changed? How does your approach shift?" or "The team just told you [component] isn't available. Now what?"
6. If the candidate narrates well, go deeper on the most interesting thread. If they present conclusions without reasoning, probe: "Walk me through how you got there."

**What to track** (different from behavioral mock):

- **Clarification behavior**: Did they ask scoping questions before diving in? How many? How useful?
- **Approach structure**: Did they outline their approach before detailing it? Did they signal what they'd cover and in what order?
- **Reasoning narration**: Did they think out loud, or just present conclusions? Could you follow their logic in real time?
- **Tradeoff articulation**: Did they name what they were optimizing for and what they were sacrificing? Unprompted or only when asked?
- **Adaptability**: When probed or given new constraints, did they adjust with curiosity or get defensive?
- **Time management**: Did they allocate time across the problem, or spend 80% on one component?
- **Uncertainty handling**: When they didn't know something, did they acknowledge it and state assumptions, or bluff?

### Technical + Behavioral Mix Simulation UX

**Before starting, run the Format Discovery Protocol** with these additional questions:

- "What's the split between technical and behavioral? Roughly 50/50, or weighted toward one?"
- "Do they alternate (behavioral question, then technical, then behavioral), or is it segmented (first half all technical, second half all behavioral)?"
- "Is it one interviewer the whole time, or a handoff between two people?"

Match the mock to whatever the candidate describes. If they don't know, default to alternating format with one interviewer (the most common variant).

**State the coaching boundary at setup**: "I'll be evaluating how you switch between modes — your storytelling quality on behavioral questions, your communication clarity on technical discussions, and how well they reinforce each other. I'm not evaluating the technical correctness of your answers."

**Execution adjustments:**

1. Structure the mock to match the candidate's described format. Default: 5-6 questions alternating between behavioral and technical discussion.
2. **Include at least one deliberate mode switch mid-question**: ask a behavioral question about a technical decision ("Tell me about a time you had to make a difficult technical tradeoff — walk me through both the people side and the technical side"), or pivot from a story to "Now walk me through how you'd approach [related technical scenario]."
3. Vary the transitions. Some should be clean breaks ("Now let's switch gears..."), others should be seamless pivots that test whether the candidate can shift without a signpost.
4. For the technical discussion portions, follow the System Design simulation guidelines above — probe reasoning, tradeoffs, and adaptability.
5. For the behavioral portions, follow the standard mock execution — deliver questions one at a time, no mid-mock feedback, vary difficulty.

**What to track** (format-specific):

- **Mode-switching speed and quality**: How quickly and cleanly does the candidate shift from storytelling to technical articulation and back? Do they fumble transitions or handle them fluidly?
- **Register appropriateness**: Do they maintain behavioral warmth during technical discussion, and technical credibility during behavioral stories? Or do they sound like two different candidates?
- **Integration quality**: Do their behavioral stories and technical discussions reinforce each other? Does the technical answer reference the same principles as their leadership story, or do the two modes feel disconnected?
- **Energy trajectory**: Mixed formats are 50-70 minute marathons. How is their energy at question 5 vs. question 1? Does quality drop in the second half?
- **Which mode is stronger**: Is there a visible gap between their behavioral and technical performance? This is critical coaching data — it reveals where to focus.

### Post-Mock Debrief Schema

```markdown
## Mock Interview Debrief: [Format] - [Company/Role]

## Overall Impression
- Hiring signal: Strong Hire / Hire / Mixed / No Hire
- One-sentence summary of how this interview would land:

## Arc Analysis
- Energy trajectory: Started [high/medium/low] → Ended [high/medium/low]
- Story diversity: __ unique stories across __ questions (flag if <80% unique)
- Pacing: [rushed / well-timed / dragged]
- Answer length distribution: [consistent / front-loaded / back-loaded / erratic]

## Per-Question Scorecard
### Q1
- Scores: Substance __ / Structure __ / Relevance __ / Credibility __ / Differentiation __
- Strongest moment:
- Missed opportunity:

[...repeat for each question]

## Holistic Patterns (things only visible across the full interview)
- Repeated crutch phrases:
- Topics avoided:
- Questions that caused visible hesitation:
- Best moment of the interview:
- Worst moment and recovery quality:

## Signal Reading Notes
- Questions where follow-up indicated interest (positive signal):
- Questions where interviewer moved on quickly (negative signal):
- Questions where interviewer redirected (answer wasn't landing):

## Interviewer Perspective (what I was thinking at key moments)
Replay 3-4 key moments from the interviewer's point of view. This teaches candidates to read what's happening on the other side of the table:
- "When you said [X], I was thinking [Y] — that's why I followed up with [Z]."
- "On Q3, I moved on quickly because [reason] — a real interviewer would likely do the same."
- "Your answer on Q5 made me want to hear more about [specific thing] — but you pivoted to [other thing] instead. That was a missed opportunity to go deeper on your strongest material."

## Format-Specific Debrief (include when applicable)

### If System Design / Case Study:
- **Process visibility**: How clearly could the interviewer follow your thinking? (1-5)
- **Clarification behavior**: Did you scope the problem before solving? What questions did/didn't you ask?
- **Tradeoff articulation**: Did you name what you were optimizing for and what you were sacrificing?
- **Approach structure**: Did you outline before detailing, or dive straight in?
- **Uncertainty handling**: When you didn't know something, did you acknowledge it or bluff?
- **Coaching boundary reminder**: "I scored your communication process — how you structured your thinking, explained your reasoning, and handled probes. I did not evaluate the technical correctness of your solution. For that, practice with a domain peer or use a domain-specific prep resource."

### If Technical + Behavioral Mix:
- **Mode-switching fluidity**: How cleanly did you shift between technical and behavioral modes? (1-5)
- **Energy trajectory**: Started [high/medium/low] → Ended [high/medium/low]. Quality difference between first half and second half?
- **Integration quality**: Did your technical and behavioral answers reinforce each other, or feel like two different candidates?
- **Stronger mode**: [behavioral / technical / balanced] — and what that means for prep priorities
- **Coaching boundary reminder**: "I scored your communication quality across both modes — storytelling, reasoning clarity, and how well they connected. I did not evaluate the technical correctness of your answers."

## Top 3 Changes for Next Mock
1.
2.
3.

**Next commands**: `mock [same format]`, `practice [specific drill]`, `practice technical`, `analyze`
```
