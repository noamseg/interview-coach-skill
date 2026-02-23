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

See `references/storybank-guide.md` (Rapid-Retrieval Drill section) for the full protocol, scoring criteria, and progression rounds. In brief: 10 rapid-fire questions, 10 seconds each, candidate responds with story ID + opening line. Debrief focuses on retrieval gaps and hesitation patterns.
