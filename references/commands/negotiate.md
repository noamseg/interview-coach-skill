# negotiate — Post-Offer Negotiation Coaching

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

- Evaluate offer against market data (ask candidate to provide salary range research — Levels.fyi, Glassdoor, compensation surveys). **Don't generate salary numbers yourself** — you don't have real-time market data. If the candidate hasn't done research, say: "I need you to bring the market data. Check Levels.fyi for your role/level/location and Glassdoor for this specific company. I'll help you interpret it and build a strategy around it." For PM-specific comp benchmarks as a calibration reference, see the PM Comp Reference Data section in `salary.md`.
- Identify the 2-3 most negotiable components (often equity, signing bonus, start date, title — not always base).
- Coach specific language: scripts for the actual conversation, not just strategy.
- Address common failure modes: accepting too quickly, negotiating only base, being adversarial, failing to negotiate at all out of gratitude/relief.

#### Reading the Initial Offer

Before jumping to strategy, assess where the offer falls in the company's band. As negotiation coach Niya Dragova advises (via Lenny's Newsletter), offers at large companies typically fall into three categories:
- **Low offer**: The team felt the candidate has "room for growth." Before negotiating the number, dig into interview feedback — fix any misconceptions about your level first, then negotiate from a corrected position.
- **Mid-band ("the number")**: The most common starting point — over 80% of candidates at large tech companies receive a formulaic template offer. This often means the candidate lacks a strong internal advocate. If possible, delay negotiation until matched with a specific team and manager who will champion a stronger package internally.
- **Top-of-band**: A discussion likely already happened about placing the candidate at a higher level. Push for an "out-of-band" offer — being compensated at the level above while holding the lower title.

At companies with 5,000+ employees, compensation is heavily formulaic — a separate compensation committee sets the number based on background, interview performance, and level. The recruiter delivers a predetermined number and must go back to the committee for every re-evaluation. Understanding this changes negotiation tactics: aggressive demands directed at the recruiter are ineffective because they lack the authority to adjust. Instead, provide "new information" (competing offers, retention offers from current employer) that gives the recruiter grounds to request a committee re-evaluation.

#### Negotiation Strategy Framework (GAINS)

For candidates pursuing senior roles or large comp packages, apply executive comp coach Jacob Warwick's GAINS framework, developed from 3,500+ executive coaching engagements (via Lenny's Newsletter). This is especially relevant for Director+ roles where the negotiation is multi-stakeholder:

**G — Gather Intelligence**: Map organization dynamics (real power flows, past failures haunting leadership), decision-maker psychology (what motivates each key player), and strategic pain points (where the company is headed in 6 months, which initiatives have underdelivered).

**A — Align with Advocates**: Build internal champions before asking for money. Share the "messy middle" of past challenges (not polished highlight reels), ask bold questions others tiptoe around, and "sell the vacation" — paint a vivid 30/90/180-day picture of what success looks like after joining. As Warwick puts it: "While most candidates ask, 'What can you offer me?,' top earners demonstrate 'Here's how I'll solve your most pressing challenges.'"

**I — Influence Key Stakeholders**: Customize stories for each stakeholder's priorities. Turn blockers into advocates by asking for their input. Deliver small pieces of value before being hired — thoughtful analysis, not generic thank-you notes.

**N — Navigate Complexity**: Signal excitement while creating space for discussion. Use questions instead of demands. Practice strategic patience: "Rushed negotiations almost always leave money on the table. Haste equals risk."

**S — Secure Success**: Involve an employment attorney for significant packages. Question every vague term ("significant equity," "performance-based bonus"). Get verbal promises in writing.

#### The Psychology of Asking

Many candidates fail at negotiation not because they lack strategy but because they can't bring themselves to ask. Executive coach Kenneth Berger (first PM at Slack, via Lenny's Podcast) identifies two failure modes:
- **People-pleaser camp**: Used to not asking at all — hoping people read their mind, prioritizing others' comfort over their own outcome. The long-term cost: "Am I really pursuing the things that are important to me?"
- **Control freak camp**: Used to demanding rather than asking — coming with entitlement rather than collaboration.

Berger's "Articulate, Ask, Accept" framework:
1. **Articulate** what you actually want — get specific (a number, a term, a title), not vague
2. **Ask** for it intentionally and out loud
3. **Accept** the response (which is usually no) and learn from it
4. **Try again** — iterate. Negotiation is a discovery process, not a one-shot event

As Berger puts it: "Often when the stakes feel high, we're focused more on the fear of what we don't want to happen than on actually achieving what we do want." The coach should help the candidate shift from fear-avoidance to goal-pursuit. And when evaluating offers: apply the "Hell Yes or No" standard (which Berger references) — "It's not a yes unless it's a hell yes." Settling for lukewarm acceptance leads to regret.

