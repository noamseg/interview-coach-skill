# negotiate — Post-Offer Negotiation Coaching

> When producing written correspondence (counter-offer email, offer acceptance, decline), run the **Writing Quality Gate** from `references/cross-cutting.md`. Auto-clean mode. No em dashes. No Tier 1 words. Verbal scripts are exempt.

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

If Comp Strategy exists from a previous `salary` session, pull the researched range, research sources, key principles, and scripts used in earlier conversations. Build on this context — the candidate has already set expectations with the company based on this strategy. Note if the range needs adjustment now that an offer is in hand (common: the offer may be outside the previously discussed range, requiring a recalibration).

- Evaluate offer against market data (ask candidate to provide salary range research — Levels.fyi, Glassdoor, compensation surveys). **Don't generate salary numbers yourself** — you don't have real-time market data. If the candidate hasn't done research, say: "I need you to bring the market data. Check Levels.fyi for your role/level/location and Glassdoor for this specific company. I'll help you interpret it and build a strategy around it."
- Identify the 2-3 most negotiable components (often equity, signing bonus, start date, title — not always base).
- Coach specific language: scripts for the actual conversation, not just strategy.
- Address common failure modes: accepting too quickly, negotiating only base, being adversarial, failing to negotiate at all out of gratitude/relief.

#### Reading the Initial Offer

Before jumping to strategy, assess where the offer falls in the company's band. Per negotiation coach Niya Dragova (via Lenny's Newsletter):
- **Low offer**: Team felt candidate has "room for growth." Fix misconceptions about your level first, then negotiate from corrected position.
- **Mid-band**: Over 80% of candidates at large tech companies receive a formulaic template. This often means no strong internal advocate. Delay negotiation until matched with a team/manager who will champion a stronger package.
- **Top-of-band**: Push for "out-of-band" offer at the level above while holding the lower title.

At companies with 5,000+ employees, compensation is formulaic. The recruiter delivers a predetermined number and must go back to a compensation committee for every re-evaluation. Provide "new information" (competing offers, retention offers) that gives the recruiter grounds for re-evaluation.

#### Negotiation Strategy Framework (GAINS)

For senior roles or large packages, apply Jacob Warwick's GAINS framework (3,500+ executive coaching engagements, via Lenny's Newsletter):

**G -- Gather Intelligence**: Map organization dynamics, decision-maker psychology, and strategic pain points.

**A -- Align with Advocates**: Build internal champions. Share the "messy middle" of past challenges. "Sell the vacation": paint a vivid 30/90/180-day picture of success. "While most candidates ask, 'What can you offer me?,' top earners demonstrate 'Here's how I'll solve your most pressing challenges.'"

**I -- Influence Key Stakeholders**: Customize stories per stakeholder. Turn blockers into advocates by asking for their input. Deliver value before being hired.

**N -- Navigate Complexity**: Signal excitement while creating space. Questions instead of demands. Strategic patience: "Rushed negotiations almost always leave money on the table."

**S -- Secure Success**: Employment attorney for significant packages. Question vague terms. Get verbal promises in writing.

#### The Psychology of Asking

