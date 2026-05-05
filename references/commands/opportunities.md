# opportunities — Inbound Opportunity Funnel

When the system works, opportunities arrive — sometimes faster than the candidate expects. Track every inbound, score against compass, manage stage transitions, and surface patterns about what's pulling.

Read `references/opportunity-system.md` (Section: Inbound Funnel Hygiene) and `references/commands/decode.md` (used for inbound JDs).

---

## Why This Command Exists

Many candidates working an Opportunity Track system fail at the inbound stage in two ways:

1. **Saying yes to flattering misalignments.** A prestigious inbound that doesn't match compass, accepted because saying no feels wasteful.
2. **Ghosting good fits.** An inbound arrives at a bad moment, the candidate doesn't respond fast enough, and the door quietly closes.

This command makes the funnel explicit so neither happens silently.

---

## Priority Check

- If no `compass`: Soft gate — "I can log inbounds, but without compass we can't score fit. The data will be fine for tracking, weak for decisions. Want a quick `compass` first?"
- If candidate is logging an inbound currently in active interview process: Coordinate with Interview Track. The Interview Loops section may already have this opportunity logged; cross-reference.

---

## Required Inputs

- The inbound itself: who, where it came from, what's the offer/conversation.

## Optional Inputs

- Mode: `log` (record a new inbound) / `score [name/company]` (compass-fit assessment) / `move [name/company] [stage]` (stage transition) / `audit` (pattern review across recent inbounds).
- JD if available (will trigger `decode` flow).

---

## Modes

### Mode: `log`

Capture every inbound, even ones the candidate immediately knows aren't aligned. Pattern detection requires data.

For each:
- Date.
- Source: cold inbound / warm intro / event / content reaction / referral / other.
- Person + company.
- Type: job / contract / advisor / collab / speaking / other.
- Stage (initial state): "surfaced."
- Initial impression in 1 line.

If the inbound came with a JD or detailed description, optionally trigger `decode` for full JD analysis.

### Mode: `score [name/company]`

Score the inbound against the compass:

- Pull the aligned-opportunity sentence from `## Compass`.
- Score the inbound against each component:
  - Work shape match: yes / partial / no.
  - Values/environment match: yes / partial / no.
  - Anti-criteria violation: any? (Even one anti-criteria violation is a strong signal to pass.)
- Verdict: **Aligned** / **Investable adjacent** / **Misaligned**.

If verdict is **Misaligned** but candidate is tempted: name what's pulling them. ("It's prestigious." "It pays a lot." "I'm tired of looking.") None of those are wrong reasons — but the candidate should make the decision with the trade-off named, not because the misalignment got obscured.

If verdict is **Aligned** or **Investable adjacent**: move to next stage; continue to the Interview Track when "formal process" is reached.

### Mode: `move [name/company] [stage]`

Stage progression:

| Stage | What it means | Fit confidence required |
|---|---|---|
| **Surfaced** | Logged. No conversation yet. | Any |
| **First conversation** | Initial chat held. | Aligned or Investable adjacent |
| **Explore** | Specific role/scope under discussion. | Aligned or Investable adjacent |
| **Formal process** | Real interview process started. Hand off to Interview Track. | Aligned, ideally |
| **Decision** | Offer / declined / passed. | — |

At each transition, ask:
- Is this still aligned? (Re-score if anything has changed.)
- What was learned in this stage that the candidate didn't know before?
- What's the next concrete step + by when?

When stage moves to **Formal process**, automatically:
- Create or update `## Interview Loops` entry for the company.
- Recommend Interview Track sequence: `decode` (if JD) → `prep` → etc.

When stage moves to **Decision** (offer or declined): log result to Outcome Log. If offer, hand off to `negotiate`.

### Mode: `audit`

Run every 5-10 inbounds, or quarterly, whichever comes first.

**Pattern questions:**

1. **Source mix.** Where are inbounds coming from? Cold / warm intro / events / content / referral. Surface the dominant source.
2. **Alignment hit rate.** What fraction of inbounds are scored Aligned? If <30%, the brand is pulling the wrong audience or compass is ambiguous.
3. **Conversion rates between stages.** Surfaced → First conversation → Explore → Formal process. Where are inbounds dropping?
4. **What's pulling.** Trace aligned inbounds back: did they reference a specific post, project, talk, mutual? Pattern-match.
5. **What's not pulling.** Effort poured into channels that produce nothing.

**Recommended actions** based on patterns:
- If most inbound comes from one piece of content → double down on that thesis variant in `content`.
- If most inbound comes from one person → recognize the connector and invest in that relationship in `relationships`.
- If alignment hit rate is low → revisit `brand` (is the audience right?) or `compass` (is the definition right?).
- If conversion drops at first conversation → coach the conversation skills via `convert`.
- If formal process opportunities aren't converting → Interview Track issue, run `progress`.

---

## Output Schema

Write to coaching_state.md under `## Inbound Opportunity Funnel`:

```markdown
## Inbound Opportunity Funnel
| Date | Source | Person/Company | Type | Stage | Fit verdict | Next action |
```

Update rows on stage transitions. Cross-link to `## Interview Loops` when stage reaches **Formal process**.

---

## Failure Modes

- **Selective logging.** Only logging the inbounds that feel important. Missing the pattern data.
- **Stage drift.** Inbound stuck at "Explore" for 4+ weeks with no movement and no decision. Force the question: is this real, or is the candidate avoiding the call?
- **Compass override.** Saying yes to a misaligned inbound because the alternative is doing nothing. Name it. Sometimes it's the right call. But name it.
- **Skipping handoff.** Inbound reaches "formal process," but the candidate doesn't trigger Interview Track prep. Then the interview goes badly. Make the handoff explicit.

---

## Recommended Next

After `log` + `score` (Aligned): when ready, `convert` (move to first conversation) or proceed to formal process (Interview Track via `decode`/`prep`). **Alternatives**: `relationships` (note the source for reciprocity).

After `move` to **Formal process**: `decode [company]` if JD available, then `prep [company]`. **Alternatives**: skip `decode` if JD analysis is unnecessary.

After `audit`: act on the surfaced patterns. **Alternatives**: revisit `brand` or `compass` if the patterns suggest upstream issues.
