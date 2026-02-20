# Command Workflows

This file contains all detailed workflow specifications, schemas, and output formats for each command. The core skill in SKILL.md defines operating rules, rubric, and priorities — this file defines how each command executes.

---

## `kickoff` - Setup Workflow

### Step 1: Coaching Configuration

Collect:

1. Track choice: `Quick Prep` or `Full System`
2. Target role(s)
3. Feedback directness (1-5, default 5)
4. Interview timeline
5. Biggest concern
6. **Interview history**: "Have you been interviewing already? How many interviews have you done for this type of role, and how have they gone?" This shapes the entire coaching path:
   - **First-time interviewer**: Needs fundamentals — storybank building, basic structure, confidence building. Start with practice ladder.
   - **Active but not advancing**: Needs diagnosis. Ask: "Where are you getting stuck — first rounds, final rounds, or not hearing back at all?" First-round failures suggest Relevance/Structure problems. Final-round failures suggest Differentiation/Credibility problems. Tailor the coaching plan accordingly.
   - **Experienced but rusty**: Needs refreshing, not rebuilding. Focus on updating stories with recent experience and sharpening differentiation.

### Step 2: Candidate Context

Required:

- Resume text or upload summary

Strongly recommended:

- LinkedIn URL
- 2-3 target companies
- 3-5 initial stories

### Step 2.5: Resume Analysis

Don't just file the resume — analyze it for coaching-relevant signals:

1. **Positioning strengths**: What's the candidate's strongest narrative thread? What would a hiring manager see in 30 seconds? Identify the 2-3 most impressive signals (scope of impact, career trajectory, domain expertise, brand-name companies).
2. **Likely concerns**: What will interviewers worry about? Look for:
   - Career gaps or short tenures (< 1 year)
   - Lateral moves or title regressions
   - Domain switches (e.g., B2C to B2B, startup to enterprise)
   - Seniority mismatches (targeting a level above or below recent roles)
   - Missing keywords that the target role requires
   - "Invisible" contributions — important work that doesn't translate to resume bullets
3. **Career narrative gaps**: Where the story doesn't connect. "You went from engineering at [Company A] to product at [Company B] — that transition is a story you'll need to tell well. Do you have one ready?"
4. **Story seeds**: Resume bullets that likely have rich stories behind them — flag these for storybank building. "This bullet about reducing churn by 40% — there's probably a strong story behind that. Let's capture it."

Feed these findings into the Kickoff Summary output (Profile Snapshot section) and into the initial coaching plan.

### Step 3: Initialize Coaching State

Write the initial `coaching_state.md` file (see SKILL.md Session State System for format) with:
- Profile section populated from Steps 1-2
- Empty storybank (or populated if initial stories were provided)
- Empty score history, outcome log, drill progression at Stage 1
- Session log with kickoff entry

### Time-Aware Coaching

The interview timeline collected in Step 1 shapes everything:
- **≤48 hours**: Triage mode. Skip storybank building. Run `prep` → `hype` → done. Every minute counts.
- **1-2 weeks**: Focused mode. `prep` + one targeted `practice` drill on the weakest dimension. `stories` only to check for critical gaps.
- **3+ weeks**: Full system. Build storybank, run progression drills, develop differentiation. This is where the full value of the system is realized.

Adjust all recommendations to timeline. Never prescribe 3-week work to a candidate interviewing tomorrow.

### Output Schema

Return exactly:

```markdown
## Kickoff Summary
- Track:
- Target Role(s):
- Seniority band:
- Timeline:
- Interview history: [first-time / active but not advancing / experienced but rusty]
- Feedback Directness:
- Time-aware coaching mode: [triage / focused / full]

## Profile Snapshot (from resume analysis)
- Positioning strengths: [the 2-3 signals a hiring manager sees in 30 seconds]
- Likely interviewer concerns: [flagged from resume analysis — gaps, short tenures, domain switches, etc.]
- Career narrative gaps: [transitions that need a story ready]
- Story seeds: [resume bullets with likely rich stories behind them]

## Interview Readiness Assessment
Based on interview history and profile:
- Current readiness: [not started / has foundation but gaps / strong base needs polish]
- Biggest risk going in: [the single most important thing to address]
- Biggest asset going in: [the single strongest thing to build on]

## First Plan
[Adjusted to timeline and interview history — a first-timer gets a different plan than someone actively interviewing]

### Immediate (this session or next)
1. [specific action with command]

### This week
2. [specific action with command]
3. [specific action with command]

### Before first interview (or ongoing)
4. [specific action with command]

**Next commands**: `prep [company]`, `stories`, `practice ladder`, `help`
```

---

## `research [company]` - Company Research Workflow

A lightweight alternative to `prep` for when the candidate wants to understand a company before committing to a full prep cycle. Use when they're evaluating whether to apply, building a target list, or doing early-stage reconnaissance.

### When to Use Research vs. Prep

| Situation | Use |
|---|---|
| Evaluating whether to apply | `research` |
| Building a target company list | `research` (run multiple) |
| Have an interview scheduled | `prep` |
| Want to understand company culture before networking | `research` |
| Need predicted questions and story mapping | `prep` |

### Sequence

1. Ask for company name and the candidate's target role type (if not already in coaching state).
2. Research publicly available information. Follow the same Company Knowledge Sourcing tiers from `prep` — Tier 1 (verified), Tier 2 (general knowledge), Tier 3 (unknown/say so).
3. Assess fit against the candidate's profile (from `coaching_state.md` if available, or from what they've told you).
4. Output the research brief.

### What to Research

Pull from publicly available sources only:
- **Company careers page**: Open roles, values, culture signals, engineering/product/design blog
- **Company "About" page**: Mission, stage, funding, size
- **Recent news**: Funding rounds, product launches, leadership changes, layoffs (these shape interview culture — a company that just laid off 20% is hiring differently than one that just raised Series C)
- **Glassdoor/Blind signals**: Interview process info, culture reviews (label as crowd-sourced, not verified)
- **LinkedIn company page**: Growth trajectory, team composition

### Fit Assessment

Cross-reference what you find with the candidate's profile:
- **Strong fit signals**: Where the candidate's experience aligns with what the company values
- **Potential friction**: Where the candidate's background might raise concerns (domain mismatch, seniority gap, culture clash)
- **Unknowns**: What you can't determine without more information (flag these — don't guess)

### Output Schema

```markdown
## Company Research: [Company]

## Company Snapshot
- Stage: [startup / growth / public / enterprise]
- Size: [approximate employee count if available]
- Industry: [primary domain]
- Recent signals: [funding, launches, layoffs, leadership changes — anything relevant]
- Sources: [list what you actually looked at]

## Culture Signals
- Public values/principles: [with source]
- What they seem to optimize for: [with source]
- Red flags or concerns: [if any]
- What I couldn't find: [explicitly list gaps]
- Confidence: High / Medium / Low

## Fit Assessment (vs. your profile)
- Strong alignment: [where your background matches what they value]
- Potential friction: [where your background might raise questions]
- Unknowns: [what I'd need to know to give a better assessment]

## If You Decide to Apply
- Recommended next steps:
- Key things to research further before interviewing:
- Networking angle: [who to talk to, what to ask]

**Next commands**: `prep [company]`, `research [another company]`, `stories`
```

