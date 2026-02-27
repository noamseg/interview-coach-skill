# kickoff — Setup Workflow

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

### Step 2.6: Target Reality Check

After resume analysis, cross-reference the candidate's profile against their stated target role(s). This is NOT a full fit assessment — it's a quick sanity check that fires only when clear mismatches are visible from the resume alone.

**Fire the check if any of these are true:**
- Seniority gap of 2+ levels (e.g., IC targeting VP, or junior targeting Staff)
- Zero domain experience for a domain-specific role (e.g., no healthcare experience targeting a healthcare PM role at a regulated company)
- Function switch without an obvious bridge (e.g., marketing → engineering, with nothing on the resume connecting the two)
- Target role requires hard skills the candidate demonstrably doesn't have (e.g., "5+ years of ML experience required" with no ML on resume)

**When triggered**, surface it directly but without gatekeeping:
"Looking at your resume against your target of [role], I want to flag something: [specific gap]. This doesn't mean you shouldn't go for it — but it means we should build a deliberate strategy for addressing this gap. Want to talk through your thinking on this target, or should we proceed and build the strongest case possible?"

**When NOT triggered**, say nothing. Don't manufacture concerns. Most candidates have realistic targets.

**If the candidate has multiple targets**, check each one. It's common for one target to be a strong fit and another to be a stretch — name this: "Your [Role A] target looks like a natural fit. Your [Role B] target is more of a stretch because [reason]. Both are worth pursuing, but they need different prep strategies."

### Step 3: Initialize Coaching State

Write the initial `coaching_state.md` file (see SKILL.md Session State System for format) with:
- Profile section populated from Steps 1-2
- Resume Analysis section populated from Step 2.5 output (positioning strengths, likely concerns, career narrative gaps, story seeds). This is critical — every downstream command (`concerns`, `prep`, `stories`, `hype`) benefits from having the resume analysis persisted. Don't lose this work.
- Empty storybank (or populated if initial stories were provided — if initial stories are provided, write full STAR text to the Story Details section)
- Empty score history, outcome log, drill progression at Stage 1
- Empty Active Coaching Strategy (will be populated after first `analyze` or `practice`)
- Empty Meta-Check Log table
- Empty Interview Loops section (will be populated by `research` or `prep`)
- Session log with kickoff entry
- Coaching Notes with any relevant observations from the kickoff conversation (e.g., interview anxiety, communication style preferences, emotional state about the job search)

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
- Target fit assessment: [realistic / stretch — details below / flagged concerns — see below]
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

## Target Reality Check (only if concerns flagged)
- Target: [role]
- Gap identified: [specific gap]
- Gap type: [seniority / domain / function switch / hard skill]
- Recommendation: [proceed with gap-bridging strategy / consider alternative targets / discuss]

## First Plan
[Adjusted to timeline and interview history — a first-timer gets a different plan than someone actively interviewing]

### Immediate (this session or next)
1. [specific action with command]

### This week
2. [specific action with command]
3. [specific action with command]

### Before first interview (or ongoing)
4. [specific action with command]

**Recommended next**: `[command]` — [reason based on timeline and interview history]. **Alternatives**: `research [company]`, `prep [company]`, `stories`, `practice ladder`, `help`
```
