# hype — Pre-Interview Boost Workflow

### Data-Driven Hype

The hype reel should be built from real coaching data, not generic encouragement:
- **Pull from practice high points**: Reference the candidate's best practice moments — "In your last practice session, you nailed the prioritization question with a 4 on Structure. That's the level you're bringing today."
- **Reference strongest stories**: Name the 2-3 stories that scored highest in the storybank and are mapped to this interview.
- **Use real score trajectory**: If scores have been improving, name it — "Your Structure scores went from 2s to consistent 4s over the last three sessions. That's not luck."
- If no coaching data exists yet (first session), build from resume strengths and kickoff profile. Be explicit about this: "I don't have practice scores or storybank data to draw from yet — this hype reel is built from your resume and what you've told me. It'll be more powerful once we've done some practice rounds together."

### Anxiety-Profile Personalization

Candidates experience pre-interview anxiety differently. During `kickoff` (or the first time `hype` is run), identify the candidate's anxiety profile from their stated concern and interview history:

| Profile | Signals | Hype Adjustment |
|---|---|---|
| **Confident but underprepared** | "I'm fine with interviews, just haven't prepped" | Skip emotional boost — focus on tactical 3x3 and cheat sheet. Be direct about gaps. |
| **Anxious about specific failure** | "I always freeze on behavioral questions" or "I can't think of stories" | Address the specific fear head-on with evidence. "You have 8 stories in your storybank, 5 rated 4+. You've practiced retrieving them under pressure. You're not going to freeze." |
| **Generalized anxiety** | "I'm just really nervous" or "I always feel like I'll mess up" | Lead with the physiological warmup (breathing, physical reset). Provide the reframe early: "This is a conversation, not a test." Keep the hype short and grounded — too much intensity can amplify anxiety rather than reduce it. |
| **Post-rejection anxiety** | Recent rejection in Outcome Log, or candidate mentions a bad experience | Acknowledge it directly: "Your last interview at [Company] didn't go the way you wanted. That's done. This is a different company, different interviewers, fresh start." Reference what changed since then (new practice scores, improved stories). |
| **Impostor syndrome** | "I don't think I'm qualified" or fit verdict was Investable Stretch | Ground in evidence: specific resume achievements, practice scores, storybank strengths. "The data says you belong in this interview. Let's look at why you were invited." |

Save the identified profile to coaching_state.md Profile as `Anxiety profile: [type]` so subsequent `hype` sessions don't re-diagnose — they adapt immediately.

### No-Data Fallback

When `coaching_state.md` is empty or has no scores, don't output a hollow version of the data-driven hype. Instead, shift to a different mode:
- Lead with resume-grounded strengths (from kickoff resume analysis)
- Focus the warmup routine on calming techniques rather than score references
- Use the candidate's stated biggest concern (from kickoff) as the basis for the 3x3
- Be honest: "Once you've done some practice rounds, this hype reel will reference your specific high points and score trajectory. For now, here's what's genuinely strong about your profile."

### Interview-Specific Tailoring

If a `prep` brief exists for the upcoming interview, the hype should reference it directly:
- "You're about to talk to [Interviewer Name], who based on their background will likely focus on [area]. Your [Story Title] is perfect for this."
- "This is a [format] interview. Remember: [format-specific key advice from prep]."
- "Their top concern about you is probably [from concerns]. Your counter: [one sentence]."

If no prep exists, say so and suggest running `prep` first if time allows.

### Output Schema

```markdown
## 60-Second Hype Reel
- Line 1: [grounded in real coaching data or resume strengths]
- Line 2: [specific evidence of capability]
- Line 3: [reference to best story or practice moment]
- Line 4: [what makes you different from other candidates]

## Pre-Mortem (Level 5 only)
The honest counterweight. Based on your patterns, the 2-3 most likely ways this interview doesn't go well:
1. [failure mode] — Prevention: [one-line cue]
2. [failure mode] — Prevention: [one-line cue]
3. [failure mode] — Prevention: [one-line cue]

You know these risks. Now set them aside and go execute.

## Pre-Call 3x3
### 3 Likely Concerns + Counters
1.
2.
3.

### 3 Questions To Ask
1.
2.
3.

## Focus Cue
- One thing to remember in the room:

## 10-Minute Warmup Routine
[If Interview Loops has a known format for this round (from prep or Format Discovery), tailor the warmup to that format. A presentation round warmup focuses on opening delivery. A system design warmup focuses on scoping out loud. A behavioral screen warmup focuses on story retrieval speed.]
1. Read this hype reel out loud once.
2. [Format-specific drill]: Behavioral → pick your weakest story and deliver the 60-second version out loud. Presentation → deliver your opening 30 seconds out loud. System design → practice scoping a simple problem out loud for 60 seconds. Panel → mentally rehearse switching between interviewer styles.
3. Review the 3x3 above — don't memorize, just refresh.
4. Physical reset: [walk, stretch, breathe — whatever routine works for you].
5. Reframe: "This is a conversation to see if there's mutual fit. I'm also interviewing them."

## If You Bomb an Answer Mid-Interview
[Inlined recovery guidance — acknowledge, pivot, and re-engage]

## If You Get a Question You Have No Story For
[Inlined gap-handling guidance — adjacent bridge technique]

## If You Have Back-to-Back Interviews
- Between interviews: 5-minute reset. Don't review notes — your brain needs a break, not more input.
- Physical reset: stand up, walk, get water, stretch. Change your physical state.
- Mental reset: "That interview is done. I can't change it. This next one starts fresh."
- Don't carry energy from the previous interview — good or bad. Each interviewer is meeting you for the first time.
- If you bombed the last one: "That conversation is over. This interviewer doesn't know about it and doesn't care."
- Quick re-read: glance at the Day-Of Cheat Sheet for the next interviewer (if different from the last).

**Recommended next**: `practice ladder` — one final drill to lock in your best answer. **Alternatives**: `questions`, `mock [format]`, `debrief`
```

#### Questions Sourcing

If `questions` was previously run for this company (check Interview Loops for saved prepared questions), pull from those for the 3x3. Don't regenerate — consistency matters.

#### Recovery Section Sourcing

For "If You Bomb an Answer Mid-Interview," inline key guidance from the Psychological Readiness Module (Mid-Interview Recovery) in `references/cross-cutting.md`. For "If You Get a Question You Have No Story For," inline key guidance from the Gap-Handling Module (Pattern 1: Adjacent Bridge) in `references/cross-cutting.md`.

#### Pre-Mortem Construction (Level 5 only)

Source failure modes from real coaching data — don't generate generic risks:
- **Active Coaching Strategy bottleneck**: If the primary bottleneck is Differentiation, "Your answers sound competent but don't stand out" is a concrete failure mode.
- **Storybank gaps for this company**: If predicted questions map to gaps, those are failure modes.
- **Self-assessment calibration tendency**: An over-rater may not self-correct in the moment.
- **Avoidance patterns from Coaching Notes**: Whatever the candidate has been avoiding is likely what will trip them up.
- **Previous rejection feedback**: Feedback from similar companies predicts what this company may also flag.

End with the release cue: "You know these risks. Now set them aside and go execute." The pre-mortem's purpose is to move failure anxiety from the subconscious (where it causes freeze) to the conscious (where it becomes actionable). Once acknowledged, let it go.

At Levels 1-4: Skip the Pre-Mortem entirely. Hype stays pure boost.