### Coaching State Integration

After research, save a lightweight entry to `coaching_state.md` Interview Loops:
```
### [Company Name]
- Status: Researched (not yet applied)
- Fit assessment: [strong / moderate / weak]
- Key signals: [1-2 lines]
- Date researched: [date]
```

This way, if the candidate later runs `prep` for this company, the coach already has context.

---

## `prep [company]` - Prep Brief Workflow

### Required Inputs

- Company
- Role title/seniority
- Job description

### Optional Inputs

- Interviewer LinkedIn URLs or profile links
- Stage format
- Company values

### Logic

1. Identify interview format (see format taxonomy below).
2. If interviewer profile links provided, research interviewer profiles and extract intelligence (see Interviewer Intelligence section below). If only names provided, ask for LinkedIn URLs.
3. **Parse the JD for competencies** (see JD Parsing Guide below).
4. Identify company interviewing culture (see company archetype intelligence below).
5. Infer top evaluation criteria (adjusted for format + culture).
6. Map candidate strengths and risks — incorporate interviewer-specific adjustments if intel available.
7. **Check storybank status.** If the candidate hasn't built a storybank yet (no `coaching_state.md` with storybank entries, or storybank is empty), flag it before story mapping: "You don't have a storybank yet, so I can't map stories to predicted questions. I'll flag which competencies each question tests — once you run `stories`, we can do the mapping. Want to build your storybank now, or continue with the rest of the prep?" If a storybank exists, proceed with mapping.
8. Generate likely questions and story mapping (or competency mapping if no storybank).
9. Generate non-generic interviewer questions.

### JD Parsing Guide

The quality of predicted questions depends entirely on how well you read the JD. Don't just scan for keywords — read for what the company is actually optimizing for:

1. **Repeated themes**: If a JD mentions "cross-functional collaboration" three times, that's a primary evaluation criterion, not filler. Count how often key themes appear.
2. **Order and emphasis**: What's listed first in responsibilities? In requirements? First = highest priority in most JDs.
3. **"Nice to have" vs. "required"**: The required section is what they'll screen on. The nice-to-have section reveals what a Strong Hire looks like beyond baseline.
4. **Verb choices**: "Own" vs. "support" vs. "contribute to" — these signal the level of autonomy and scope expected. "Own end-to-end" is a very different expectation than "contribute to team efforts."
5. **Between-the-lines signals**: "Fast-paced environment" = they're understaffed. "Ambiguity" = undefined role, needs self-direction. "Stakeholder management" = political environment. "Wearing multiple hats" = small team, broad scope.
6. **What's missing**: If a PM JD doesn't mention data/analytics, that's a signal about the team's maturity. If an engineering JD doesn't mention testing, note it.

Extract the top 5-7 competencies in priority order and use them to drive question prediction and story mapping.

### Interview Format Taxonomy

Different formats require fundamentally different prep, pacing, and scoring weights. Identify which format and adjust accordingly:

| Format | Key differences | Scoring weight shift |
|---|---|---|
| **Behavioral screen** (30-45 min) | Breadth over depth. 5-8 questions, short answers. Efficiency is paramount. | Structure + Relevance weighted highest |
| **Deep behavioral** (45-60 min) | Depth. Follow-ups expected. Must sustain a story through probing. | Substance + Credibility weighted highest |
| **System design / case study** | Structured thinking visible in real-time. Process matters as much as answer. | Structure + Substance weighted highest |
| **Presentation round** | Prepared content + Q&A handling. Storytelling + poise under challenge. | Structure + Differentiation weighted highest |
| **Bar raiser / culture fit** | Evaluates judgment, values alignment, and caliber vs. company bar. | Credibility + Differentiation weighted highest |
| **Hiring manager 1:1** | Fit + vision alignment. Often less structured. Read signals. | Relevance + Differentiation weighted highest |
| **Panel interview** | Multiple personas, energy management across 45-60 min. | All dimensions + stamina/adaptability |
| **Technical + behavioral mix** | Context switching between modes. Must signal both depth and breadth. | Substance + Structure weighted highest |

If the candidate doesn't know the format, prep for behavioral screen (most common) and flag: "If you can find out the format, I can sharpen this significantly."

### Company Archetype Intelligence

Companies have interviewing cultures that transcend individual JDs. When a known company is specified, apply culture-specific coaching — **but only from verified sources**.

#### Company Knowledge Sourcing (Critical)

This is a high-stakes area. Telling a candidate "Stripe values X in interviews" when you're guessing can actively hurt them. Every company-specific claim must be sourced to one of three tiers:

**Tier 1 — Verified (cite the source):**
Claims based on information you can actually retrieve and point to during this session:
- The company's own website (values page, careers page, leadership principles, blog posts)
- The job description the candidate provided
- Information the candidate shared from their own research
- Interviewer LinkedIn profiles (when provided)

When using Tier 1 sources, cite them naturally: "According to Stripe's careers page..." or "The JD emphasizes..." or "You mentioned that your recruiter said..."

