# mapping — Network Topology

Map the candidate's actual network (not their LinkedIn list) into Tier 1 / Tier 2 / Tier 3, identify coverage gaps against the target ecosystem, and surface the highest-leverage relationships to deepen first.

Read `references/opportunity-system.md` (Section: Network Topology).

---

## Priority Check

- If no `targets`: Soft gate — "Mapping without a target ecosystem produces an unfocused list. Want to run `targets` first, or proceed and tier purely by relationship strength?"
- If candidate believes "I don't have a network": Reframe — "Most people who say this have one and don't see it. Let's find it before we conclude that."

---

## Required Inputs

- The candidate's willingness to dig — phone contacts, email, LinkedIn, Slack DMs, calendar history. Mapping is upstream of relationship quality, so the inventory has to be honest.
- Target ecosystem (from coaching_state.md, if available).

## Optional Inputs

- Depth: Quick (1 session, top 30 contacts only) / Standard (2 sessions, full inventory + tiering, default) / Deep (3 sessions, includes Tier 3 path-finding for ecosystem gaps).

---

## Logic / Sequence

### Step 1: Inventory

Walk the candidate through every source of contacts, in order:

1. **Phone contacts** — usually the most overlooked, often the warmest.
2. **Recent calendar** (last 12 months) — who has the candidate actually had real conversations with?
3. **Email "sent" history** — who has the candidate written a substantive message to recently?
4. **LinkedIn 1st-degree connections** — long list, but most are Tier 3 by the test below.
5. **Slack/Discord communities** the candidate is active in.
6. **Past colleagues** — for each company in their history, who would they call?
7. **School / cohort / program alumni** — degree, bootcamp, fellowship, accelerator.
8. **People who have introduced themselves to the candidate** — don't forget reverse-warm contacts.

The output is a long list — typically 50-300 names — that gets tiered.

### Step 2: Tiering

The tier test for each contact:

- **Tier 1 — Strong tie.** "If I texted them today, would they reply within 24 hours? Would they take a 30-minute call this week if I asked?" Both yes → Tier 1.
- **Tier 2 — Warm.** Real history, but no recent meaningful contact (24+ months). Re-warmable with a non-extractive opener.
- **Tier 3 — Cold or LinkedIn-only.** Connected but no real history, or one interaction long ago. Reachable mostly via someone else.

LinkedIn connection counts mean nothing here. The relationship is what it actually is, not what the connection list says.

For each Tier 1 contact, capture:
- Name, role, company.
- Last meaningful contact (date + topic).
- Mutual connections that could become Tier 1/2.
- One thing the candidate could give them this quarter.
- Notes (what makes this relationship valuable, what the candidate values about them, anything sensitive — e.g., "going through divorce, don't ask about partner").

### Step 3: Coverage Gap Analysis

Cross-reference the network map against the target ecosystem.

For each segment / community / Tier 1-2 company in the target ecosystem:
- Does the candidate have a Tier 1 contact there? If yes, mark it.
- Does the candidate have a Tier 2 contact? Mark it.
- Tier 3 reachable via someone? Mark the path.
- No path at all → coverage gap.

Coverage gaps are the inputs to brand and content strategy. You can't network into a room you have no path into; you have to be invited via something you've published, shipped, or shown up to.

### Step 4: Highest-Leverage Relationships

From the Tier 1 list, identify 3-5 contacts that most overlap with the target ecosystem and the candidate's brand thesis. These are the relationships to deepen first — not because you're extracting, but because they're the natural connectors who could amplify content, suggest intros, and notice misalignment.

For each, propose:
- A near-term give (this month).
- A natural cadence (monthly, quarterly).
- A possible eventual ask, if alignment ever supports it (logged but not yet activated).

### Step 5: Tier 3 Path-Finding (Deep only)

For the most important coverage gaps, find the bridge:
- Which Tier 1/2 contact is most likely to know someone at [target company]?
- What's the shortest credible path?
- What would the candidate need to do (build, write, ship) to make a warm intro from that bridge actually land?

Output: a small set of "intro-ready" paths to revisit during `intro`.

---

## Output Schema

Write to coaching_state.md under `## Network Map`:

```markdown
## Network Map

### Tier 1 — Strong ties
| Name | Role / Company | Last meaningful contact | Mutuals | Notes |

### Tier 2 — Warm
| Name | Role / Company | Last meaningful contact | Re-warm idea | Notes |

### Tier 3 — Reachable through 1 hop
| Target | Through whom | Why valuable | Intro asked? |

### Coverage Gaps
- Segments where I have no Tier 1/2 contacts: [list]
- Companies on target list with no path: [list]
- Plan to close gaps: [content / events / direct outreach via brand]
```

---

## Failure Modes

- **Confusing acquaintances with strong ties.** The 24-hour reply test is the discipline. If they wouldn't reply, they're not Tier 1.
- **Inflating Tier 1 to feel less alone.** A short, honest Tier 1 list beats a long performative one. The map is what's real.
- **Skipping the gap analysis.** Mapping without checking coverage against the target ecosystem produces a friend list, not a strategy.
- **Treating LinkedIn count as the network.** If the candidate keeps citing their connection count, redirect to the actual map.

---

## Recommended Next

**Recommended next**: `relationships` — set the cadence and give-before-ask plan for Tier 1 + the 3-5 highest-leverage contacts. **Alternatives**: `brand` + `content` (if coverage gaps dominate the picture and the user needs distribution to enter rooms they can't network into), `intro` (if a specific Tier 3 path is ready to activate now).
