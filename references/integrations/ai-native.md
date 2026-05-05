# Integration Notes — `jazzmind/ai-native`

This document outlines how the interview-coach + opportunity-system skill could be integrated with the [ai-native](https://github.com/jazzmind/ai-native) advisory platform. It is a planning artifact, not an implementation: ai-native is an external project we don't control, and the integration surface should be revisited against the actual repo state before code lands.

These notes are intentionally adapter-focused. The two systems should remain independently useful; integration should compose them, not couple them.

---

## What ai-native Is (Working Model)

Per the public README at the time of this writing, ai-native is a multi-agent advisory platform:

- **Frontend**: Next.js chat UI with Electron desktop.
- **Backend**: Node.js API routes that route to **Claude Managed Agents**.
- **Database**: Postgres (Neon) via Drizzle ORM for conversations, memory, feedback, behavior tracking.
- **Agents**: Seven domain advisors (Founder, Strategy, Funding, Finance, Legal, Growth, Technology), plus a **Chief of Staff** orchestrator and a **QA Judge**.
- **Modes**: Advise, Coach, Plan, Assist, Execute.
- **Memory**: Persistent, organized by type, scoped per project/workspace.
- **Expert-in-the-loop** review and behavioral adaptation.

The interview-coach + opportunity-system skill is not currently any of those advisors; it covers a different domain (career, brand, network, opportunity, interview) and a different operating model (file-based persistent state in `coaching_state.md`, command-driven workflows).

---

## Integration Hypothesis

There are three plausible integrations, in order of decreasing coupling and increasing safety:

### Option 1 — Career Advisor (additive)

Add this skill as an additional ai-native domain advisor — alongside Founder, Strategy, Growth, etc. — with names like `career` or `opportunity`.

**Pros:** Natural fit. Extends the platform's surface area into a domain it doesn't currently cover.

**Cons:** Requires this skill to be reformulated as a managed-agent prompt (or set of prompts) rather than a SKILL.md + reference-file structure. The state model would need to migrate from `coaching_state.md` to ai-native's typed memory store.

**Recommended only if** ai-native maintainers want to officially extend the platform into career coaching.

### Option 2 — External Skill Linked via Chief of Staff (loose integration)

Keep this skill repo as-is (file-based, command-driven, used in Claude Code or compatible IDEs). Have ai-native's Chief of Staff orchestrator know how to delegate career-related requests to this skill — either by spawning a Claude session that loads the skill, or by referencing this skill's outputs.

**Pros:** Minimal coupling. Both systems evolve independently. Users who run ai-native get career coverage; users who run this skill alone keep the existing experience.

**Cons:** Two memory systems. Outputs from this skill (compass, brand thesis, target ecosystem, network map, storybank) need to either flow into ai-native's memory or be referenced as external artifacts.

**Recommended baseline.** This is what an integration should look like first.

### Option 3 — Skill-as-Agent Bridge (full bridge)

Build an adapter that exposes this skill's commands as ai-native agent endpoints, with ai-native's memory system as the canonical state store and this skill's reference files as the working knowledge base.

**Pros:** Full integration. Coaching state visible to other ai-native advisors (e.g., Founder advisor knows the user's career compass).

**Cons:** Significant adapter work. Must keep behavior identical to standalone use, which means the adapter is a translation layer between two paradigms.

**Recommended later** — only after Option 2 has proven the value of integration.

---

## Adapter Surface (Option 2 / Option 3)

If integration goes ahead, these are the interface points to define and stabilize.

### State Sync

This skill's canonical state is `coaching_state.md` — a single Markdown file with structured sections defined in `SKILL.md`. ai-native's canonical state is a typed Postgres schema accessed via Drizzle.

Adapter needs:
- A read mapping from each `coaching_state.md` section to a structured shape ai-native can store (Compass, Brand Strategy, Target Ecosystem, Network Map, Storybank, Score History, etc.).
- A write mapping from updates ai-native or other agents make back into `coaching_state.md`.
- Conflict resolution rules: both sides can write; this skill expects to be the source of truth for career-coaching artifacts. The adapter should serialize updates rather than allow concurrent edits.

A stable v1 sync is one-directional: this skill writes, ai-native reads. Bidirectional sync should wait until concrete needs justify it.

### Command Routing

This skill exposes 30+ commands (see SKILL.md Command Registry). ai-native's Chief of Staff would not invoke each individually. Recommended grouping for routing:

| ai-native intent | Skill commands to invoke |
|---|---|
| "Help me figure out what I want from my career" | `compass` |
| "Build my career strategy" | `compass` → `targets` → `brand` → `bootcamp start` |
| "I have an interview at [company]" | `prep [company]` |
| "Just had an interview" | `debrief` |
| "Critique my LinkedIn / resume" | `linkedin` / `resume` |
| "Run the full career bootcamp" | `bootcamp start` |
| "I have an inbound opportunity" | `opportunities log` + (if JD) `decode` |
| "Help me reach out / network" | `outreach` / `intro` / `relationships` |

The router lives in ai-native's Chief of Staff prompt; this skill itself shouldn't be modified to know about ai-native.

### Memory Translation

ai-native organizes memory by type (per the README, persistent memory across sessions, organized by type). Suggested mapping:

| ai-native memory type | This skill's source |
|---|---|
| User profile / values | Compass section |
| Goals | Aligned-opportunity sentence + Bootcamp State |
| Project state | Active interview loops + bootcamp current week |
| Knowledge base / artifacts | Storybank, Brand Strategy, Content Calendar |
| Relationships | Network Map + Relationship Pipeline |
| History / outcomes | Score History, Outcome Log, Conversion Log |

The adapter translates between Markdown sections and ai-native's memory schema. Keep the mapping explicit and versioned — schema migrations on either side will require adapter updates.

### Mode Mapping

ai-native has five modes (Advise, Coach, Plan, Assist, Execute). This skill is primarily **Coach** by default — it leads with self-reflection, direct feedback, and structured workflows. The mapping:

| ai-native mode | How this skill maps |
|---|---|
| **Advise** | Reduce coaching scaffolding, lead with verdict + reasoning. Roughly equivalent to Directness Level 5 + skipping reflection prompts. |
| **Coach** | Default — exactly how the skill operates. |
| **Plan** | Bootcamp `plan` mode + multi-step intent sequences. |
| **Assist** | Pre-fill drafts (e.g., outreach messages, content outlines) with annotations rather than coach the user to write them. |
| **Execute** | Limited — the skill doesn't autonomously send messages. Could publish drafts to a queue for user approval. |

The skill's `feedback directness` (1-5) and ai-native's modes are related but not identical. Make the mapping explicit; don't silently override.

### Expert-in-the-Loop

ai-native supports expert review. The natural integration point is at high-stakes outputs:
- Compass at low confidence (could route to a human career coach for review).
- Brand thesis (could route to a peer reviewer).
- Real interview transcript analyses (could route to an interview coach who knows the target company).

This skill doesn't currently distinguish "expert review eligible" outputs. If integration with ai-native's expert review is desired, add a tag at command output: `expert_review: recommended | optional | not_applicable`.

---

## Concrete Next Steps (When Integration Is Pursued)

1. **Read the actual ai-native repo state** — README, agent prompt files, mode templates, memory schema. The notes above are based on a single README fetch and may be stale.
2. **Decide between Options 1, 2, 3.** Default to Option 2.
3. **Build a state-mirror adapter** — read-only first. Confirm the mapping holds for real users on both systems.
4. **Add a routing prompt addendum to ai-native's Chief of Staff** — so career-related requests get routed to this skill rather than to one of the existing seven advisors.
5. **Pilot with 2-3 users** running both systems. Surface conflicts, refine the mapping.
6. **Publish a version-pinned compatibility note** — this skill version X is compatible with ai-native commit/version Y. Don't claim broader compatibility than was tested.

---

## What Not to Do

- **Don't fork this skill to "integrate" it.** The skill should remain standalone-usable. Integration is an adapter responsibility.
- **Don't move state into ai-native's database before validating the mapping.** Bidirectional sync without confirmed schemas creates data loss risk.
- **Don't auto-trigger commands without user awareness.** ai-native's Execute mode shouldn't autonomously run `outreach` or `intro` — those send real messages and burn real social capital. Stay at Plan/Assist for these.
- **Don't conflate "career advisor" with the existing Founder advisor.** The Founder advisor in ai-native is about personal alignment for someone running a company. This skill is about career and opportunity for someone in a job search or career build. Overlap exists; equivalence does not.

---

## Open Questions (For ai-native Maintainers)

1. Are you interested in extending ai-native into career/opportunity coverage, or is your scope intentionally limited to founder/operator advisory?
2. What's your preferred integration shape — additional advisor, external skill via Chief of Staff, or full bridge?
3. How is your memory schema versioned, and what's your migration path for schema additions?
4. What's your stance on cross-skill state sharing — does Founder advisor's view of a user share state with a future Career advisor?
5. Do you have an existing convention for external-skill routing (Option 2)?

These should be answered before significant adapter work begins.