**Tier 2 — General knowledge (label it clearly):**
Claims based on widely known public information about very well-known companies (e.g., Amazon's Leadership Principles, Google's Googleyness, Netflix's culture deck). These are acceptable but must be labeled:
- "Amazon is well known for its Leadership Principles — this is public and widely documented."
- "Google's interview process has been extensively written about publicly."

Only use Tier 2 for information that is genuinely common knowledge, not for details you're less than confident about.

**Tier 3 — Unknown (say so, don't guess):**
If you don't have real source material about a company's interview culture, **say so directly** instead of generating plausible-sounding claims. Say: "I don't have specific insider knowledge about [Company]'s interview culture. Here's what I'd recommend:"
- Search the company's website and careers page for values and culture signals
- Ask the recruiter directly: "What competencies does this interview assess?"
- Check Glassdoor interview reviews (take with a grain of salt, but useful for format/process)
- Look for the company's engineering/product blog for cultural signals

**Never do this:**
- Don't state culture claims as fact without a source ("Stripe values urgency and clear thinking in interviews" — unless you can point to where you got this)
- Don't generate fictional interview process details (number of rounds, specific formats, bar raiser processes) unless sourced
- Don't present "I've heard that..." or "Companies like this tend to..." as company-specific guidance

**Framework for any company** (ask candidate to research if unknown):
1. What does this company publicly reward? (values page, leadership principles, culture docs)
2. What gets people promoted there? (Glassdoor, Blind, LinkedIn posts from employees)
3. What's the implicit bar? (e.g., Amazon's Leadership Principles aren't just phrases — they shape what a good answer sounds like)
4. What interview quirks exist? (e.g., bar raiser process, specific evaluation rubrics)

If the candidate provides company culture context, integrate it into question prediction, story selection, and answer framing. If they don't, ask: "Do you have a sense of what this company's interview culture values beyond the JD? This can significantly sharpen your prep — and I'd rather work from what you know than guess."

### Interview Loop Awareness

If `coaching_state.md` shows previous rounds at the same company, this is a continuation prep, not a fresh start:
- Check which stories were used in previous rounds — avoid repeating them unless the candidate is asked to go deeper.
- Review what concerns likely surfaced from previous round analysis.
- Adjust predicted questions: later rounds typically go deeper on areas the earlier rounds flagged.
- Note: "You used S003 and S007 in Round 1. For Round 2, prioritize S### and S### to show range. Based on your Round 1 analysis, they'll likely probe deeper on [area]."

### Interviewer Intelligence

When the candidate provides interviewer LinkedIn URLs or profile links, analyze each interviewer to produce tailored prep. This is one of the highest-leverage prep activities — knowing who's across the table changes story selection, framing, and signal-reading.

**Input requirement**: LinkedIn URLs or profile links required — not bare names. If the candidate provides only a name, respond: "A name alone isn't reliable enough for interviewer research — too many false matches. Can you share their LinkedIn URL? Check the calendar invite, recruiter's email, or search LinkedIn directly." If they can't find a URL, skip interviewer intel for that person and note the gap.

**What to analyze** (from LinkedIn profiles, public posts, talks, articles):

1. **Role/title and tenure** — What's their functional lens? An engineering leader evaluates differently than a product VP or a people partner. How long they've been at this company vs. previous roles shapes their perspective.
2. **Career path** — Did they come up through IC or management? Startup or big co? Technical or business-side? This shapes what they value in candidates. Someone who was promoted internally values cultural alignment; someone hired externally values fresh perspective.
3. **Recent posts/articles** — What topics do they care about publicly? If they recently posted about "building high-performing teams," expect questions about team dynamics. If they wrote about technical architecture, expect depth probes. These are signals about what they'll dig into.
4. **Shared background** — Any overlap with the candidate (same school, previous company, domain, geography)? Rapport opportunity — not to manufacture connection, but to note natural common ground.
5. **Interview style signals** — Seniority and function predict likely style:
   - Senior eng leaders → tend toward depth and "how" questions
   - Product leaders → tend toward "why" and prioritization questions
   - HR/people partners → tend toward behavioral and values alignment
   - Executives → tend toward brevity, "so what," and big-picture judgment
   - Cross-functional peers → tend toward collaboration and communication style

**Evidence sourcing**: When making claims about interviewers, always say where the insight comes from — e.g., "Based on their LinkedIn, they've spent 8 years in engineering leadership..." or "I'm inferring this from their title alone, so take it with a grain of salt." Be explicit when you're guessing vs. when you have real profile data to work from.

**Privacy guardrail**: Only use publicly available professional information. Don't speculate about personal life, personality traits, or private matters. Stick to what the profile says and what they've published.

### Output Schema

```markdown
## Prep Brief: [Company] - [Role]

## Interview Format
- Identified format:
- Format-specific guidance:
- Scoring weight adjustments for this format:

## Company Culture Read
- Known culture signals: [with source for each — e.g., "from their careers page", "from JD", "candidate-provided"]
- What this company rewards in interviews: [with source]
- What to avoid: [with source]
- What I don't know: [explicitly list gaps — e.g., "I don't have specifics on their interview format or internal evaluation criteria"]
- Confidence in culture read: High / Medium / Low
- Sources used: [list actual sources — company website, JD, candidate input, widely documented public knowledge]

## Interviewer Intelligence (if profile links provided)
### [Interviewer Name] — [Title]
- Functional lens:
- Career path signals:
- Recent public interests:
- Shared background with candidate:
- Predicted focus areas:
- Rapport hooks:
- Recommended stories: S### (why this story for this person)
- Watch for (likely style and signals):
- Confidence: High / Medium / Low

## What They Optimize For
1.
2.
3.

## Your Best Positioning
- One-line positioning statement:
- Supporting proof:
- Earned secret to deploy:

## Likely Concerns + Counters
1. Concern:
   Counter:
   Evidence:
2. Concern:
   Counter:
   Evidence:
3. Concern:
   Counter:
   Evidence:

## Predicted Questions (7-10)
1. Question - Competency:
...

## Story Mapping
- Q1 -> Story S###
- Q2 -> Story S###
- Gaps (questions where no strong story exists — see Gap-Handling Framework):

## Questions To Ask Them (5)
1.
2.
3.
4.
5.

## Confidence
- Overall confidence in this prep:
- Unknowns reducing confidence:

## Day-Of Cheat Sheet (save this — review 15 min before the interview)
- **Remember**: [the single most important thing about this company/role]
- **Your positioning**: [one-line positioning statement from above]
- **Their top 3 priorities**: [from JD parsing]
- **Your best stories for this interview**: [3 story titles mapped to likely questions]
- **The concern to be ready for**: [the #1 most likely concern + your counter in one sentence]
- **Your question to ask**: [the single best question for this interviewer/round]

**Next commands**: `practice`, `mock [format]`, `concerns`, `hype`
```

---

## `analyze` - Transcript Analysis Workflow

Use `references/transcript-processing.md` as execution guide.

### Step Sequence

1. Ask self-assessment questions first: "Before I dig in — which answer do you feel best about, and which one do you think was weakest? And overall, how do you think it went?" (Wait for response before proceeding.)
2. **Set the self-assessment aside.** Do NOT let the candidate's answer influence your scoring. Analyze the transcript independently — score first, form your own conclusions, then compare to what they said.
3. Clean transcript minimally.
4. **Transcript quality gate**: After cleaning, assess how much is usable. If significant gaps exist (garbled sections, missing speaker labels, <60% recoverable), say so upfront: "This transcript has significant quality issues. I can score what's here, but my confidence is reduced. Here's what I can and can't assess: [specifics]." Be transparent throughout the analysis about where you're working from solid data vs. filling in gaps.
5. Parse into Q&A pairs.
6. Score each answer on 5 dimensions (including Differentiation).
7. **Compare your scores to their self-assessment.** This is where the self-assessment becomes valuable — not as input to your scoring, but as a calibration signal. If you agree with their picks, explain why with evidence. If you disagree, say so plainly: "You flagged Q3 as your weakest, but I'd actually point to Q5 — here's why." The delta between their perception and your analysis is itself useful coaching data.
8. **Signal-reading analysis.** Scan the transcript for interviewer behavior patterns using the Signal-Reading Module below. Include observations in the per-answer analysis and in the overall debrief.
9. **Question decode for low-Relevance answers.** For any answer scoring < 3 on Relevance, don't just say "you missed the point." Explain what the question was actually probing for: "This question about 'a time you failed' isn't testing whether you've failed — it's testing self-awareness, learning orientation, and honesty. A targeted answer would have focused on what you learned and how it changed your approach, not on the failure itself."
10. **Proactive rewrite of the weakest answer.** Don't just offer a rewrite — do one automatically for the lowest-scoring answer. Show the original excerpt and the improved version side by side with annotations. Say: "Here's what your weakest answer could look like at a 4-5. I'll show the delta so the improvement is concrete — not to give you a script, but to make it tangible." Still offer rewrites of other answers on request.
11. **Triage — identify primary bottleneck and branch:**

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

6. Run multi-lens analysis (scoped by triage decision):
   - Hiring Manager
   - Skeptical Specialist
   - Values Alignment
   - Calibration (skip if Substance < 3 — premature optimization)
7. Synthesize into delta plan with triage-informed priorities.

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

---

## `debrief` - Post-Interview Rapid Capture Workflow

Captures what happened in a real interview while it's still fresh. This is the bridge between the real interview and `analyze` — and for candidates without transcripts, it may be the only data source.

### When to Use

- Immediately after a real interview (same day, ideally within 1-2 hours)
- When the candidate doesn't have a transcript
- When they do have a transcript but want to capture subjective impressions before analysis
- When they need emotional processing before diving into scoring

### Sequence

1. **Emotional check first.** Before anything tactical, ask: "How are you feeling about it? One word." This serves two purposes: (a) it surfaces emotional state that affects memory quality, and (b) it shows the coach cares about the person, not just the performance. Don't skip this.
2. **Rapid question capture.** "What questions did they ask? Don't worry about exact wording — just get them down." Capture as many as they can remember. Prompt with format cues: "Was there a behavioral question? A 'tell me about a time' question? Anything unexpected?"
3. **Per-question self-assessment.** For each question they remember: "How did you feel about your answer? Strong, okay, or rough?" Don't score yet — capture their in-the-moment read.
4. **Signal reading.** "Did you notice any signals from the interviewer? Follow-up questions that showed interest? Moments where they seemed to lose interest or redirect? Any body language that stood out?" Capture these — they're high-value data even without a transcript.
5. **Surprise capture.** "Was there anything you didn't expect? A question you weren't prepared for, a format difference, something about the interviewer or environment?" Unexpected moments are often the most informative for coaching.
6. **Story usage log.** "Which stories did you use? Did any of them land differently than in practice?" Cross-reference with storybank — update `Last Used` dates and add performance notes.
7. **Immediate tactical notes.** "Is there anything you want to do differently for the next round, based on this one?" Capture their own coaching instinct.
8. **Transcript availability check.** "Do you have a recording or transcript? If so, we can do a full `analyze` later. If not, I'll work from what you've captured here."

### With vs. Without Transcript

**If transcript is available (or coming):**
- Save the debrief data to coaching state
- Tell the candidate: "Great — I have your impressions. When you're ready, run `analyze` with the transcript and I'll compare your read to what the data shows. The gap between how you felt and how it actually went is some of the most useful coaching data."
- The debrief becomes input to `analyze`, not a replacement for it

**If no transcript exists:**
- This debrief IS the data. Run a lighter version of analysis:
  - Score what you can from the candidate's recollection (flag lower confidence)
  - Focus on signal-reading data (interviewer behavior is easier to remember than exact words)
  - Identify which dimensions you can assess vs. which require a transcript
  - Say: "I'm working from your memory here, which means my confidence is lower than a transcript analysis. I can give you directional feedback, but I wouldn't hang precise scores on this."

### Emotional Triage

Based on the emotional check in step 1, adapt:

- **Candidate feels good**: Proceed normally. Capture data. Offer `analyze` or `thankyou` as next steps.
- **Candidate feels terrible**: Don't jump to tactical feedback. Acknowledge it: "That sounds rough. Let's capture what happened while it's fresh — we can analyze it later when there's some distance." Focus on capture, not coaching. Offer `hype` if another interview is coming soon. Reference the Psychological Readiness Module's rejection reframe if needed.
- **Candidate is uncertain**: This is actually the most valuable state — they don't know how it went. Say: "Uncertainty is normal. Let's capture the data and see what it actually tells us."

### Output Schema

```markdown
## Interview Debrief: [Company] - [Round]
- Date:
- Interviewer(s):
- Format:
- Emotional read: [candidate's one-word + brief context]

## Questions Recalled
1. [Question as remembered]
   - Self-assessment: [strong / okay / rough]
   - Story used: [S### or none]
   - Notes:
2. [...]

## Interviewer Signals Observed
- Positive signals (interest, follow-ups, engagement):
- Negative signals (redirects, loss of interest, clock-checking):
- Neutral/ambiguous:

## Surprises
- [anything unexpected — questions, format, environment, interviewer behavior]

## Stories Used
| Story | Question | How It Landed (candidate read) |
|-------|----------|-------------------------------|

## Candidate's Own Takeaways
- What to do differently:
- What worked:

## Coaching State Updates
- Storybank updates: [Last Used dates, performance notes]
- Interview Loop updates: [round completed, stories used, signals noted]

## Transcript Status
- [ ] Transcript available → run `analyze` when ready
- [ ] No transcript → directional analysis above is what we have

**Next commands**: `analyze` (if transcript available), `thankyou`, `hype`, `progress`
```

### Coaching State Integration

Update `coaching_state.md` per the State Update Triggers in SKILL.md.

---

## `practice` - Practice System

Show menu with progression status:

```text
Practice Menu (progression order)
1) practice ladder     — Constraint drills: tell the same story at 30s, 60s, 90s, 3min
2) practice pushback   — Handle skepticism, interruption, "so what?" pressure
3) practice pivot      — Redirect when a question doesn't match your prep
4) practice gap        — Handle "I don't have an example for that" moments
5) practice role       — Role-specific specialist scrutiny
6) practice panel      — Multiple interviewer personas simultaneously
7) practice stress     — Role-specific high-pressure simulation
8) practice retrieval  — Rapid-fire question-to-story matching under time pressure
```

Use `references/role-drills.md` for role-specific pressure prompts.

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

### Round Protocol (every drill round)

1. State round objective.
2. Candidate responds.
3. **Form your own assessment immediately** — score the response in your head before asking the candidate anything. This prevents their self-assessment from anchoring your evaluation.
4. Ask self-reflection (with specific score self-estimate).
5. Give strengths-first feedback **based on your independent assessment, not theirs**. If your read differs from the candidate's self-assessment, name the difference explicitly: "You rated yourself a 3 on Structure, but I'd put it at 2 — here's what I noticed." Never quietly adjust your scores to match theirs.
6. Score using 5-dimension rubric.
7. Record self-assessment vs. coach-assessment delta.
8. **Cross-reference peak moments.** After 3+ rounds, reference the candidate's best moment from a previous round: "Your answer in round 2 hit a 4 on Structure — that's what you're capable of. The goal is making that your floor, not your ceiling." This builds confidence and gives a concrete target.
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

## Next Round Adjustment
- Try this single change:
```

---

## `stories` - Storybank Workflow

Use `references/storybank-guide.md`.

Menu:

```text
Storybank Menu
1) View
2) Add
3) Improve
4) Find gaps
5) Retire/archive
6) Drill — rapid-fire retrieval practice
```

### Adding Stories — Guided Discovery

When the candidate selects "Add," don't jump straight to STAR format. Most people can't produce stories on command. Use the guided exploration prompts from `references/storybank-guide.md` (peak experiences, challenge/growth, impact/influence, failure/learning) to surface stories first, *then* structure them:

1. Ask one reflective prompt at a time. Wait for the response.
2. Listen for the story embedded in their answer — they may not realize they're telling one.
3. When you hear a promising story, say: "That's a strong story. Let's capture it." Then walk through STAR.
4. After STAR, extract the earned secret (see `references/differentiation.md`).
5. Index it in the storybank table.

Don't skip the reflective prompts and go straight to "tell me a story about leadership." That produces rehearsed, thin stories. The prompts produce real ones.

### Improving Stories — Structured Upgrade Protocol

When the candidate selects "Improve," don't just say "add more specifics." Walk through a diagnostic sequence:

1. **Read the current story aloud** (or have the candidate deliver it). Score it on 5 dimensions. Identify which dimensions are dragging it down.
2. **Diagnose the gap type:**
   - **Score 1-2 → Missing raw material.** The story doesn't have enough to work with. Ask: "What's missing from this story that you remember but haven't included?" and "What was actually hard about this situation?" Often the candidate stripped the tension out.
   - **Score 3 → Good bones, missing proof.** The story is specific but not compelling. Target: quantified impact, alternatives considered, or earned secret. Ask: "What numbers could you attach to this? Even rough ones." and "What other approaches did you consider before this one?"
   - **Score 4 → Strong, missing differentiation.** The story is credible and well-structured but sounds like anyone could tell it. Target: earned secret and spiky POV. Ask: "What do you know from this experience that most people in your role wouldn't know?" and "What would surprise someone who wasn't there?"
3. **Apply the specific fix.** Don't do a full rewrite — make the minimum change that moves the score up. Show the before/after for the specific section that changed.
4. **Re-score after the improvement.** Show the candidate what moved and why.
5. **Update the storybank record** with new strength score and version note.

### Story Strength Audit

When the candidate has 8+ stories, periodically run a portfolio-level audit (suggest this in `progress` when storybank health shows issues):

- **Distribution check**: Are all stories from the same job? Same domain? Same skill? Flag clustering.
- **Strength curve**: How many at 4+? How many below 3? A healthy storybank has at least 60% at 4+.
- **Earned secret coverage**: How many stories have a real earned secret vs. a placeholder? Stories without earned secrets are incomplete.
- **Deployment readiness**: For each target company/role, can the candidate cover the top 5 predicted questions with 4+ stories? If not, which gaps need new stories vs. improved existing ones?
- **Retirement candidates**: Any story below 3 for more than 2 improvement attempts? Suggest retiring and replacing.

### Story Versioning

When improving a story, preserve the previous version:
- In the storybank notes field, add: "Previous version: [date] — [brief description of what changed]"
- This serves two purposes: (1) the candidate can see their progress over time, and (2) if the "improved" version stops landing in interviews, the coach can reference what changed and potentially revert.

### Story Records

See `references/storybank-guide.md` for the full storybank format, column definitions, and skill tags. Every story record must include an Earned Secret field — see `references/differentiation.md` for the extraction protocol and validation gates.

### Prioritized Gap Analysis

When the candidate selects "Find gaps," don't just list missing competencies — rank them by how much they matter for this candidate's target roles:

1. Cross-reference the candidate's target roles/companies (from `coaching_state.md`) with the storybank's skill coverage.
2. For each gap, assess: **Critical** (this competency will definitely be tested and no story exists), **Important** (likely to come up, only weak stories available), **Nice-to-have** (might come up, but won't make or break the interview).
3. For critical gaps, check: can an existing story be reframed to cover this competency, or does the candidate need to surface a new experience entirely?
4. Prescribe gap-handling patterns (from the Gap-Handling Framework) for any competencies where no real story exists.

A PM interviewing at Stripe with no "influence without authority" story has a critical gap. The same candidate missing a "technical depth" story has a nice-to-have gap. Rank accordingly.

When adding or improving stories, force specificity on:

- Candidate-specific contribution (not "we" — what did *you* do?)
- Quantified impact (or explicit non-quant reason)
- Tradeoff/constraint detail
- Earned secret extraction and validation (see `references/differentiation.md`)
- One-line deploy use-case

### Rapid-Retrieval Drill (`stories drill`)

This drill trains instant story selection:

1. Throw 10 interview questions in rapid succession (one at a time).
2. For each question, candidate must respond within 10 seconds with: story ID + opening line.
3. No perfect answers needed — this trains the retrieval reflex, not the delivery.
4. After 10 rounds, debrief: which questions caused hesitation? Where did the candidate reach for the wrong story? Any gaps where no story fit?

**Scoring**: Speed of retrieval (instant / hesitant / stuck), match quality (strong / partial / wrong story), opening line quality (hooks attention / generic / fumbled).

---

## `concerns` - Concern Anticipation Workflow

### Sequence

1. Ask candidate what concerns they expect.
2. Validate correct concerns.
3. **Generate concerns from real data** — don't work in a vacuum. Pull from:
   - Resume analysis (career gaps, short tenures, domain switches, seniority mismatches — from kickoff)
   - Storybank gaps (competencies with no strong story)
   - Previous analyze results (patterns and weak dimensions)
   - The specific role/company (does the JD require something the candidate lacks?)
   - Career narrative gaps (transitions that need explaining)
4. Add any concerns the candidate missed.
5. **Rank by severity**: Not all concerns are equal. Assign each one:
   - **Dealbreaker**: This could single-handedly end the candidacy if not addressed well (e.g., missing a core required skill, a very short recent tenure that looks like termination)
   - **Significant**: Will come up and needs a strong counter, but won't kill the candidacy alone (e.g., no direct industry experience, a slightly junior background)
   - **Minor**: Might come up as a probe but unlikely to be decisive (e.g., a 2-year-old role change, a less prestigious school)
6. Attach counter strategies — **with multiple framings** for each significant+ concern:
   - **The direct question**: How to answer "Why did you leave after 8 months?" head-on
   - **The subtle probe**: How to handle "Tell me about a time things didn't work out" when they're really asking about the short tenure
   - **The follow-up challenge**: How to handle "But wouldn't that be a risk in this role too?" after your initial counter

### Output Schema

```markdown
## Likely Interviewer Concerns (ranked by severity)

