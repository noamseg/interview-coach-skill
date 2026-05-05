# events — Event & Community Strategy

Choose which events and communities to invest in, prepare to show up well, and convert event interactions into Relationship Pipeline entries that compound.

Read `references/opportunity-system.md` (Section: Showing Up) and `references/commands/relationships.md`.

---

## Priority Check

- If no `targets`: Soft gate — "Events without a target ecosystem turn into networking-for-its-own-sake. Want to run `targets` first?"
- If candidate is at an event right now and needs immediate help: Skip planning, jump to `at-event` mode.

---

## Required Inputs

- Event(s) under consideration, OR a community/scene the candidate is evaluating.
- Brand Strategy (target audience must overlap with event audience for the event to count).

## Optional Inputs

- Mode: `plan` (which events to attend) / `prepare [event]` (pre-event prep) / `at-event` (live triage during) / `debrief [event]` (post-event capture and follow-through).
- Budget — time and money. Events have real costs.

---

## Modes

### Mode: `plan`

The candidate has a list of events under consideration; the goal is ruthless prioritization.

For each event, score against:

| Filter | Test |
|---|---|
| **Audience fit** | Does the audience overlap with the brand's target audience? Or is it a different scene the candidate is using to feel productive? |
| **Density** | What's the ratio of target-audience attendees to total attendees? A 200-person curated dinner often beats a 5,000-person conference. |
| **Format leverage** | Is the candidate showing up as attendee, speaker, panelist, organizer, host? Each multiplies leverage. Speaking > panel > attending. |
| **Compounding cost** | Is this a one-shot or a recurring scene? Recurring scenes (annual conferences, monthly meetups) compound. One-shots rarely do. |
| **Cost / time honesty** | What does this actually cost — registration, travel, time off work, prep time, recovery? Is it justified? |

Output: a ranked list of events worth attending, with the top 1-3 marked as "investment events" — the candidate plans for these, not just shows up.

If the candidate's calendar already has 5+ events booked: force triage. Three events with prep > five events without.

**Speaking pathway.** For each "investment event," ask: is there a speaking pathway (CFP, sponsor talk, lightning, panel, hosted side event)? Speaking is 5-10x leverage over attending. If yes, capture the deadline and what would need to be true for the candidate to apply.

### Mode: `prepare [event]`

For one specific upcoming event:

**Step 1: Set one specific goal.** Not "network." Examples:
- "Meet 3 founders working on pricing problems."
- "Find one collaborator for the Q2 project."
- "Get a real-world reaction to the brand thesis from people who'd never heard of me."

**Step 2: Identify 3-5 people worth meeting in advance.** Public schedule + LinkedIn + recent posts. For each:
- Why this person?
- What's a credible reason to talk to them at the event?
- What can the candidate offer them in 30 seconds that's genuinely useful?

**Step 3: Prepare one current thing to talk about.** Tied to the brand thesis. The candidate should be ready to answer "what are you working on" with something specific and recent — not a job title.

**Step 4: Anti-prep.** Identify failure modes for this candidate at this format. Examples:
- "I default to talking to whoever's nearest — set a goal of 3 specific people first."
- "I leave early when overwhelmed — schedule a buffer break midday."
- "I overcommit to follow-ups in the moment — say 'I'll send you a note after,' not 'let's grab coffee Thursday.'"

### Mode: `at-event`

Live triage. Candidate is at the event now.

Quick interventions:
- "Three real conversations beat thirty cards. Quality > quantity."
- "Take a 90-minute break midday. Recall collapses without it."
- "Capture each meaningful conversation in 30 seconds: name, role, one specific thing said, follow-up commitment if any."
- "If you said 'we should grab coffee' to more than two people, you're overcommitting. Pull back."
- "Don't pitch yourself. Ask what they're working on. They'll ask back."

If the candidate texts a specific question ("how do I introduce myself to X who's standing alone?"), answer in <60 seconds with one specific suggestion tied to the brand thesis.

### Mode: `debrief [event]`

Post-event, within 48 hours.

**Step 1: Inventory.** Walk through every meaningful conversation:
- Name, role, company.
- What was said worth remembering.
- Was there a specific commitment? (Send X, intro to Y, follow up on Z.)

**Step 2: Tier and add to Relationship Pipeline.** Each new contact:
- Tier 2 by default if there was a real exchange.
- Tier 3 if it was brief but worth tracking.
- Tier 1 only if the conversation had real depth and mutual interest.

**Step 3: Follow-through queue.** For each commitment made, schedule the follow-up in the next 48 hours. Specific reference to the conversation — "great to meet you" with no specifics fails.

**Step 4: Goal verdict.** Did the goal from `prepare` get met? Yes / partially / no. If no, was it an event-fit issue or an execution issue?

**Step 5: Recurring commitment.** Worth attending again? If yes, mark it as a recurring scene and note the next occurrence. If no, cross it off.

---

## Output Schema

Write to coaching_state.md under `## Events`:

```markdown
## Events
### Upcoming
| Date | Event | Type | Goal | Pre-event prep | Targets to meet |

### Attended
| Date | Event | Conversations worth following | Follow-ups sent | Result |
```

Also update `## Relationship Pipeline` with new contacts captured at the event.

---

## Anti-Patterns

- **Conference tourism.** Attending events for the experience, not the relationships. The Attended log will reveal this — many events, no relationship pipeline growth, no inbound.
- **Card-collection.** Maximizing conversation count. Track quality (Tier 1/2 conversions) instead.
- **The follow-up debt.** Promising follow-ups in the moment, never sending. Burns trust faster than not promising.
- **Speaking without thesis.** Accepting a speaking slot because it's offered, not because it advances the brand. Some talks are net-negative for the brand.
- **Avoiding the smaller scene for the bigger one.** A 50-person curated dinner with target audience often outperforms a 5000-person conference. Density matters more than size.

---

## Recommended Next

After `plan`: `events prepare [top investment event]` — plan the next big event seriously. **Alternatives**: `relationships` (deepen Tier 1 in parallel), `content` (write something to bring with you).

After `prepare`: at the event, use `events at-event` if needed; after, `events debrief`. **Alternatives**: `intro` (if pre-event reveals an intro path).

After `debrief`: `relationships` — bring new pipeline entries into cadence. **Alternatives**: `convert` (if a conversation hinted at a real opportunity), `intro` (if an introduction is now available).
