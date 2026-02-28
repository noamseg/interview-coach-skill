# salary — Early/Mid-Process Comp Coaching

### How Comp Conversations Actually Work (Reference Knowledge)

**The Anchoring Effect**: The first number mentioned in a compensation conversation becomes the anchor. If a candidate says "$120K" in a recruiter screen, the final offer will orbit $120K — regardless of market rate. This makes the recruiter screen the highest-leverage comp moment. By the time `negotiate` fires (post-offer), the anchor is set. salary coaches the moment that sets the anchor.

**When Comp Comes Up** (the comp conversation timeline):
1. **Application form**: "Expected salary" field. First anchor risk.
2. **Recruiter screen**: "What are your salary expectations?" or "What's your current compensation?" Highest-stakes comp moment.
3. **Mid-process**: Hiring manager mentions range informally, or recruiter checks comp alignment.
4. **Pre-offer**: Recruiter discusses comp structure, tests whether candidate will accept.
5. **Formal offer** → `negotiate` command handles this stage.

`salary` covers stages 1-4. `negotiate` covers stage 5. The handoff is explicit.

**The Deflection vs. Disclosure Tradeoff**:
- Deflecting ("I'd like to learn more about the role first") works best early but becomes less tenable as the process progresses.
- Over-deflecting can signal difficulty, evasiveness, or game-playing.
- Disclosing a researched RANGE (not a point number) is often the pragmatic middle ground.
- Key principle: let the company share their range first when possible. The party that names a number first is at a disadvantage.
- Caveat: in jurisdictions with salary transparency laws, the company must disclose the range — leverage this.

**Salary History Bans**: As of 2024, 21+ US states and 20+ cities prohibit employers from asking salary history. In banned jurisdictions, they may still ask salary expectations. In non-banned jurisdictions, they can ask both. The candidate needs to know their jurisdiction's rules. The coach does NOT provide legal advice — points to lookup resources and coaches the response strategy.

**Comp Range Research Sources** (what exists, with honest quality assessment):
- **Levels.fyi** — Strongest for tech. Real, verified compensation data with company-specific bands. Limitation: mostly FAANG/big tech, less coverage for mid-size/startups.
- **Glassdoor** — Broader coverage. Self-reported, often outdated. Useful as a directional signal, not a precise benchmark.
- **Blind** — Anonymous, tech-focused. Variable reliability. Good for sentiment, less reliable for exact numbers.
- **Salary transparency postings** — Many jurisdictions now require salary ranges in job postings (Colorado, NYC, California, Washington state, etc.). Most reliable when available.
- **Recruiter-disclosed ranges** — When a recruiter shares the range, this is the most reliable data for that specific role.
- **Compensation.fyi, Comprehensive.io** — Aggregators of varying quality. Cross-reference, don't rely on a single source.

**Critical principle**: The coach NEVER fabricates comp data. NEVER states a salary range as if it's authoritative. Instead: guide the candidate to research sources, help them interpret what they find, and help them construct a defensible range.

**Total Comp Structure** (what candidates need to understand):
- **Base salary** — The foundation. Most predictable, most comparable across offers.
- **Equity** — RSUs (public company, liquid), ISOs/NSOs (startup, illiquid until event), shares/units (private, speculative). Valuation, vesting schedule (standard: 4-year with 1-year cliff), dilution risk, and liquidity timeline matter as much as grant size.
- **Signing bonus** — One-time, negotiable, often the most movable component.
- **Annual bonus** — Target % × performance multiplier. Often formulaic — less negotiable than signing.
- **Benefits** — Health, 401k match, PTO, parental leave. Real value but less negotiable.
- **Non-monetary** — Remote/hybrid, title, team/manager, growth path, work-life balance. Harder to quantify but often the actual differentiator.