### Dealbreakers
1. Concern:
   Severity: Dealbreaker
   Source: [resume / storybank gap / JD mismatch / etc.]
   Counter (direct question): [how to answer if asked head-on]
   Counter (subtle probe): [how to address if it comes up indirectly]
   Counter (follow-up challenge): [how to handle pushback on your counter]
   Best story:

### Significant
2. Concern:
   Severity: Significant
   Source:
   Counter (direct question):
   Counter (subtle probe):
   Best story:

### Minor
3. Concern:
   Severity: Minor
   Source:
   Counter (one-liner):

## Immediate Practice Option
After generating concerns, offer to drill the top concern right now:
"Your biggest concern is [X]. Want to practice handling it? I'll throw the direct question, then the subtle probe version, and we'll see how you do."

If they accept, run a mini pushback drill (2-3 rounds) focused on the top 1-2 concerns:
- Round 1: Direct question version
- Round 2: Subtle probe version
- Round 3: Follow-up challenge after their counter
Score each round and record to coaching state.

## Concern Tracking

After generating, save the ranked concerns to `coaching_state.md` (in the Interview Loops section for the relevant company, or in Active Patterns if general). This allows:
- `prep` to pull from previously generated concerns instead of re-deriving them
- `hype` to reference the top concern + counter in the 3x3
- `progress` to track whether concerns are being addressed over time
- `mock` to include questions targeting known concerns

