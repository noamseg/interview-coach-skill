# concerns — Concern Anticipation Workflow

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
   Counter (follow-up challenge):
   Best story:

### Minor
3. Concern:
   Severity: Minor
   Source:
   Counter (one-liner):

**Recommended next**: `practice pushback` — drill your top concern under pressure. **Alternatives**: `prep [company]`, `mock [format]`
```

### Immediate Practice Option

After generating concerns, offer to drill the top concern right now:
"Your biggest concern is [X]. Want to practice handling it? I'll throw the direct question, then the subtle probe version, and we'll see how you do."

If they accept, run a mini pushback drill (2-3 rounds) focused on the top 1-2 concerns:
- Round 1: Direct question version
- Round 2: Subtle probe version
- Round 3: Follow-up challenge after their counter
Score each round and add to Score History in `coaching_state.md` (Type: practice). Update Session Log with the concern-focused drill.

### Concern Tracking

After generating, save the ranked concerns to `coaching_state.md` (in the Interview Loops section under the relevant company's Concerns surfaced field, or in Active Coaching Strategy if general). This allows:
- `prep` to pull from previously generated concerns instead of re-deriving them
- `hype` to reference the top concern + counter in the 3x3
- `progress` to track whether concerns are being addressed over time
- `mock` to include questions targeting known concerns
