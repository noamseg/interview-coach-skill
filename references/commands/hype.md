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
| **Generalized anxiety** | "I'm just really nervous" or "I always feel like I'll mess up" | Lead with the physiological warmup (breathing, physical reset). Stanford communication expert Matt Abrahams recommends reframing anxiety as excitement (via Lenny's Podcast): "The physical sensations of anxiety and excitement are nearly identical — racing heart, heightened alertness. Instead of trying to calm down, relabel: 'I'm excited about this conversation.'" Provide the reframe early: "This is a conversation, not a test." Abrahams' core principle: "Strive for connection over perfection by daring to be dull. Just answer the question." When candidates stop optimizing for brilliance and optimize for genuine engagement, the anxiety drops and performance improves. Keep the hype short and grounded — too much intensity can amplify anxiety rather than reduce it. |
| **Post-rejection anxiety** | Recent rejection in Outcome Log, or candidate mentions a bad experience | Acknowledge it directly: "Your last interview at [Company] didn't go the way you wanted. That's done. This is a different company, different interviewers, fresh start." Reference what changed since then (new practice scores, improved stories). Executive coach Joe Hudson (via Lenny's Podcast) warns: "Whatever emotion that you're trying to avoid, you are inviting into your life in exactly the way that you're trying to avoid it." Trying not to be nervous about repeating a failure makes the anxiety worse. Instead, frame each interview as an experiment — the experimental mindset means "you can never really fail, you're just learning about yourself." |
| **Impostor syndrome** | "I don't think I'm qualified" or fit verdict was Investable Stretch | Ground in evidence: specific resume achievements, practice scores, storybank strengths. "The data says you belong in this interview. Let's look at why you were invited." Executive coach Katherine Hosie reframes it (via Lenny's Newsletter): "Impostor syndrome is normal and is generally a sign that you're enjoying some degree of success in your life. If you were pumping gas, you wouldn't be experiencing impostor syndrome." Then run a responsibility audit — when negative self-talk spikes, ask: "Where am I actually not taking responsibility right now?" Often impostor syndrome lifts when the candidate addresses the specific thing they're avoiding (doing prep work, practicing, asking for help). Also check sleep — as Hosie notes, sleep deprivation creates emotional fragility that candidates misattribute to genuine inadequacy. |

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
[Check Interview Loops for saved format data from `prep` or Format Discovery. If the format is a presentation round and `present` was run, pull the key structural decisions and timing calibration from Presentation Prep for the warmup. Tailor the warmup to the format: a presentation round warmup focuses on opening delivery. A system design warmup focuses on scoping out loud. A behavioral screen warmup focuses on story retrieval speed.]
1. Read this hype reel out loud once.
2. [Format-specific drill]: Behavioral → pick your weakest story and deliver the 60-second version out loud. Presentation → deliver your opening 30 seconds out loud. System design → practice scoping a simple problem out loud for 60 seconds. Panel → mentally rehearse switching between interviewer styles.
3. Review the 3x3 above — don't memorize, just refresh.
4. Physical reset: walk, stretch, breathe. Quick option: physiological sigh — two quick inhales through the nose, long exhale (5 seconds). Standard: 4-4-8 breathing — inhale 4, hold 4, exhale 8 (Jonny Miller, Nervous System Mastery, via Lenny's Podcast). Hold something cold (ice water, cold can) to redirect anxiety circuits (Matt Abrahams, Stanford, via Lenny's Podcast). See Breathing & State Management Reference below for the full toolkit.
5. Reframe: "This is a conversation to see if there's mutual fit. I'm also interviewing them." Executive presence coach Tristan de Montebello (Ultraspeaking, via Lenny's Podcast) frames this as "staying in character" — decide who you are in this interview before you walk in. Not performing confidence, but accessing a specific mode: the expert version of yourself for this conversation. As de Montebello puts it: "Speaking is not a specialized skill, it's a meta skill" — the confidence transfers to every interaction.

### Breathing & State Management Reference

These techniques come from multiple experts on Lenny's Podcast. The coach should select the appropriate technique based on the candidate's anxiety profile and the time available:

- **Physiological sigh (5 seconds)**: Two quick inhales through the nose followed by a long exhale. Emergency mid-interview reset — can be done invisibly during a pause (Jonny Miller, Nervous System Mastery).
- **4-4-8 breathing (1-2 minutes)**: Inhale 4 counts, hold 4, exhale 8. The key: exhale must be 2x inhale to activate the parasympathetic nervous system. Miller: "I did 15 minutes of this before a TEDx talk and walked on stage almost cool as a cucumber." Adjust ratio to lung capacity (3-3-6 or 2-2-4 work too).
- **Humming breath**: Full inhale, hum through the nose until the end of the exhale. Releases nitric oxide, stimulates the vagus nerve. Good for calming before clicking into a video call.
- **Cold stimulus**: Hold something cold (ice water, cold can) — sensory input redirects anxiety circuits (Matt Abrahams, Stanford).
- **Visual awareness (invisible, use during live interview)**: Instead of tunnel-vision focus, soften your gaze and become aware of peripheral space — behind you, to the sides, below. Triggers a calming response without anyone noticing (Miller).
- **Pre-interview practice**: Miller emphasizes that these work best when practiced daily for 7-10 days before the interview period begins. "When someone is in that flustered state, remembering to do the practice is the last thing that comes to mind." Daily practice makes it automatic.
- **The "low heart rate" principle**: Sam Lessin (former VP of Product at Facebook, via Lenny's Podcast) frames the meta-goal as "showing up with a low heart rate." When your heart rate is low, you project competence, ease, and trustworthiness. When it's high, you project desperation — regardless of qualifications. Be early, settle your nervous system, enter the room from calm. His reframe: "This isn't your one shot. You'll have other opportunities. Show up with the self-confidence and the calm of abundance."

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