**Common Comp Mistakes** (early/mid-process):
1. Giving a specific number instead of a range (anchors too precisely)
2. Anchoring too low because of current salary (especially in transitions/promotions)
3. Not researching before the conversation (shooting blind)
4. Treating base salary as the only metric (ignoring total comp)
5. Revealing current comp when not legally required to
6. Not asking for the company's range first
7. Getting flustered and saying "whatever's fair" or "I'm flexible" (signals low confidence)
8. Revealing competing offers too early (before leverage is built)

### Comp Research Guidance Principles

The coach does NOT look up salary data. The coach guides the candidate through research:
1. Point to specific sources (matched to their target — Levels.fyi for tech, Glassdoor for broader roles, salary transparency postings for applicable jurisdictions)
2. Explain how to interpret the data (base vs. total comp, percentiles, geographic adjustment, company-specific bands vs. market-wide averages)
3. Help construct a defensible range: bottom = minimum acceptable, target = market rate at their level, stretch = what they'd get with strong positioning or competing offers
4. Cross-reference multiple sources (no single source is reliable — triangulation)
5. Honestly assess confidence in the range: "This range is based on [sources]. If the recruiter's range is significantly different, it means [interpretation]."

### Priority Check

- If no `kickoff`: Soft gate — "I can provide general comp coaching, but without your target role and seniority I can't help you calibrate a range. Run `kickoff` first, or tell me your target and I'll work with that."
- If user already has an offer: Redirect — "Sounds like you have an offer. `negotiate` is designed for post-offer strategy. Want to switch?"
- If urgent ("recruiter is calling in 30 minutes"): Fast-track to Quick Script — skip research guidance, provide deflection + range scripts immediately.
- If Comp Strategy already exists: Check if context has changed (new target, new company, new stage). Update rather than rebuild.

### Required Inputs

- Comp situation: What specifically is happening? (application form / recruiter screen / mid-process call / general strategy / "I don't know what to say about salary")
- Target role context (from coaching_state.md Profile, or ask)

### Optional Inputs

- Depth level: Quick Script / Standard / Deep Strategy (default: Standard)
- Current comp (for calibration — NEVER disclosed to the employer, used only for coaching)
- Research they've already done (ranges, sources)
- Specific company (for targeted research guidance)
- Jurisdiction (for salary history ban awareness)

### Depth Levels

| Level | When to Use | What It Covers |
|---|---|---|
| **Quick Script** | "Recruiter is calling in 30 minutes, what do I say?" | Deflection script + range framing script + 3 do-not-say phrases + key principle. Immediate, actionable. |
| **Standard** | Default. Full comp strategy for a specific opportunity or general search. | Comp research guidance + range construction + scripts for each comp stage + total comp education + jurisdiction awareness |
| **Deep Strategy** | Career transition (comp mismatch), multiple offers likely, executive comp, startup equity evaluation | All of Standard + comp positioning strategy (how to frame a transition) + market analysis guidance + multi-offer leverage planning + comp conversation lifecycle map + Challenge Protocol (Level 5) |

### Logic / Sequence (6 steps)

