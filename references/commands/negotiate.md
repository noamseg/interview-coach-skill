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

- Evaluate offer against market data (ask candidate to provide salary range research — Levels.fyi, Glassdoor, compensation surveys). **Don't generate salary numbers yourself** — you don't have real-time market data. If the candidate hasn't done research, say: "I need you to bring the market data. Check Levels.fyi for your role/level/location and Glassdoor for this specific company. I'll help you interpret it and build a strategy around it."
- Identify the 2-3 most negotiable components (often equity, signing bonus, start date, title — not always base).
- Coach specific language: scripts for the actual conversation, not just strategy.
- Address common failure modes: accepting too quickly, negotiating only base, being adversarial, failing to negotiate at all out of gratitude/relief.

### Negotiation Anxiety Coaching

Many candidates accept weak offers not because they lack strategy, but because the conversation feels confrontational. Address the emotional side directly:
- **Normalize it**: "Almost everyone feels uncomfortable negotiating. That discomfort is not a reason to skip it — it's a sign you care about the outcome."
- **Reframe the dynamic**: "You're not asking for a favor. The company chose you and wants you to accept. You have leverage right now — more than you'll have once you've signed."
- **Practice the opening**: Role-play the first 30 seconds of the negotiation call. That's where most candidates freeze. Script it and rehearse it.
- **Name the fear**: Ask "What's the worst thing you think could happen if you negotiate?" Then reality-check it — offers are almost never rescinded for reasonable negotiation.

### Equity Evaluation Guide

Most candidates can't evaluate equity offers. Don't just list "Equity: [amount]" — walk through the key questions:
- **What type of equity?** Stock options (ISOs/NSOs), RSUs, or actual shares? Each has very different tax and value implications.
- **Vesting schedule**: Standard is 4-year with 1-year cliff. Anything else is worth noting.
- **Valuation basis**: For private companies — what's the current valuation? What was the last funding round? What's the strike price?
- **Dilution risk**: For startups — how many funding rounds are expected? Each round dilutes existing shares.
- **Liquidity timeline**: When can you actually sell? IPO timeline? Secondary market availability?
- **Tax implications**: ISOs vs. NSOs have very different tax treatment. AMT risk for ISOs exercised early.
- If this gets complex, flag: "Equity evaluation can get technical. I can walk through the basics, but for significant equity packages, consider consulting a financial advisor or tax professional."

### Multiple Concurrent Offers

When the candidate has more than one offer:
- **Map the full picture**: Create a side-by-side comparison of all offers on: base, equity, bonus, title/level, remote policy, growth potential, team/manager quality, company trajectory.
- **Identify leverage points**: Which offer strengthens your position on the other? "Having a competing offer from [Company B] gives you concrete leverage with [Company A] — here's how to use it."
- **Timeline management**: If offers have different deadlines, coach on buying time: "Can you ask [Company A] to extend their deadline? Here's the script: 'I'm very excited about this offer. I'm in final stages with one other company and want to make a fully informed decision. Could I have until [date]?'"
- **Don't play offers against each other crudely**: "Telling Company A that Company B offered more is fine. Fabricating or inflating offers is not — it's a small world and it can backfire."
- **Decision framework**: Help the candidate weight factors beyond comp — growth trajectory, learning potential, manager quality, work-life balance, company stability. The highest-paying offer isn't always the best offer.

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
