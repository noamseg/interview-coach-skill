# relationships — Long-Term Relationship Development

Run the candidate's lightweight CRM: cadence per relationship, give-before-ask plan, follow-through queue, and re-warming sequences for Tier 2 contacts. Ensures the network compounds rather than decays.

Read `references/opportunity-system.md` (Section: Give Before Ask Calculus) and `references/commands/mapping.md`.

---

## Priority Check

- If no `mapping`: Soft gate — "I can coach individual relationships, but without the map we'll miss leverage. Want to run `mapping` first?"
- If candidate's reciprocity ledger is significantly negative (more asks than gives in last 90 days): Flag — "You've been asking more than giving recently. Let's plan a giving cycle before any new asks."

---

## Required Inputs

- Network Map (Tier 1 + 2 from coaching_state.md).

## Optional Inputs

- Mode: `cadence` (set or revise cadence per Tier 1) / `give` (plan gives for the next cycle) / `rewarm [name]` (reactivate a Tier 2) / `touch [name]` (coach a specific outreach today) / `audit` (review reciprocity ledger).
- Specific person under consideration.

---

## Modes

### Mode: `cadence`

For each Tier 1 contact:

- What's a sustainable cadence? Default monthly, but adjust to the relationship's natural rhythm. Some relationships work quarterly. Some are weekly because of shared work.
- What's the give-before-ask ratio? Target ≥3:1 over any rolling 6-month window.
- What does "meaningful contact" look like for this person? (Some prefer voice notes, some long emails, some meet IRL, some Slack DM with one good link.)

Output: a cadence schedule. Not a calendar of forced touches — a map of natural rhythm.

For Tier 2 contacts:
- Default cadence: quarterly while relationship is warm, then move to ad-hoc.
- Identify the 3-5 Tier 2 contacts most worth re-warming, based on overlap with target ecosystem.

### Mode: `give`

Plan gives for the next 30 days.

For each Tier 1 contact, identify one possible give:
- A specific intro (only if it's a real fit — not a speed-dating intro).
- A signal-boost of their work (only if genuine).
- A piece of useful info (article, product, person they should know).
- Honest, useful feedback (only when invited).
- A real show-up (their launch, talk, hard moment).

Generic likes/comments don't count.

Constraint: don't manufacture gives. A forced "give" lands as transparent. The discipline is *attention* — paying enough attention to the relationships that real gives surface.

### Mode: `rewarm [name]`

Reactivating a Tier 2 contact who hasn't had meaningful contact in 12+ months.

**The non-extractive opener** has these properties:
- Acknowledges the gap honestly. ("It's been a while" is fine. Manufactured continuity isn't.)
- Brings something useful unprompted. An article they'd care about, a person they should know, a follow-up to something they once mentioned.
- Has no ask. None. The first re-warm is purely a give.
- Is short. ≤4-5 sentences for the message.

After the re-warm, schedule a follow-up touch in 6-8 weeks. Don't ghost the re-warm.

**Anti-pattern:** the re-warm with embedded ask. "Just thinking about you, also wondering if you know anyone hiring." Burns trust permanently.

### Mode: `touch [name]`

Coach a specific outreach today.

Pull from coaching_state.md:
- Last meaningful contact (date + topic).
- Notes (what's sensitive, what they care about, what they value).
- Reciprocity ledger (what they've given recently, what's owed).

Coach the message:
- Reference something specific from the prior interaction or their recent public work.
- Lead with something useful or substantive.
- If there's an ask, foreshadow it briefly and make it small enough to say yes to.

Apply the Message Quality Rubric from `outreach.md` if the candidate is drafting cold or warm-cold; for established relationships, the rubric is overkill — focus on specificity and care.

### Mode: `audit`

Reciprocity ledger review.

- Last 90 days, count gives and asks per Tier 1 contact.
- Who has the candidate given to? Who has the candidate asked of?
- Where is the imbalance?

If the ledger is out of balance:
- Identify 2-3 contacts to give to in the next 30 days, before any further asks.
- If the candidate is *over*-giving without reciprocity from the other side, flag it. A one-way give relationship is friendship, not network. That's fine — but don't expect career leverage from it.

Look for signs of pipeline decay:
- Tier 1 contacts who haven't had meaningful contact in 6+ months are silently moving to Tier 2.
- Tier 2 contacts with no re-warm activity in 12+ months are silently moving to Tier 3.

Surface 3-5 highest-leverage interventions: who to re-engage, who to deepen, who to release.

---

## Output Schema

Write to coaching_state.md under `## Relationship Pipeline`:

```markdown
## Relationship Pipeline
| Person | Tier | Cadence | Last touch | Next touch | Give offered | Ask (if any) | Notes |
```

Update individual rows after each `touch` or `give` cycle.

---

## Failure Modes

- **The fake CRM.** Treating the pipeline as a sales funnel. The relationship is the asset, not the conversion.
- **Forced cadence.** Setting monthly touches and dispatching templated check-ins. Lands as transparent. Real cadence is rhythmic, not scheduled.
- **The favor bank misconception.** Believing every give creates an obligation. It doesn't. Some gives are pure care, and the candidate should be honest about which is which.
- **Ghosting the rewarm.** Sending a re-warm message and then disappearing again. Worse than no re-warm. Schedule the follow-up before sending.
- **Over-asking after a single give.** "I helped you, now help me" is transparent. The 3:1 ratio matters.

---

## Recommended Next

After `cadence`: `relationships give` — plan the first cycle of gives. **Alternatives**: `intro` (if a near-term intro path is ready).

After `give`: execute the gives over the next 30 days; in 30 days, run `relationships audit`. **Alternatives**: `touch [name]` (if a specific outreach is needed today).

After `audit`: act on the surfaced interventions. **Alternatives**: `mapping` (if the audit reveals coverage gaps that need to be addressed via brand and content), `events` (if the audit suggests the network needs new entry points).
