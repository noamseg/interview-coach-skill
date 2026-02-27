# stories — Storybank Workflow

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
7) Narrative identity — extract your career themes and see how stories connect
```

### Adding Stories — Guided Discovery

When the candidate selects "Add," don't jump straight to STAR format. Most people can't produce stories on command. Use the guided exploration prompts from `references/storybank-guide.md` (peak experiences, challenge/growth, impact/influence, failure/learning) to surface stories first, *then* structure them:

1. Ask one reflective prompt at a time. Wait for the response.
2. Listen for the story embedded in their answer — they may not realize they're telling one.
3. When you hear a promising story, say: "That's a strong story. Let's capture it." Then walk through STAR.
4. After STAR, extract the earned secret (see `references/differentiation.md`).
5. Index it in the storybank table.

Don't skip the reflective prompts and go straight to "tell me a story about leadership." That produces rehearsed, thin stories. The prompts produce real ones.

**Important**: When adding a story, write the full STAR text to the Story Details section in `coaching_state.md` — not just the index row in the Storybank table. The table is a quick-reference index. The Story Details section is where the actual story lives, including Situation, Task, Action, Result, Earned Secret, deploy use-case, and version history. Without the full text, the coach can't help improve the story in a future session without asking the candidate to retell it from scratch.

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

When improving a story, preserve the previous version in the Story Details section:
- In the Version history field, add: "[date] — [brief description of what changed]"
- Update the STAR text in Story Details with the improved version
- This serves two purposes: (1) the candidate can see their progress over time, and (2) if the "improved" version stops landing in interviews, the coach can reference what changed and potentially revert.

### Story Red Team (Directness Level 5)

After `stories add` or `stories improve`, run all 5 Challenge Protocol lenses against the story:

1. **Assumption Audit**: What must be true for this story to land? What interviewer framework is it assuming?
2. **Blind Spot Scan**: What's invisible to the candidate about their own story? What context do they take for granted?
3. **Pre-Mortem**: How does this story fail in a real interview? Where does it lose attention or raise doubt?
4. **Devil's Advocate**: Where does a skeptical interviewer attack? What follow-up questions expose weaknesses?
5. **Strengthening Path**: One specific change that makes it airtight.

At Levels 1-4: Skip. The standard improve diagnostic is sufficient.

### Story Records

See `references/storybank-guide.md` for the full storybank format, column definitions, and skill tags. Every story record must include an Earned Secret field — see `references/differentiation.md` for the extraction protocol.

### Prioritized Gap Analysis

When the candidate selects "Find gaps," don't just list missing competencies — rank them by how much they matter for this candidate's target roles:

1. Cross-reference the candidate's target roles/companies (from `coaching_state.md`) with the storybank's skill coverage. **Check both Primary and Secondary Skills** — a competency may be covered as a secondary skill in an existing story, which changes the gap from "no story" to "Workable coverage" (see `references/story-mapping-engine.md` for fit scoring).
2. For each gap, assess: **Critical** (this competency will definitely be tested and no story exists, even as a secondary skill), **Important** (likely to come up, only weak stories or secondary-skill-only coverage available), **Nice-to-have** (might come up, but won't make or break the interview).
3. For critical gaps, check: can an existing story be reframed to cover this competency (using its secondary skill or an adjacent experience), or does the candidate need to surface a new experience entirely?
4. Prescribe gap-handling patterns (from the Gap-Handling Module) for any competencies where no real story exists.
5. **Cross-reference with active prep briefs**: If the candidate has active prep briefs (from `prep`), check predicted questions against gaps. A gap that maps to a predicted question at a current target company is elevated to Critical regardless of general frequency.

A PM interviewing at Stripe with no "influence without authority" story has a critical gap. The same candidate missing a "technical depth" story has a nice-to-have gap. Rank accordingly.

When adding or improving stories, force specificity on:

- Candidate-specific contribution (not "we" — what did *you* do?)
- Quantified impact (or explicit non-quant reason)
- Tradeoff/constraint detail
- Earned secret extraction and validation (see `references/differentiation.md`)
- One-line deploy use-case

### Rapid-Retrieval Drill (`stories drill`)

See `references/storybank-guide.md` (Rapid-Retrieval Drill section) for the full protocol, scoring criteria, and progression rounds. In brief: 10 rapid-fire questions, 10 seconds each, candidate responds with story ID + opening line. Debrief focuses on retrieval gaps and hesitation patterns. Also available via `practice retrieval`.

### Narrative Identity — Theme Extraction

Requires 5+ stories in the storybank. If fewer exist, redirect: "Narrative identity works best with 5+ stories to find patterns across. You have [N]. Want to add a few more with `stories add` first?"

#### Analysis Protocol

1. Read every story's full STAR text, earned secret, and deploy use-case from `coaching_state.md`.
2. Cluster stories by **underlying theme** — not surface skill. Surface skills are things like "leadership" or "communication." Themes are specific patterns like "building systems where none existed," "translating between worlds that don't naturally talk to each other," or "making unpopular bets that paid off." If the theme could describe a generic candidate, go deeper.
3. Identify 2-3 dominant themes. Most candidates have 2. Three is rare and usually means one is weak.
4. Name the **sharpest edge** — the theme that is most distinctive to this candidate, hardest to replicate, and most likely to make an interviewer remember them.
5. Flag **orphan stories** — stories that don't connect to any theme. These dilute the narrative and may be retirement candidates.
6. Flag **fragile themes** — themes with only 1 story supporting them. One story is an anecdote; two or more is a pattern.
7. Connect to differentiation: themes ARE the candidate's earned perspective made visible across their career arc. A strong narrative identity is how a candidate scores 4-5 on Differentiation consistently — not by forcing earned secrets into individual answers, but by having every answer reinforce the same coherent thesis about who they are.

#### Output Schema

```markdown
## Your Narrative Identity