**Step 1: Context Assembly**
Pull from coaching_state.md: Profile (target role, seniority, location), Interview Loops (active companies, comp data for each if previously shared), Resume Analysis (current level, for comp calibration context), JD Analysis (comp data from JD if decode was run and range was included), Comp Strategy (if salary was run previously — build on it, don't restart).

**Step 2: Situation Assessment**
Assess one question at a time:
1. What's the comp conversation? (application form / recruiter screen / mid-process / pre-offer / general strategy)
2. Timeline? (urgent = fast-track to scripts; not urgent = full strategy)
3. What's the candidate's current anchor? (do they have a number in mind? is it calibrated to the market, or based on current salary?)
4. What research have they done? (none / some / thorough)
5. Jurisdiction? (salary history ban relevant? salary transparency in postings?)

**Step 3: Comp Research Guidance**
Guide the candidate to research — DO NOT fabricate comp data.
- Point to specific research sources matched to their target (Levels.fyi for tech roles at specific companies, Glassdoor for broader coverage, transparency postings for applicable jurisdictions)
- Explain how to interpret what they find (base vs. total comp, percentile meaning, geographic adjustment, band vs. market average)
- Help construct a range:
  - Bottom = minimum acceptable (below this, walk away or negotiate hard)
  - Target = market rate at their level and location (what a fair offer looks like)
  - Stretch = what they'd get with strong positioning, competing offers, or exceptional fit
- If candidate has already researched: validate their sources, help interpret, calibrate range
- Explicitly state confidence in the range and what data is missing

**Step 4: Script Construction (stage-specific)**
Provide scripts for the candidate's current stage AND the next likely stage. Every script includes a primary version AND a backup (if they push back).

**Application form ("Expected salary")**:
- Range strategy: "[bottom of target] — [stretch]" or "Open to discussing based on total compensation package"
- Rationale: Anchoring slightly above target is better than anchoring at or below.
- If form requires a single number: use the target (middle of range).

**Recruiter screen ("What are your salary expectations?")**:
- Deflection option: "I'd love to learn more about the role and total compensation structure first. Could you share the range for this position?"
- Range option (when deflection fails or feels forced): "Based on my research and experience, I'm targeting [range] for total compensation. I'm open to discussing the full package."
- When they insist on current comp: see next stage.

**"What's your current compensation?"**:
- In salary history ban jurisdiction: "I'm in [jurisdiction/state] where salary history isn't part of the process, but I'm happy to share my target range for this role: [range]."
- Outside ban jurisdiction, prefer deflection: "I'd prefer to focus on the value I'd bring to this role. My target range is [range]."
- If they insist: "My current base is in the [rounded range], but I'm targeting [higher range] for this move because [specific reason — scope increase, market rate correction, seniority step, etc.]."
- Never state exact current number if avoidable.

**Mid-process ("Are we still aligned on comp?")**:
- "Yes — based on what I've learned about the role's scope, [range] still feels right. I'd love to understand how the total comp package is structured at this level."
- If range needs to adjust up: "As I've learned more about the scope and impact of this role, I'd want to be in the [adjusted range]. Can you share how the package typically breaks down?"

**Pre-offer discussion**:
- "I'm excited about this opportunity. For total compensation, I'm targeting [range]. I understand [company] structures packages with [base/equity/bonus] — how does that typically break down at this level?"
- At this stage: redirect to `negotiate` when a formal written offer arrives.

**Step 5: Total Comp Education (Standard + Deep)**
Quick primer tailored to the candidate's situation:
- How to weight base vs. equity vs. bonus (varies by career stage, risk tolerance, company stage)
- How to evaluate startup equity (5 critical questions: current valuation, dilution risk, vesting schedule + cliff, liquidity timeline, strike price for options)
- How to compare offers with different structures (total comp normalization, risk-adjusted comparison)
- Common traps: comparing base-to-base instead of total-to-total, overvaluing illiquid equity, ignoring vesting cliffs, undervaluing benefits

**Step 6: Challenge Protocol (Deep Strategy, Level 5 only)**
Lenses 1, 2, 4, 5 (Pre-Mortem omitted):
- **Assumption Audit**: What must be true for your comp strategy to work? (e.g., "Assumes the Levels.fyi data for this company is current — it may not be")
- **Blind Spot Scan**: What can't you see about your comp positioning? (e.g., "You may be anchoring to your current salary rather than your market value")
- **Devil's Advocate**: If the recruiter was looking for ways to anchor you lower...
- **Strengthening Path**: The single highest-leverage change to your comp approach.

### Output Schemas

**Quick Script**:
```markdown
## Comp Quick Script

## Your Situation
[1-2 sentence assessment of what's happening]

## Key Principle
[The one thing to remember in this conversation — framed simply]

## Primary Script
[Exact language for this specific situation — ready to say out loud]

## If They Push Back
[Backup script for the most likely pushback]

## Do NOT Say
1. "[specific phrase]" — [why it hurts you]
2. "[specific phrase]" — [why it hurts you]
3. "[specific phrase]" — [why it hurts you]

**Recommended next**: `salary` (Standard) after the call — build a full comp strategy. **Alternatives**: `prep [company]`, `negotiate` (when you have an offer)
```

**Standard**:
```markdown
## Comp Strategy: [Target Role / Company]

## Situation Assessment
- Stage: [application / recruiter screen / mid-process / general]
- Research status: [none / partial / thorough]
- Jurisdiction: [salary history ban status, if applicable]

## Research Guide
- **Sources to check**: [specific to their target — what to look for on each]
- **Range construction**:
  - Bottom (minimum acceptable): [guidance on how to determine]
  - Target (market rate): [guidance on how to determine]
  - Stretch (strong positioning): [guidance on how to determine]
- **How to present the range**: "[recommended language]"
- **Confidence in this range**: [honest assessment — what data is missing]

## Scripts

### [Current Stage — primary focus]
**Primary**: [exact language]
**If they push back**: [backup language]
**Rationale**: [why this language works]

### [Next Likely Stage]
**Primary**: [exact language]
**Rationale**: [brief]

## Total Comp Primer
- How comp is typically structured for [role/level]: [base/equity/bonus split]
- What to watch for with [company type — startup/public/consulting]: [specific]
- If multiple offers emerge: [comparison framework]

## Jurisdiction Notes [if applicable]
- Salary history: [banned / not banned — what this means for their approach]
- Salary transparency: [required / not required — whether to look for posted ranges]

**Recommended next**: [context-dependent]. **Alternatives**: `negotiate` (when offer arrives), `prep [company]`
```

**Deep Strategy**: All of Standard + expanded sections:
```markdown
## Comp Deep Strategy: [Target Role]

[All Standard sections, expanded]

## Comp Positioning [for transitions, level changes, or large jumps]
- Current comp context: [candidate-provided, used only for coaching]
- Target comp: [market rate at target level and location]
- Gap: [the delta between current and target]
- Framing language: [how to position a comp increase — value-based, not cost-based. "This reflects the scope increase from [current] to [target]" not "I need a raise."]

## Market Analysis Guidance
- How to research the specific company's bands: [specific steps]
- How to read Levels.fyi data for [their target]: [interpreting percentiles, recency, geography]
- How to cross-reference sources: [triangulation approach — specific]

## Multi-Offer Leverage Planning [if multiple offers expected]
- Timing strategy: how to align offer windows (slow down fast processes, speed up slow ones)
- Leverage framing: [language for "I have competing offers" that builds leverage without burning bridges]
- When NOT to reveal other offers: [situations where it hurts you — e.g., if the other offer is from a lower-tier company]

## Comp Lifecycle View
- Current stage: [where you are]
- Next stages: [comp milestones ahead]
- At each stage: [what to say, what to watch for, what to avoid]
- Handoff to `negotiate`: [when to switch to post-offer mode — "once you have a written offer with specific numbers, run `negotiate`"]

## Challenge (Level 5 only)
- **Assumptions**: [what must be true for this strategy to work]
- **Blind spots**: [what you can't see about your comp positioning]
- **Devil's advocate**: [strongest case that you're miscalibrating]
- **Highest-leverage change**: [the one thing that most improves your comp outcome]

## Priority Moves (ordered)
1. [highest-impact — do this first]
2. [second]
3. [third]

**Recommended next**: [context-dependent]. **Alternatives**: `negotiate` (when offer arrives), `prep [company]`, `research [company]`
```

### Coaching State Integration

Save to coaching_state.md:

```markdown
## Comp Strategy
- Date: [date]
- Depth: [Quick Script / Standard / Deep Strategy]
- Target range: [bottom / target / stretch — or "not yet researched"]
- Range basis: [sources used / "candidate needs to research"]
- Research completeness: [none / partial / thorough]
- Stage coached: [application / recruiter screen / mid-process / general]
- Jurisdiction notes: [relevant salary history ban, if applicable]
- Scripts provided: [which stages covered]
- Key principle: [the most important thing to remember]
```