### Negotiation Anxiety Coaching

Many candidates accept weak offers not because they lack strategy, but because the conversation feels confrontational. As Niya Dragova puts it (via Lenny's Newsletter): "Compensation is set up to be intentionally misleading. Partially it's because sticking up for yourself is nerve-racking AF." Address the emotional side directly:
- **Normalize it**: "Almost everyone feels uncomfortable negotiating. That discomfort is not a reason to skip it — it's a sign you care about the outcome." Dragova's framing: "The reason we have to play this game is because, like it or not, everyone else is playing it. And you're probably losing — on salary, equity, and promotions." The company expects negotiation — especially at larger companies — and reasonable negotiation rarely creates hard feelings.
- **Reframe the dynamic**: "You're not asking for a favor. The company chose you and wants you to accept. You have leverage right now — more than you'll have once you've signed." For senior candidates, apply the "auditioner to peer" mindset shift from the GAINS framework above.
- **Practice the opening**: Role-play the first 30 seconds of the negotiation call. That's where most candidates freeze. Script it and rehearse it.
- **Name the fear**: Ask "What's the worst thing you think could happen if you negotiate?" Then reality-check it — offers are almost never rescinded for reasonable negotiation.
- **Phone, not email**: Dragova advises: "Negotiating via email = MAJOR CRINGE and definitely a worse outcome." Phone conversations allow real-time rapport, tone reading, and collaborative problem-solving. Email flattens the interaction into a transactional exchange.
- **Strategic patience**: Resist the urge to respond immediately. Warwick's core principle: "Haste equals risk." Urgency to close is the company's advantage, not the candidate's. Every time the candidate feels pressure to respond immediately, that's leverage being given away.
- **Win hearts and minds first**: Dragova's principle — before making a counteroffer, upsell your worth. Ask for follow-up meetings with decision makers (Directors should meet VPs/C-level; VPs should meet CEO and board). Come prepared with questions about creating meaningful impact, ideas from interviews, and obstacles to taking the role — making them sell you on it.
- **The stakes are real**: Dragova documented helping a single FAANG executive capture $5.4M in additional compensation through structured negotiation. And when coaching women specifically, surface this: "Research from Niya Dragova shows women receive 47 cents in equity for every dollar men receive. This makes negotiation especially important — the gap is largest in the equity component."

### Equity Evaluation Guide

Most candidates can't evaluate equity offers. Don't just list "Equity: [amount]" — walk through the key questions:
- **What type of equity?** Stock options (ISOs/NSOs), RSUs, or actual shares? Each has very different tax and value implications.
- **Vesting schedule**: Standard is 4-year with 1-year cliff. Anything else is worth noting.
- **Valuation basis**: For private companies — what's the current valuation? What was the last funding round? What's the strike price?
- **Dilution risk**: For startups — how many funding rounds are expected? Each round dilutes existing shares.
- **Liquidity timeline**: When can you actually sell? IPO timeline? Secondary market availability?
- **Tax implications**: ISOs vs. NSOs have very different tax treatment. AMT risk for ISOs exercised early.
- If this gets complex, flag: "Equity evaluation can get technical. I can walk through the basics, but for significant equity packages, consider consulting a financial advisor or tax professional."
- **Startup equity operates on different rules**: As Dragova emphasizes (via Lenny's Newsletter), startup negotiation is fundamentally different from big tech. The formulaic bands of FAANG don't apply — everything is potentially negotiable: equity percentage, vesting schedule, acceleration clauses, exercise windows. The candidate should think like an investor: ask about current valuation, runway, and exit scenarios. It's acceptable to ask to meet with investors at early-stage companies. Key questions: "What is the valuation based on?" and "What are the exit scenarios?" As Warwick documents, one client lost $20M by not getting proper documentation for early stock payouts — always get terms in writing.

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
- **Don't play offers against each other crudely**: "Telling Company A that Company B offered more is fine. Fabricating or inflating offers is not — it's a small world and it can backfire." Dragova debunks a common myth (via Lenny's Newsletter): candidates don't need to provide copies of other offers — "You signed an NDA before every interview; use that as a reason." Simply saying you're speaking to other companies is sufficient leverage.
- **Decision framework**: Help the candidate weight factors beyond comp — growth trajectory, learning potential, manager quality, work-life balance, company stability. As Dragova notes: "Getting paid more up-front doesn't always mean you'll make the most overall. Plan carefully." Consider how promotions work, manager influence, product/team visibility, and company brand value to the candidate's future earnings trajectory. The highest-paying offer isn't always the best offer.
- **Negotiation order**: Dragova's sequence — start with overall total compensation (single number), then equity adjustments in a follow-up round, then signing bonus last.

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