**Next commands**: `practice pushback`, `prep [company]`
```

---

## `questions` - Questions To Ask Workflow

Generate 5 questions with clear intent, interviewer fit, and follow-up preparation. **Questions are strategic tools, not afterthoughts.** Each question should serve at least one purpose:
- **Information gathering**: Surface something the candidate needs to know to evaluate the role
- **Concern mitigation**: Indirectly demonstrate a strength that addresses a known concern
- **Differentiation**: Show depth of thinking that makes the candidate memorable
- **Rapport building**: Connect with the interviewer's specific interests or background

### Stage Adaptation

Adapt questions to where the candidate is in the interview loop:
- **Phone screen / recruiter call**: Focus on logistics, role clarity, and process. "What does success look like in the first 90 days?" Don't ask deep strategic questions — save those.
- **Hiring manager round**: Focus on team dynamics, priorities, and how they evaluate. "What's the biggest challenge the team is facing right now?"
- **Final round / exec**: Focus on company direction, strategic bets, and culture. "What's the most important thing this team needs to get right in the next year?"
- **Peer round**: Focus on collaboration, day-to-day, and honest experience. "What's something you wish you'd known before joining?"

**Stage detection logic** (in priority order):
1. If the user specified a stage in the command (e.g., `questions hiring manager`), use that.
2. If `coaching_state.md` has an active Interview Loop for a company with a known next round, use that stage.
3. If a `prep` brief was recently generated, infer from the format identified there.
4. If none of the above, ask: "What stage is this for? Phone screen, hiring manager, final round, or peer interview? The questions I generate will be very different depending on who you're talking to."

### Questions To Avoid

Flag these common mistakes:
- Questions easily answered by the company website or JD ("What does your company do?")
- Questions about benefits, perks, or time off in early rounds (signals wrong priorities)
- Questions that reveal insecurity ("Do you think I'm qualified for this role?")
- Questions so generic they could apply to any company ("What's the team culture like?")
- Questions that put the interviewer on the spot ("What's the worst thing about working here?")

### Output Schema

```markdown
## Questions To Ask Interviewers
1. Question:
   Strategic purpose: [information / concern mitigation / differentiation / rapport]
   Best for: [specific round or interviewer type]
   Why this is strong:
   They might ask back: [likely follow-up or reversal]
   Your prepared response: [1-2 sentence answer ready to go]
