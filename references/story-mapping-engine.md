# Story Mapping Engine

Consolidates story mapping logic into a single protocol. Referenced by `prep` (step 8), `stories` (gap analysis), and `progress` (storybank health).

---

## Section 1: Story-Question Fit Scoring

Replace bare `Q1 -> S###` with a 4-level fit classification:

| Fit Level | Definition |
|---|---|
| **Strong Fit** | Primary skill matches the competency being tested. Story strength 4+. Domain aligns with the target company/role. Earned secret is relevant to the question. |
| **Workable** | Secondary skill matches the competency, OR primary skill matches but story strength is 3, OR domain is adjacent but not direct. Can work with framing guidance. |
| **Stretch** | No direct skill match but the story can be reframed to address the competency. Story strength 2+. Requires significant bridging in delivery. |
| **Gap** | No story addresses this competency at any fit level. Trigger gap-handling protocol (see Gap-Handling Module in `references/cross-cutting.md`). |

### Fit Scoring Factor Priority Stack

When evaluating a story-question match, weigh these factors in order:

1. **Competency match** (highest weight) — Primary skill match > Secondary skill match > Reframe match. A story whose primary skill directly addresses the tested competency is always preferred.
2. **Strength score** (high weight) — Stories rated 4-5 > 3 > 2. A strength-5 story with a secondary skill match may outperform a strength-3 story with a primary skill match.
3. **Company/role alignment** (medium weight) — Does the story's domain match the target company? Is the earned secret relevant to what this company values? Stories from the same industry or with transferable context get a boost.
4. **Freshness** (medium weight) — Has this story been used in prior rounds at this company? Has it been used 3+ times in the current job search? Fresh stories signal range.
5. **Variety** (portfolio constraint) — Applied at the portfolio level, not per-question. Penalizes using the same story twice in one interview prep.

### Mapping Output Format

For each question-story mapping, state:
- **Fit level**: Strong Fit / Workable / Stretch / Gap
- **Why**: One line explaining the match (e.g., "Primary skill (leadership) directly matches competency. Strength 4. Domain aligned (B2B SaaS).")
- **Bridging guidance** (Workable/Stretch only): How to frame the story to better address the competency. (e.g., "Foreground the cross-functional coordination element — it's a secondary skill in this story but it's what the question is testing.")

---

## Section 2: Portfolio Optimization Protocol

7-step process replacing question-by-question mapping:

### Step 1: Generate Candidate Mappings
For each predicted question, identify ALL stories that could work (Strong Fit, Workable, or Stretch). Build a matrix:

```
           Q1    Q2    Q3    Q4    Q5    Q6    Q7
S001       SF    --    W     --    --    St    --
S002       --    SF    --    W     --    --    --
S003       W     --    SF    SF    --    --    --
S004       --    --    --    --    SF    --    W
S005       --    W     --    --    --    SF    --
...
```

SF = Strong Fit, W = Workable, St = Stretch, -- = no viable match.

### Step 2: Detect Conflicts
Identify questions competing for the same best story. A conflict exists when two or more questions have the same story as their highest-fit option.

### Step 3: Resolve Conflicts
For each conflict:
1. Assign the story to the question where it has the highest fit level.
2. If fit levels are equal, assign to the question where the story's strength matters most (i.e., the harder question or the one with fewer alternative stories).
3. Cascade to the next-best story for the losing question.
4. Flag significant downgrades: "Q4 was downgraded from S003 (Strong Fit) to S006 (Workable) due to conflict with Q3. Bridging guidance: [specific framing]."

### Step 4: Apply Variety Constraint
No story should appear more than once in the final mapping unless no alternative exists. If a story must be reused:
- Explain why: "S003 is the only story addressing both leadership and prioritization competencies. No alternative exists for Q4."
- Suggest framing variation: "For Q3, lead with the decision-making angle. For Q4, lead with the stakeholder management angle."

### Step 5: Apply Freshness Constraint
Check `coaching_state.md` → Interview Loops for stories used in prior rounds at this company.
- Stories used in a previous round: downgrade by one fit level (Strong Fit → Workable) unless the candidate is asked to go deeper on the same topic.
- Flag: "S003 was used in Round 1. Using it again in Round 2 signals limited range unless they specifically ask you to elaborate."