Kenneth Berger (first PM at Slack, via Lenny's Podcast) identifies two failure modes:
- **People-pleaser camp**: Hoping people read their mind, prioritizing others' comfort.
- **Control freak camp**: Demanding rather than asking, entitlement rather than collaboration.

Berger's "Articulate, Ask, Accept" framework:
1. **Articulate** what you want (specific number, term, title)
2. **Ask** for it intentionally and out loud
3. **Accept** the response and learn from it
4. **Try again**. Negotiation is a discovery process, not a one-shot event.

Apply the "Hell Yes or No" standard: settling for lukewarm acceptance leads to regret.

### Negotiation Anxiety Coaching

Many candidates accept weak offers not because they lack strategy, but because the conversation feels confrontational. As Dragova puts it: "Compensation is set up to be intentionally misleading." Address the emotional side directly:
- **Normalize it**: "Almost everyone feels uncomfortable negotiating. That discomfort is not a reason to skip it." The company expects negotiation, especially at larger companies.
- **Reframe the dynamic**: "You're not asking for a favor. The company chose you and wants you to accept. You have leverage right now -- more than you'll have once you've signed."
- **Practice the opening**: Role-play the first 30 seconds. That's where most candidates freeze.
- **Name the fear**: "What's the worst thing you think could happen?" Reality-check it.
- **Phone, not email**: Dragova: "Negotiating via email = MAJOR CRINGE and definitely a worse outcome." Phone allows rapport and collaborative problem-solving.
- **Strategic patience**: Warwick: "Haste equals risk." Urgency to close is the company's advantage, not the candidate's.
- **Win hearts and minds first**: Before counteroffering, upsell your worth. Ask for follow-up meetings with decision makers. Come prepared with ideas from interviews.

### Equity Evaluation Guide

Most candidates can't evaluate equity offers. Don't just list "Equity: [amount]" -- walk through the key questions:
- **What type of equity?** Stock options (ISOs/NSOs), RSUs, or actual shares? Each has very different tax and value implications.
- **Vesting schedule**: Standard is 4-year with 1-year cliff. Anything else is worth noting.
- **Valuation basis**: For private companies — what's the current valuation? What was the last funding round? What's the strike price?
- **Dilution risk**: For startups — how many funding rounds are expected? Each round dilutes existing shares.
- **Liquidity timeline**: When can you actually sell? IPO timeline? Secondary market availability?
- **Tax implications**: ISOs vs. NSOs have very different tax treatment. AMT risk for ISOs exercised early.
- If this gets complex, flag: "Equity evaluation can get technical. I can walk through the basics, but for significant equity packages, consider consulting a financial advisor or tax professional."
- **Startup equity operates on different rules**: As Dragova emphasizes (via Lenny's Newsletter), startup negotiation is fundamentally different from big tech. The formulaic bands don't apply. Everything is potentially negotiable: equity percentage, vesting schedule, acceleration clauses, exercise windows. The candidate should think like an investor: ask about current valuation, runway, and exit scenarios. Key questions: "What is the valuation based on?" and "What are the exit scenarios?" Always get terms in writing.

### Offer Comparison Normalization

When comparing offers — whether a single offer against market data or multiple competing offers — normalize to make comparison meaningful. Don't just list numbers side by side; translate different package structures into comparable terms.

**Qualitative normalization framework**:
| Component | How to Compare | What to Watch For |
|---|---|---|
| **Base salary** | Direct comparison, adjusted for location if different markets | Similar base = similar baseline. >15% base gap = meaningful lifestyle difference. |
| **Equity (public)** | Annual vesting value at current stock price. Note: stock can go down. | Compare annual vesting, not total grant. Factor in refresh grants (some companies grant annually, some don't). |
| **Equity (startup)** | Cannot compare directly to public company equity. Use the cash-floor test from `salary`. | Compare as "upside potential" vs. "guaranteed comp." A $200K startup package with $50K in speculative equity is NOT comparable to a $200K public company package with $50K in liquid RSUs. |
| **Signing bonus** | Amortize over expected tenure (usually 2-3 years). A $30K signing bonus = ~$10-15K/year additional comp if you stay 2-3 years. | One-time — don't let it distort the ongoing comp comparison. |
| **Annual bonus** | Compare target bonus × expected attainment. Ask: "What does attainment typically look like?" A 20% target with 80% average attainment ≠ 20% bonus. | Some companies say 15% target but routinely pay 100%+. Others say 20% but rarely exceed 80%. Ask. |
| **Benefits** | Focus on material differences only: healthcare cost delta, 401k match, PTO policy, parental leave. | Don't nitpick small differences. Only flag when there's a meaningful gap (e.g., one company has no 401k match). |
| **Non-monetary** | Can't normalize — but can weight. Remote flexibility, team quality, manager, growth path, company trajectory. | These often matter more than a 10% comp difference. Ask the candidate to rank their priorities. |

**Present comparisons as ranges, not precise numbers**: "Offer A is roughly $X-Y total comp in year 1, and Offer B is $X-Y. The gap is about [%], and here's what accounts for it..."

**The decision isn't just math**: After normalizing, ask: "Which of these offers gets you most excited to start on Monday morning? That's worth weight too."

### Multiple Concurrent Offers

When the candidate has more than one offer:
- **Map the full picture**: Use the normalization framework above to create a comparable side-by-side of all offers.
- **Identify leverage points**: Which offer strengthens your position on the other? "Having a competing offer from [Company B] gives you concrete leverage with [Company A] — here's how to use it."
- **Timeline management**: If offers have different deadlines, coach on buying time: "Can you ask [Company A] to extend their deadline? Here's the script: 'I'm very excited about this offer. I'm in final stages with one other company and want to make a fully informed decision. Could I have until [date]?'"
- **Don't play offers against each other crudely**: "Telling Company A that Company B offered more is fine. Fabricating or inflating offers is not — it's a small world and it can backfire."
- **Decision framework**: Help the candidate weight factors beyond comp — growth trajectory, learning potential, manager quality, work-life balance, company stability. The highest-paying offer isn't always the best offer.

---

*The sections below extend Jacob Warwick's executive negotiation framework (via Lenny's Podcast + Execs and the City Substack), building on the GAINS summary above.*

### Comp Call Scoring

When a comp call transcript is brought for review — directly, or routed here by `analyze`'s Comp Call Detection — score it against these 5 dimensions instead of the standard interview rubric. Comp calls are measured by package outcome and information control, not answer quality. Write results to the `Comp Strategy` section of `coaching_state.md`, not Score History.

| Dimension | What it measures | 1 (Poor) | 3 (Adequate) | 5 (Exceptional) |
|---|---|---|---|---|
| **Anchoring Discipline** | Did the candidate avoid naming a number first? | Named a number unprompted | Deflected once, then shared | Never named a number; counterpart anchored first |
| **Information Gathering** | Did the candidate collect intel before responding? | Pitched without listening | Asked some questions | Systematically gathered intel, probed objections, named patterns |
| **WE Framing** | Was every ask framed as mutual benefit? | All asks ME-framed ("I need") | Mixed framing | Every ask led with company benefit; counterpart felt they were solving a shared problem |
| **Silence & Pacing** | Did the candidate use silence and control timing? | Filled every silence, rushed | Some pauses, mostly reactive | Strategic silence after asks; controlled timing; took a few days on the offer |
| **Creative Solutions** | Did the candidate explore beyond base salary? | Only discussed base | Mentioned equity/bonus | Proposed creative mechanisms (triggers, IP carve-outs, development budgets, schedule structures) |

**Scorecard:**

```markdown
## Negotiation Performance Scorecard

| Dimension | Score | Evidence |
|---|---|---|
| Anchoring Discipline | [1-5] | [specific moment from transcript] |
| Information Gathering | [1-5] | [specific moment from transcript] |
| WE Framing | [1-5] | [specific moment from transcript] |
| Silence & Pacing | [1-5] | [specific moment from transcript] |
| Creative Solutions | [1-5] | [specific moment from transcript] |

**Overall:** [average] / 5
**Strongest dimension:** [name] — [why]
**Priority improvement:** [name] — [specific adjustment for next round]
```

The priority improvement feeds directly into coaching for the follow-up call: score the last call → coach the next → score that → iterate.

### Multi-Round Negotiation

When the initial ask doesn't close and a follow-up call is scheduled. This is structurally different from the first call: the counterpart has had time to think and consult others, their position may have hardened or softened, the candidate's first-call framing is already on record, and power has shifted based on who deferred to whom.

**Coaching sequence:**

1. **Debrief the first call.** What was asked? What was the response? What objections were raised, in what language? Score against the Comp Call Scoring dimensions above if a transcript is available.
2. **Diagnose the counterpart's position:**
   - **Deferral to authority** ("I need to check with my co-founder/board") — they may be on your side but can't approve alone. Make them your advocate: "Would you be willing to take this framing to [authority]?"
   - **Principled objection** ("we value flexibility/trust over rigidity") — values language used to avoid commitment. Name the asymmetric risk; use "can you help me understand?"
   - **Stacked objections** (3+ concerns all leading to the same conclusion) — the real concern is preserving unilateral discretion. Name the pattern: "Is there a single thing that would unlock this?"
   - **Hard no** ("this is a fairly clear position for us") — a genuine boundary. Accept gracefully or walk, depending on the candidate's floor.
3. **Reframe, don't repeat.** If the first framing didn't land, don't say "that was wrong" — say "Let me be clearer on this." Reframe without self-blame.
4. **Structure the follow-up:** opener (signal the deal is happening) → acknowledge their position → make the adjusted ask → close. It should feel like a continuation, not a restart.
5. **Listen first.** The candidate opens with a brief signal ("I've reflected, here's where I've landed"), then stops and lets the counterpart respond. Their opening words reveal which scenario you're in — match the response to it, don't deliver a pre-planned pitch.

**Coaching the opener** (under 30 seconds, three jobs: signal the deal is happening, acknowledge their position, set expectations for small items not a re-negotiation): "Thanks for the patience. I've reflected on what we discussed — I heard you on [their position]. I've got a couple of things I think you'll be aligned with, and then we can finalize. How does that sound?"

**Key points:**
- **Know when to stop.** If the counterpart came back having advocated harder than expected (unsolicited improvements, above-ask concessions), accept with gratitude and close — pushing after they over-delivered signals you'll never be satisfied. Assess: did they *advocate* or merely *respond*? Advocate → close warm. Respond → probe further.
- **Their words are ammunition.** If they offered something (a schedule structure, a development budget), reference it back: "You mentioned you'd support X — I'd love to build on that."
- **"Walk me through what that looks like from your side"** is the strongest play for informal commitments — they describe the arrangement in their own words, then you mirror it back and ask for documentation.
- **Every informal commitment needs a documentation mechanism**, strongest to weakest: contract clause > offer-letter reference > email confirmation > verbal alignment. Push for the highest you can get without reopening a closed debate.

### Non-Standard Terms

Senior hires often negotiate beyond base/equity/bonus. Surface these proactively when traditional levers are capped — the candidate says base or equity is at the ceiling, the company is bootstrapped/early-stage/PE-backed with rigid bands, or the counterpart has signaled flexibility.

| Term | When to raise | How to frame | Common pushback | Counter |
|---|---|---|---|---|
| **Reduced schedule (4-day week, 9-day fortnight)** | After base/equity directionally aligned | "This is how I stay at the level that delivers the outcomes you hired me for" | "We've never done this" / "What about the team?" | "Not unusual for senior leadership — the output speaks for itself." Fallback: one protected focus day per week (lighter lift, less precedent). |
| **Professional development budget** | When offered, or as package rebalancing | "Annual, discretionary, referenced in the offer letter" | "We don't have a formal program" | "Tooling, training, and conferences move fast enough to justify a recurring budget line." |
| **IP / moonlighting carve-out** | Contract stage, not the negotiation call | "Standard for senior hires — protects both sides" | "Our standard contract covers this" | Check the IP-assignment clause; push for a pre-existing-work schedule if needed. |
| **Performance-based equity triggers** | When initial equity is capped | "If I deliver X outcome, what does that unlock?" | "We don't have a mechanism yet" | "Can we build one? Even informal milestones tied to equity top-ups." |
| **Sign-on bonus** | When base is capped and there's a gap to bridge | One-time payment; amortize over expected tenure | "We don't do sign-on bonuses" | "Even a small one bridges offer to market — it's one-time, not ongoing." |
| **Additional leave** | When work-life balance matters, or when base is capped (leave is often easier to grant than base, especially at startups) | "Leaders who don't burn out stay longer" | "Everyone gets X weeks" | "This is a leadership-level term, not a company-wide policy change. If leave can't move, can we look at base or a sign-on instead?" |
| **Title / scope review at checkpoints** | When starting below expected level | Lock the dates and criteria, not just the intent | "We'll revisit when it makes sense" | "Can we agree on month 4 and month 8 as explicit review points?" |

**The Golden Cage Test.** When a counterpart offers a compromise that looks like the ask but strips the substance, coach the candidate to name it. Test: "If I accepted this, would I actually get what I need — or the label without the substance?" Then name the distinction without confrontation: "I appreciate the offer. Those are different things for me, and here's why…"

### Escalation Playbook

When standard negotiation reaches an impasse.

| Step | When | How | Risk |
|---|---|---|---|
| **1. Delay card** | They expect an answer you're not ready to give | "I need to think about this. Can I come back tomorrow?" | Low — buys time, preserves leverage |
| **2. Advocate creation** | Hiring manager can't approve but is sympathetic | "Would you be willing to take this framing to [decision-maker]?" | Low — makes them your champion |
| **3. Direct to decision-maker** | Hiring manager is blocked; someone higher controls the P&L | Ask the hiring manager first: "Would it be okay if I had a brief chat with [name] on this one point?" | Medium — go through, not around, the hiring manager |
| **4. Walk (temporary)** | Hard no on a line-in-the-sand item | "I appreciate you being direct. I need to think about what that means." | High — only credible if you can actually walk |
| **5. Walk (permanent)** | The candidate's floor is genuinely below the offer | "This isn't the right fit on these terms. I respect your position — if circumstances change, I'm open." | High — burns the bridge for this cycle |

**Coaching the walk:** never walk on the call (always take 24-48 hours — in-the-moment decisions are emotional, not strategic); walking is only credible with a real BATNA (competing offers, fractional options, runway); walking *is* negotiation — when it's genuine conviction not bluff, the company's sunk investment (rounds, references, an excited team) creates pull and they often come back; and if walking, leave warm to preserve the relationship for re-engagement.

**When the counterpart hides behind an absent decision-maker** ("I need to check with my co-founder/board"): probe — "Which pieces is [authority] flexible on, and which are firm?" — to reveal what's real vs. a negotiating position. If everything is blocked by the absent authority, get the hiring manager to advocate or go 1-on-1 with the authority. Never accept a group call of multiple decision-makers against the candidate alone (a 2-v-1 disadvantage).

### Post-Close Legal Review

Coaching during the paperwork phase, after commercial terms (base, equity, PD budget, leave, title) are closed and the outstanding items are legal/logistical: IP assignment, non-compete, notice period, probation, annexures for informal commitments.

**The register shift** is the core move: candidates who won the negotiation by being assertive and commercial often carry that register into paperwork and accidentally re-open tension. Signal to watch: the candidate's draft email to the counterpart uses words like "redline," "annexure," "pursuant to," numbered sections, or a formal opener — they've unconsciously adopted their lawyer's register. Prompt: "Read your draft aloud. Does it sound like YOU, or like your LAWYER? If it's the lawyer, rewrite it in the register of your last warm call with the counterpart."

**Coaching sequence:** audit the draft for legal jargon/formality; flag anything that re-opens closed items (re-listing the package, re-thanking for wins, re-anchoring on numbers); confirm informal commitments are framed in the counterpart's own words; keep legal questions on the lawyer channel and logistics on the counterpart channel; rewrite warm, short, logistics-framed, with a specific timeline and no ceremony.

**Separate channels rule:** lawyer-to-lawyer gets the legal register (full redline, numbered items, formal sign-off); counterpart-to-counterpart gets the warm register (category previews, timeline confirmation, logistics framing). If the candidate has no lawyer, they *are* the lawyer — but still separate the registers by thread.

**The annexure ask** (capturing a verbally-agreed informal commitment in writing) is legitimate and expected: reference the counterpart's own description of it, offer format flexibility ("a side letter, an email exchange, whatever works"), frame as buttoning up not re-negotiating ("One thing I'd love to include…"), and keep it to one low-stakes paragraph.

**Failure mode to flag:** if the counterpart goes cold or slow during paperwork, check the register of recent candidate-to-counterpart emails — legal-register messages are the most common cause of post-close chill. Fix: re-read the last 2-3 emails aloud ("does this sound like the person who was on the warm call last week?") and send a short human message to re-establish warmth.

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

**Recommended next**: `reflect` — archive your coaching journey and extract transferable skills. **Alternatives**: `thankyou`, `progress`
```