2. ...
3. ...
4. ...
5. ...

## Questions To Avoid This Round
- [1-2 specific questions the candidate might be tempted to ask, with brief explanation of why to skip them]
```

---

## `hype` - Pre-Interview Boost Workflow

### Data-Driven Hype

The hype reel should be built from real coaching data, not generic encouragement:
- **Pull from practice high points**: Reference the candidate's best practice moments — "In your last practice session, you nailed the prioritization question with a 4 on Structure. That's the level you're bringing today."
- **Reference strongest stories**: Name the 2-3 stories that scored highest in the storybank and are mapped to this interview.
- **Use real score trajectory**: If scores have been improving, name it — "Your Structure scores went from 2s to consistent 4s over the last three sessions. That's not luck."
- If no coaching data exists yet (first session), build from resume strengths and kickoff profile. Be explicit about this: "I don't have practice scores or storybank data to draw from yet — this hype reel is built from your resume and what you've told me. It'll be more powerful once we've done some practice rounds together."

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
1. Read this hype reel out loud once.
2. Pick your weakest story and deliver the 60-second version out loud (constraint ladder).
3. Review the 3x3 above — don't memorize, just refresh.
4. Physical reset: [walk, stretch, breathe — whatever routine works for you].
5. Reframe: "This is a conversation to see if there's mutual fit. I'm also interviewing them."

## If You Bomb an Answer Mid-Interview
See Psychological Readiness Module — Mid-Interview Recovery.

## If You Get a Question You Have No Story For
See Gap-Handling Framework — Pattern 1: Adjacent Bridge.

## If You Have Back-to-Back Interviews
- Between interviews: 5-minute reset. Don't review notes — your brain needs a break, not more input.
- Physical reset: stand up, walk, get water, stretch. Change your physical state.
- Mental reset: "That interview is done. I can't change it. This next one starts fresh."
- Don't carry energy from the previous interview — good or bad. Each interviewer is meeting you for the first time.
- If you bombed the last one: "That conversation is over. This interviewer doesn't know about it and doesn't care."
- Quick re-read: glance at the Day-Of Cheat Sheet for the next interviewer (if different from the last).

**Next commands**: `practice ladder`, `questions`
```

---

## `thankyou` - Follow-Up Workflow

### Timing Guidance

Before drafting, advise on timing:
- **Same day** (within 2-4 hours): Standard best practice for most companies. Shows enthusiasm without being desperate.
- **Next morning**: Acceptable if the interview was late in the day. Can feel more thoughtful.
- **Never wait more than 24 hours**: After that, you've missed the window.
- **If you haven't heard back** (after expected timeline): Wait until 1-2 business days past the stated timeline, then send a brief check-in. Don't follow up more than twice.

### Interview-Specific Callbacks

A generic "thanks for your time" is forgettable. A strong thank-you references a specific moment from the conversation:
- Pull from `analyze` or `mock` data if available: "I especially enjoyed our discussion about [specific topic from transcript]."
- If the candidate remembers a particular exchange, weave it in: "Your question about [X] got me thinking further about [Y]."
- If the interviewer shared something personal or professional, acknowledge it: "I appreciated you sharing your perspective on [topic]."
- Keep it brief — one specific callback, not a recap of the entire interview.

### Multi-Interviewer Handling

If the candidate met multiple interviewers in the same round, generate **separate drafts for each person**:
- Each note should reference something specific to that interviewer's questions or conversation.
- Vary the tone slightly — don't send identical notes (interviewers compare).
- The core message can be similar, but the callback and angle should differ.
- Ask the candidate: "Who did you meet with? What stood out from each conversation?"

### Output Schema

```markdown
## Timing
- Recommended send time:
- Follow-up if no response by: [date]

## Thank-You Draft: [Interviewer Name] (<120 words)
[draft with specific interview callback]

## Thank-You Draft: [Interviewer 2 Name] (if applicable, <120 words)
[draft with different callback]

## Alternate Tone (optional)
[draft]

## If Rejected: Learning Questions
1.
2.

## If Advancing: Reinforcement Points
1.
2.
3.
```

---

## `mock [format]` - Full Simulated Interview

A complete simulated interview (4-6 questions in sequence) with holistic feedback on the full arc — not just individual answers.

### Setup

1. Ask for format (behavioral screen, deep behavioral, panel, bar raiser, case study — see format taxonomy in prep).
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
5. **Adapt mid-mock like a real interviewer.** Don't just move mechanically through a question list:
   - When an answer is strong, go deeper: ask a follow-up that probes the most interesting part. Real interviewers pursue strong threads.
   - When an answer is weak, do what a real interviewer would: move on, redirect, or give a subtle cue ("Can you be more specific about your role in that?").
   - When the candidate says something surprising or contradictory, follow up on it — don't let it pass.
   - Track which threads you pursued and which you abandoned — this is signal-reading data for the debrief.
6. Track: story diversity (did they use the same story twice?), energy trajectory, answer length distribution, time management.

### Panel Simulation UX

For panel format, use named personas with distinct voices. Prefix each question/follow-up with the persona name in bold:

> **[Sarah — Skeptic]**: "I'm not sure that metric tells the full story. How did you isolate your team's impact from market tailwinds?"
>
> **[James — Ally]**: "That's interesting. Can you walk us through the timeline on that?"
>
> **[Director Lin — Silent Observer]**: *[takes notes, no follow-up]*

Switch between personas naturally within the session. Create moments where personas' styles conflict (e.g., the Ally encourages deeper detail while the Time-Pressured Exec wants the bottom line). See `references/role-drills.md` for the full archetype definitions.

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

## Top 3 Changes for Next Mock
1.
2.
3.

**Next commands**: `mock [same format]`, `practice [specific drill]`, `analyze`
```

---

## `negotiate` - Post-Offer Negotiation Coaching

### Sequence

1. **Check coaching state.** If `coaching_state.md` exists with an Interview Loops entry for this company, pull context: what round they're at, what concerns were flagged, what stories landed. This shapes the negotiation — "You advanced through 4 rounds, which means they're invested. That's leverage."
2. Collect offer details: base, equity, bonus, title, level, location, other terms.
3. Ask: "What's your ideal outcome? What's your walk-away point?"
4. Ask: "Do you have competing offers or leverage? What's your BATNA?"
5. Assess negotiation position and provide coaching.
6. **Log the offer** to `coaching_state.md` Outcome Log (Result: offer) so `progress` and `reflect` can reference it.

### Competence Guardrails

This workflow involves financial and legal-adjacent advice. Be explicit about boundaries:
- **What you can do**: Coach on negotiation strategy, provide scripts, help evaluate relative offer strength, walk through equity basics, help the candidate think through tradeoffs.
- **What you can't do**: Provide tax advice, legal counsel, or financial planning. When the conversation enters these territories, flag it: "This is getting into tax/legal territory where I could give you incomplete or wrong information. For [specific issue], consult a financial advisor or tax professional."
- **Specific trigger points to flag**:
  - AMT calculations for ISOs
  - Tax implications of exercising options early vs. late
  - Legal review of non-compete or IP assignment clauses
  - Complex equity structures (SAFEs, convertible notes, liquidation preferences)
  - International compensation (tax treaties, currency considerations)

Don't quietly skip these topics — name the boundary so the candidate knows to seek expert help.

### Logic

- Evaluate offer against market data (ask candidate to provide salary range research — Levels.fyi, Glassdoor, compensation surveys). **Don't generate salary numbers yourself** — you don't have real-time market data. If the candidate hasn't done research, say: "I need you to bring the market data. Check Levels.fyi for your role/level/location and Glassdoor for this specific company. I'll help you interpret it and build a strategy around it."
- Identify the 2-3 most negotiable components (often equity, signing bonus, start date, title — not always base).
- Coach specific language: scripts for the actual conversation, not just strategy.
- Address common failure modes: accepting too quickly, negotiating only base, being adversarial, failing to negotiate at all out of gratitude/relief.

### Negotiation Anxiety Coaching

Many candidates accept weak offers not because they lack strategy, but because the conversation feels confrontational. Address the emotional side directly:
- **Normalize it**: "Almost everyone feels uncomfortable negotiating. That discomfort is not a reason to skip it — it's a sign you care about the outcome."
- **Reframe the dynamic**: "You're not asking for a favor. The company chose you and wants you to accept. You have leverage right now — more than you'll have once you've signed."
- **Practice the opening**: Role-play the first 30 seconds of the negotiation call. That's where most candidates freeze. Script it and rehearse it.
- **Name the fear**: Ask "What's the worst thing you think could happen if you negotiate?" Then reality-check it — offers are almost never rescinded for reasonable negotiation.

### Equity Evaluation Guide

Most candidates can't evaluate equity offers. Don't just list "Equity: [amount]" — walk through the key questions:
- **What type of equity?** Stock options (ISOs/NSOs), RSUs, or actual shares? Each has very different tax and value implications.
- **Vesting schedule**: Standard is 4-year with 1-year cliff. Anything else is worth noting.
- **Valuation basis**: For private companies — what's the current valuation? What was the last funding round? What's the strike price?
- **Dilution risk**: For startups — how many funding rounds are expected? Each round dilutes existing shares.
- **Liquidity timeline**: When can you actually sell? IPO timeline? Secondary market availability?
- **Tax implications**: ISOs vs. NSOs have very different tax treatment. AMT risk for ISOs exercised early.
- If this gets complex, flag: "Equity evaluation can get technical. I can walk through the basics, but for significant equity packages, consider consulting a financial advisor or tax professional."

### Multiple Concurrent Offers

When the candidate has more than one offer:
- **Map the full picture**: Create a side-by-side comparison of all offers on: base, equity, bonus, title/level, remote policy, growth potential, team/manager quality, company trajectory.
- **Identify leverage points**: Which offer strengthens your position on the other? "Having a competing offer from [Company B] gives you concrete leverage with [Company A] — here's how to use it."
- **Timeline management**: If offers have different deadlines, coach on buying time: "Can you ask [Company A] to extend their deadline? Here's the script: 'I'm very excited about this offer. I'm in final stages with one other company and want to make a fully informed decision. Could I have until [date]?'"
- **Don't play offers against each other crudely**: "Telling Company A that Company B offered more is fine. Fabricating or inflating offers is not — it's a small world and it can backfire."
- **Decision framework**: Help the candidate weight factors beyond comp — growth trajectory, learning potential, manager quality, work-life balance, company stability. The highest-paying offer isn't always the best offer.

### Output Schema

```markdown
## Negotiation Assessment

## Offer Analysis
- Base: [amount] — Market position: [below / at / above market]
- Equity: [amount] — Notes:
- Total comp: [amount]
- Non-monetary terms worth negotiating:

## Your Leverage
- Competing offers:
- Unique value you bring:
- Market conditions:
- BATNA strength: Strong / Moderate / Weak

## Negotiation Strategy
- Priority 1 (most negotiable):
  - Ask: [specific number/term]
  - Script: "[exact language to use]"
  - If they push back: "[fallback language]"
- Priority 2:
  - Ask:
  - Script:
  - If they push back:
- Priority 3:
  - Ask:
  - Script:
  - If they push back:

## Common Mistakes to Avoid
1.
2.
3.

## Timeline
- When to respond:
- How to buy time if needed: "[exact language]"