### Step 6: Apply Overuse Check
Flag stories used 3+ times in the current job search (check Use Count in storybank).
- 3 uses: "S007 has been used in 3 interviews. Consider rotating to a fresher story if alternatives exist."
- 5+ uses: "S007 is heavily used (5 times). Interviewers in your network may have heard it. Prioritize alternatives."

### Step 7: Output Final Mapping
Produce the final mapping with annotations (see Output Schema below).

---

## Section 3: Earned-Secret-Aware Selection

### Default Rule
Between equally ranked stories (same fit level and similar strength), prefer the one with a stronger earned secret. An earned secret makes a story memorable and drives Differentiation scores.

### Conditional Boost
When company culture signals prize differentiation (e.g., companies known for "bar raiser" rounds, companies whose values emphasize innovation or unique thinking, or when Calibration State shows Differentiation predicts advancement), boost stories with strong earned secrets by treating them as +1 fit level.

Example: S005 (Workable, strong earned secret) competes with S008 (Workable, no earned secret). Under the conditional boost, S005 is treated as Strong Fit equivalent.

### When Calibration Confirms
If `coaching_state.md` → Calibration State shows that Differentiation correlates with advancement for this candidate, upgrade this from conditional to default: always prefer stories with stronger earned secrets.

---

## Section 4: Secondary Skill Utilization

When no story has the target competency as its Primary Skill:
1. Check Secondary Skills across the storybank.
2. A story with the target competency as a Secondary Skill starts at **Workable** fit level.
3. Provide framing guidance: "This story's primary skill is data-driven decision making, but it also demonstrates influence without authority (secondary). Lead with the influence angle: how you got the engineering team to prioritize without having direct authority over them."

Secondary skill matches are always Workable at best — never Strong Fit — because the competency isn't the centerpiece of the story.

---

## Output Schema

Use this schema in `prep` output to replace the current simple story mapping:

```markdown
## Story Mapping

### Mapping Matrix
| Question | Primary Story | Fit | Backup Story | Fit | Notes |
|----------|--------------|-----|--------------|-----|-------|
| Q1: [question summary] | S### — [title] | Strong Fit | S### — [title] | Workable | |
| Q2: [question summary] | S### — [title] | Workable | S### — [title] | Stretch | Bridging: [guidance] |
| Q3: [question summary] | Gap | — | S### — [title] | Stretch | Gap-handling: Pattern 2 |
...

### Portfolio Health
- Unique stories used: [N] of [M] mapped questions
- Conflicts resolved: [e.g., "Q3 and Q4 competed for S003 — assigned to Q3 (higher fit), Q4 uses S006"]
- Strength warnings: [stories rated <3 that appear in mapping — specific guidance for each]
- Freshness warnings: [stories used in prior rounds at this company]
- Overuse warnings: [stories used 3+ times in current search]

### Gaps
- [Competency]: best available is [story] ([fit level]). Gap-handling: [Pattern 1-4]. Consider developing a new story for this competency.

### Strength Warnings
- [Question] -> [Story]: rated strength [N]. [Specific guidance — e.g., "This story needs quantified impact before deployment. Run `stories improve S###` to strengthen it."]
```

---

## Integration Points

### With Calibration Engine (references/calibration-engine.md)
- When scoring drift adjusts a dimension, flag stories whose strength ratings were driven by that dimension for re-evaluation.
- When calibration shows Differentiation predicts advancement, upgrade earned-secret-aware selection from conditional to default.
- When calibration links a specific dimension to rejections, elevate story mapping gaps in that dimension's competencies to "Calibration-Urgent" priority.

### With Prep (references/commands/prep.md)
- Prep Step 7 runs a storybank health check before mapping.
- Prep Step 8 invokes this engine for the full mapping protocol.

### With Stories (references/commands/stories.md)
- Gap analysis in `stories find gaps` uses the fit scoring system to classify gaps.
- Secondary skills are checked for coverage before declaring a competency a true gap.

### With Progress (references/commands/progress.md)
- Storybank health metrics include overuse tracking and freshness risk.
