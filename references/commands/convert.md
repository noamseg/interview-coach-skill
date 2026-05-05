# convert — Conversation-to-Opportunity Conversion

Coach the candidate through the conversion gap: the meetings, intros, and conversations that *could* become opportunities, but only if the right bridge is built. Where most networking effort dies — great conversations followed by silence.

Read `references/opportunity-system.md` (Section: Conversation-to-Opportunity Conversion), `references/commands/decode.md`, and `references/commands/prep.md`.

---

## Why This Command Exists

A coffee chat is not an opportunity. An intro call is not an opportunity. A great conversation that ends "let's keep in touch" is not an opportunity. They are *upstream* of opportunity — and the conversion happens in the bridge between conversation and concrete next step.

Most candidates are good at having the conversation and bad at building the bridge. This command teaches the bridge.

---

## Priority Check

- If no `compass`: Soft gate — "Without a compass, conversion looks like 'land what's in front of you.' That's how people end up in misaligned roles. Want a quick `compass` first?"
- If conversation is in <24 hours and the candidate is asking for prep: Triage to fast-prep mode.

---

## Required Inputs

- The conversation under consideration: who, what was said, where it stands now.

## Optional Inputs

- Mode: `before` (pre-conversation prep) / `during` (live coaching during, rare) / `after` (post-conversation conversion plan) / `revive` (a stalled lead the candidate wants to restart).
- Conversation transcript or the candidate's recall.

---

## Modes

### Mode: `before`

Pre-conversation prep. Brief — under 30 minutes for most prep.

- **Goal for this conversation.** Specific and not a job ask. "Understand how X thinks about pricing for stage Y." "Get their honest read on whether my brand thesis lands with people in this segment." "Find out what's actually going on at company Z under the marketing layer."
- **What the candidate brings.** Something specific to talk about — recent work, a piece of content, a question they've been wrestling with. Tie to brand thesis.
- **Foreshadowed ask, if there will be one.** If the conversation is meant to lead toward a specific opportunity, foreshadow it — don't reveal it as a surprise at the end.
- **Listening orientation.** The candidate should plan to listen 60-70% of the time. Most pitches in coffee chats fail because the candidate dominates.

### Mode: `during`

Live coaching mid-conversation is rare. If asked, give one specific tactical move:
- "Ask about their hardest problem this quarter, then shut up for two minutes."
- "If they offer a follow-up, make it concrete: 'send you what by when?'"
- "If they ask what would help, have one specific small thing ready, not a long list."

### Mode: `after`

Post-conversation, within 24-48 hours. This is where conversion happens or doesn't.

**Step 1: Capture the conversation.** What was said, what struck the candidate, any specific follow-ups promised.

**Step 2: Diagnose alignment.** Did the conversation reveal genuine alignment with what the candidate actually wants? (Cross-check against compass.)
- **Strong alignment** — pursue with conversion bridges.
- **Partial alignment** — keep warm via Relationship Pipeline, no specific conversion needed yet.
- **Misaligned** — graceful close (give-and-release), don't force.

**Step 3: Choose the conversion bridge.** Not every conversation needs every bridge. Pick the most natural one.

**The bridges:**

1. **Collaboration test.** Offer to do a small piece of work together — review a draft, look at a problem, prototype a thing. Demonstrates fit faster than any pitch. Best when the conversation hinted at a shared problem.

2. **Follow-up artifact.** Send something within 48 hours that the conversation prompted — an article, a contact, a piece of work, a question. Keeps the conversation alive without an ask. Best when alignment isn't yet clear and you want to maintain the connection.

3. **Named ask.** When alignment is established, make the ask specific and small enough to say yes to. "I'm thinking about the X role at Y — would you be open to flagging it to whoever's running that hiring process if I sent you a one-pager?" Beats "any leads?"

4. **Graceful pass.** If alignment isn't there, end cleanly: "This was useful, here's something I'd send you that's relevant, let me know how I can be helpful." Burns no bridges, leaves the door open.

For each bridge picked, draft the actual message. Coach against `outreach.md` Message Quality Rubric.

**Step 4: Schedule the next checkpoint.**
- If a follow-up artifact is going: send within 48 hours, log next touch in 2-4 weeks.
- If a collaboration test is offered: offer concrete, time-boxed scope (≤2 hours of work). If they accept, schedule the deliverable.
- If a named ask is made: send and wait 2-3 weeks before the soft follow-up.
- If graceful pass: log to Relationship Pipeline at appropriate tier.

**Step 5: Log the conversion event.**

Write to `## Conversion Log`:
| Date | Conversation | Bridge used | Ask | Result | What converted / didn't |

The Result column gets updated when something concrete happens (next interview, project signed, no response).

### Mode: `revive`

A stalled lead. The candidate had a great conversation 3-6 months ago, things looked promising, then it went quiet.

**Diagnosis:**
- Did the candidate follow up after the original conversation? If not, that's the issue. Re-warm.
- Did the lead fall through external causes (their funding round failed, their priorities shifted)? If so, revive with timing-aware re-warm.
- Did the candidate's compass shift? Maybe this lead is no longer aligned. Verify before reviving.

**Re-warm options:**
- Send a recent piece of content that connects to what was discussed originally.
- Acknowledge the gap honestly, share what you've been working on, ask what's new on their side.
- If a specific event occurred (their company hit a milestone, they posted something), reference it and re-engage from there.

If the lead is dead despite a good re-warm, mark it dead. Some opportunities are real at one moment and not at another.

---

## Output Schema

Write to coaching_state.md under `## Conversion Log`:

```markdown
## Conversion Log
| Date | Conversation | Bridge used | Ask | Result | What converted / didn't |
```

If the conversion produces a job conversation, also create or update `## Interview Loops` entry and hand off to Interview Track.

---

## Failure Modes

- **The surprise pivot.** Going into a conversation with a hidden ask and revealing it at the end. Destroys trust. Foreshadow asks before, not after.
- **The vague follow-up.** "Great chatting!" with no specific next step. Conversion gap.
- **Premature ask.** Asking for the job/intro/referral on the first conversation. Almost always backfires unless the conversation explicitly invited it.
- **The conversation marathon.** Many great conversations, no conversion bridges, no opportunities. The fix is bridges, not more conversations.
- **The half-bridge.** Promising a follow-up artifact and not sending it. Worse than no promise.

---

## Recommended Next

After `before`: have the conversation. Then `convert after`.

After `after` (Strong alignment + Named ask): wait for response; meanwhile add to Relationship Pipeline. If the ask becomes a formal process: hand off to Interview Track (`decode` → `prep`).

After `after` (Partial alignment): `relationships` to set the appropriate cadence.

After `after` (Misaligned): close gracefully, log to Pipeline at low priority.

After `revive`: if revived, treat as new `convert before` cycle. If dead, log and move on. **Alternatives**: `mapping` (if many leads are dying, the network strategy may need to change).
