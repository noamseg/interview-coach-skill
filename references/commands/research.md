# research — Company Research Workflow

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