### Core Themes
1. **[Theme]** — [one-line description of the pattern]. Stories: S###, S###, S###
2. **[Theme]** — [one-line description]. Stories: S###, S###
3. **[Theme]** — [one-line description]. Stories: S###

### Your Sharpest Edge
[Which theme is most distinctive to you — the one an interviewer would remember. How many of your stories currently leverage it vs. how many could. This is your highest-leverage positioning move.]

### Theme Coverage
- Stories reinforcing a theme: __ of __
- Orphan stories (no clear theme connection): [list with S### IDs — consider retiring or reframing]
- Fragile themes (only 1 story): [list — need reinforcement]

### How To Use This
- **In answers**: [Specific advice on connecting answers back to core themes without being heavy-handed]
- **In questions you ask**: [How to ask questions that reinforce your themes]
- **In positioning**: [How themes inform your "why this role / why this company" narrative]

**Recommended next**: `stories improve S###` — strengthen your sharpest-edge stories. **Alternatives**: `stories add`, `practice`, `prep [company]`
```

### Output Schema (per action)

**After `stories add`:**
```markdown
## Story Added: [Title]
- ID: S###
- Primary Skill:
- Earned Secret:
- Strength: [1-5]
- Deploy for: [one-line use case]

## Story Red Team (Level 5 only)
- Assumption: [what must be true for this to land]
- Blind spot: [what you can't see about your own story]
- Failure mode: [how this fails in a real interview]
- Attack surface: [where a skeptic probes]
- Fix: [one change that makes it airtight]

**Recommended next**: `stories improve S###` — strengthen the story based on the red team findings. **Alternatives**: `stories find gaps`, `practice retrieval`, `concerns`
```

**After `stories improve`:**
```markdown
## Story Improved: [Title] (S###)
- Previous strength: __ → New strength: __
- What changed: [brief description]
- Version history updated

## Story Red Team (Level 5 only)
- Assumption: [what must be true for this to land]
- Blind spot: [what you can't see about your own story]
- Failure mode: [how this fails in a real interview]
- Attack surface: [where a skeptic probes]
- Fix: [one change that makes it airtight]

**Recommended next**: `practice` — test the improved story under pressure. **Alternatives**: `stories view`, `stories improve S###`, `analyze`
```

**After `stories find gaps`:**
```markdown
## Storybank Gap Analysis
### Critical Gaps (must fill for target roles)
1. [competency] — No story exists. Recommended: [surface new story / reframe existing S###]
   Gap-handling pattern if asked before a story exists: [Pattern 1-4 from Gap-Handling Module]

### Important Gaps (likely to come up)
1. [competency] — Only weak story (S###, strength __). Recommended: [improve / replace]

### Nice-to-Have (might come up)
1. [competency]

**Recommended next**: `stories add` — fill the highest-priority gap. **Alternatives**: `practice gap`, `prep [company]`
```
