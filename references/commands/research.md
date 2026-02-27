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

### Research Depth Levels

| Level | When to Use | What to Do | Time Investment |
|---|---|---|---|
| **Quick Scan** | Building a target list, evaluating 5+ companies at once | Company website + careers page + recent news. Enough for a basic fit assessment. | 5-10 min |
| **Standard** | Evaluating whether to apply. Default for `research`. | Full protocol: website, careers, news, Glassdoor, LinkedIn, blog. Produces a complete research brief. | 15-20 min |
| **Deep Dive** | High-priority target, interview scheduled, want maximum intelligence | Standard + employee posts/talks, product reviews, competitor analysis, leadership team profiles. | 30+ min |

Default to **Standard**. Suggest **Deep Dive** when:
- The candidate has an interview scheduled at this company
- The candidate explicitly asks for comprehensive intelligence
- The company is in the candidate's top 3 targets

### Structured Search Protocol

Search for information in this order. Each step builds on the previous ones:

1. `[Company] careers` → careers page, open roles, stated values/principles, engineering/product blog links
2. `[Company] about` or `[Company] mission` → stage, funding, size, founding story
3. `[Company] news [current year]` → recent events (funding, layoffs, product launches, leadership changes). **Note**: Recent events change interview culture — a company that just laid off 20% is hiring differently than one that just raised Series C.
4. `[Company] interview process [role type]` → Glassdoor/Blind interview reviews (label as crowd-sourced, not verified)
5. `[Company] engineering blog` or `[Company] product blog` → culture signals, technical maturity, how they think about problems
6. `[Company] culture` → employee reviews, culture deck, values page, recent employee posts
7. (Deep Dive only) `[Company] [leader name]` → leadership profiles, talks, posts, published perspectives

### Claim Verification Protocol

Every company-specific claim in the research output must map to a source tier:

- **Tier 1 — Verified**: Information directly retrieved from the company's own website, careers page, blog, or from the job description/candidate-provided context. Cite the source.
- **Tier 2 — General knowledge**: Widely documented public information about well-known companies (e.g., Amazon's Leadership Principles, Google's Googleyness). Label clearly.
- **Tier 3 — Unknown**: Information that couldn't be verified. State this explicitly — don't guess.

**Rules:**
- When web search returns conflicting information, present both sides and note the conflict: "Source A says [X], but Source B says [Y]. Worth verifying directly."
- When information is dated (>12 months), flag it: "This is from [date] — verify it's still current. Companies change."
- Never synthesize multiple uncertain sources into a confident claim. If 3 Glassdoor reviews each say something slightly different, present the range, not a false consensus.

### What to Research

Pull from publicly available sources only:
- **Company careers page**: Open roles, values, culture signals, engineering/product/design blog
- **Company "About" page**: Mission, stage, funding, size
- **Recent news**: Funding rounds, product launches, leadership changes, layoffs
- **Glassdoor/Blind signals**: Interview process info, culture reviews (label as crowd-sourced, not verified)
- **LinkedIn company page**: Growth trajectory, team composition

### Fit Assessment

Use the Role-Fit Assessment Module from `references/cross-cutting.md`. Without a JD, you can assess 3 of 5 dimensions:

1. **Seniority Alignment** — Does the candidate's experience level match what this company typically hires for this type of role? Use public signals (job postings, team composition on LinkedIn, company stage).
2. **Domain Relevance** — How transferable is the candidate's industry/domain experience? A fintech PM applying to a healthtech startup has a domain gap. Name it, assess how bridgeable it is.
3. **Trajectory Coherence** — Does this role make sense as the next step in their career? A lateral move to a smaller company for more scope is coherent. A step down in title with no clear rationale raises questions.

**Cannot assess without JD**: Requirement Coverage, Competency Overlap. Flag this: "For a full fit assessment, I'd need the job description."

**Verdict**: Strong Fit / Investable Stretch / Long-Shot Stretch / Weak Fit — with the specific dimension scores driving the verdict.

**If Weak Fit or Long-Shot Stretch**: Follow the Alternative Suggestions Protocol — name the gaps, suggest what a better-fit version looks like, and respect the candidate's decision if they want to proceed.

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
- Verdict: [Strong Fit / Investable Stretch / Long-Shot Stretch / Weak Fit]
- Seniority Alignment: [Strong / Moderate / Weak] — [brief evidence]
- Domain Relevance: [Strong / Moderate / Weak] — [brief evidence]
- Trajectory Coherence: [Strong / Moderate / Weak] — [brief evidence]
- Cannot assess without JD: Requirement Coverage, Competency Overlap
- Key gaps (if stretch/weak): [specific gaps, not vague]
- Better-fit alternatives (if weak/long-shot): [what roles would be stronger matches and why]

## If You Decide to Apply
- Recommended next steps:
- Key things to research further before interviewing:
- Networking angle: [who to talk to, what to ask]

**Recommended next**: `prep [company]` — build a full prep brief now that you have the research foundation. **Alternatives**: `research [another company]`, `stories`
```

### Coaching State Integration

After research, save a lightweight entry to `coaching_state.md` Interview Loops:
```
### [Company Name]
- Status: Researched (not yet applied)
- Fit verdict: [Strong / Investable Stretch / Long-Shot Stretch / Weak]
- Fit confidence: [Limited — no JD]
- Fit signals: [1-2 lines on what drove the verdict]
- Structural gaps: [gaps that can't be bridged with narrative, if any]
- Date researched: [date]
```

This way, if the candidate later runs `prep` for this company, the coach already has context.