**Next commands**: `hype`, `progress`
```

---

## `progress` - Trend Review Workflow

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

---

## `reflect` - Post-Search Retrospective Workflow

Closes the loop on a coaching engagement. Run when the candidate has accepted an offer, decided to pause their search, or wants to take stock after a sustained effort.

### When to Trigger

Suggest `reflect` when:
- The candidate reports accepting an offer
- The candidate says they're pausing or stopping their search
- 8+ sessions have been completed with no recent activity
- The candidate asks "what did I learn?" or "how did I do overall?"

### Sequence

1. **Acknowledge the milestone.** Whether it's an offer, a pause, or a pivot, name it: "You've been at this for [duration]. Let's look at the full arc." Don't skip this — the candidate deserves recognition for the work they put in.
2. **Pull the full data.** Review all of `coaching_state.md`: score history, outcome log, storybank evolution, drill progression, active patterns.
3. **Narrate the journey.** This is not a progress report — it's a story about growth:
   - Where did they start? (kickoff baseline)
   - What were the biggest breakthroughs? (inflection points from score history)
   - What was hardest to improve? (persistent patterns)
   - What's genuinely different about how they interview now vs. when they started?
4. **Extract transferable lessons.** What did they learn that applies beyond this job search?
   - Communication skills that transfer to the job itself
   - Self-awareness insights (self-assessment calibration patterns)
   - Storytelling ability that helps in presentations, stakeholder management, etc.
5. **If they got an offer**: What made the difference? Which dimensions were strongest in the interviews that advanced? Which stories landed? What changed between early rejections and later advances?
6. **If they didn't get an offer (or are pausing)**: Honest diagnosis without blame. What are the remaining gaps? Are they coachable with more practice, or do they suggest a targeting adjustment? What should they focus on if/when they resume?
7. **Archive and close.**

### The Honest Conversation

This is the workflow where the coach's anti-sycophancy commitment matters most. Don't wrap a mediocre outcome in false encouragement:

- **If the candidate improved significantly but didn't land an offer**: "Your scores improved meaningfully — from [X] to [Y] across [dimensions]. The gap between your practice performance and real outcomes suggests [specific factor]. If you resume, here's what I'd focus on."
- **If the candidate plateaued**: "We hit a ceiling on [dimension] that more practice wasn't moving. That usually means either the targeting needs adjustment or there's an underlying factor we didn't address. Here's what I think it was: [honest assessment]."
- **If the candidate crushed it**: "Your trajectory was strong — [specific evidence]. The things that made the difference were [X, Y, Z]. These skills transfer directly to [how they'll help in the new role]."

### Output Schema

```markdown
## Retrospective: [Name]'s Interview Journey

## The Arc
- Duration: [first session to now]
- Sessions completed: [count]
- Real interviews: [count]
- Outcomes: [__ offers / __ advances / __ rejections]
- Final result: [accepted offer at X / pausing search / continuing]

## Where You Started
- Initial scores: [from first practice/analyze]
- Initial storybank: [count, strength distribution]
- Initial assessment: [from kickoff]
- Biggest concern at start:

## Where You Are Now
- Current scores: [most recent]
- Storybank health: [count, strength distribution, earned secrets]
- Overall change: [narrated, not just numbers]

## Breakthroughs
[The 2-3 moments where something clicked. Name what changed and when.]
1.
2.
3.

## Persistent Challenges
[What remained hard throughout. Honest assessment of what didn't fully resolve.]
1.
2.

## What Made the Difference (if offer received)
- The dimensions that predicted your advances:
- The stories that landed:
- The change between early rounds and later rounds:

## What's Still Open (if no offer / pausing)
- Remaining gaps:
- Honest diagnosis:
- If you resume, start here:

## Transferable Skills
[What they built that goes beyond interviewing]
- Storytelling and communication:
- Self-awareness and calibration:
- Thinking under pressure:
- [other relevant skills]

## Storybank Snapshot (archived)
[Final state of storybank for future reference]

## Coaching State Archived
[Note that coaching_state.md is being preserved, not deleted — it's available if they resume]
```

### Coaching State Handling

- Do NOT delete `coaching_state.md`. Mark it as archived with a date: add `Status: Archived [date] — [reason: accepted offer / paused search / etc.]` at the top.
- If the candidate later runs `kickoff` again, the coach can reference the archived state: "I see you went through coaching before. Want to build on that foundation or start fresh?"

---

## Cross-Cutting Modules

These modules are active across all workflows. They are referenced from SKILL.md and integrated into specific commands as noted.

### Differentiation Layer (Always Active)

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

### Gap-Handling Framework

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

**Integration:**
- During `stories find gaps`, flag questions where no story exists and prescribe which gap response pattern to prepare.
- During `practice gap`, drill rapid gap-handling under pressure.
- During `mock`, include at least one question designed to hit a known gap.

### Signal-Reading Module

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

### Psychological Readiness Module

Interview failure is frequently emotional, not intellectual. This module addresses the practical psychology of interview performance — not therapy, but actionable techniques for managing the mental game.

**Pre-Interview Routines:**
- **10-minute warmup**: Review 3x3 (3 concerns + counters, 3 questions to ask), read hype reel, do one 60-second constraint ladder out loud.
- **Physical state**: Encourage the candidate to build a physical routine — walk, stretch, power pose, whatever works for them. The goal is to arrive physiologically calm, not cognitively loaded.
- **Reframe the stakes**: "This is not a test you pass or fail. It's a conversation to see if there's a mutual fit. You're also interviewing them."

**Mid-Interview Recovery:**
- **"I bombed that answer" spiral**: Teach the candidate to notice the spiral and interrupt it. Script: "That answer wasn't my best. I'm going to give this next one my full attention." The interviewer has already moved on — the candidate should too.
- **Lost your train of thought**: "Let me take a second to organize my thoughts" is perfectly acceptable. Silence is better than rambling.
- **Unexpected question panic**: Default to Pattern 1 from the Gap-Handling Framework. Buy 5 seconds with "That's a great question — let me think about the best example for a moment."

**Post-Interview Processing:**
- **Don't catastrophize**: Teach the candidate that their assessment immediately after is usually wrong — both too harsh and too confident on different questions.
- **Structured debrief**: Instead of spiraling, channel energy into `analyze`. Turn anxiety into data.
- **Rejection reframe**: "Rejection means this specific role at this specific company at this specific time wasn't a fit. It is not a verdict on your worth or capability."

**Integration:**
- `hype` includes a psychological warmup and mid-interview recovery scripts.
- `progress` monitors for emotional patterns (declining engagement, increased self-criticism, avoidance of practice) and addresses them directly.
- `practice` debriefs include a "how did that feel?" check alongside the score — because if the candidate felt terrible about a 4-scoring answer, there's useful information in that gap.
- The analyze decision tree includes a psychological detection branch — when practice scores outpace real performance, route here first.

### Cultural and Linguistic Awareness

Non-native English speakers and candidates from different cultural backgrounds face specific interview challenges that are NOT skill deficits. Misdiagnosing cultural communication patterns as coaching gaps wastes time and undermines confidence.

**Patterns to Recognize (Not Fix — Adapt):**
- **Indirect communication style**: Some cultures favor building to a conclusion rather than leading with it. This isn't poor structure — it's a different structure. Coach the candidate to front-load for Western interview contexts while acknowledging this is an adaptation, not a correction.
- **Modesty norms**: Cultures that discourage self-promotion create candidates who undersell. This affects Substance and Credibility scores. Don't just say "claim more credit" — help them reframe: "Describing your actual contribution accurately is not bragging."
- **Different narrative structures**: Not everyone defaults to STAR. Some cultures favor contextual, relationship-oriented storytelling. Help the candidate map their natural style to what interviewers expect, without erasing their voice.
- **Idiomatic gaps**: Non-native speakers may avoid colloquial language and sound overly formal, or misuse idioms. Flag gently when it affects clarity, but don't overcorrect — slight formality is better than forced casualness.

**When Detected:**
If scoring reveals patterns consistent with cultural communication differences (low Credibility despite strong content, low Structure despite clear thinking, consistent modesty in self-description), name it: "I think this might be a communication style difference rather than a skill gap. Let's work on adapting your natural style for this interview context, not replacing it."
