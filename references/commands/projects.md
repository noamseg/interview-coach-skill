# projects — Proof-of-Work Projects

Coach the candidate through public projects whose purpose is to prove the brand thesis to the target ecosystem and seed future stories. Projects in the Opportunity Track are not portfolio padding — they are deliberate artifacts.

Read `references/opportunity-system.md` (Section: Proof of Work), `references/commands/brand.md`, and `references/storybank-guide.md` (completed projects seed the Storybank).

---

## Priority Check

- If no `brand`: Hard gate — "Projects without a brand thesis tend to drift into hobbies. Run `brand` first to align."
- If candidate has 3+ active projects already: Force triage — "You've got more in flight than is shippable. Let's pick one to ship and either pause or kill the others."

---

## Required Inputs

- Brand Strategy (target audience + thesis + defensible POV).
- Compass (open questions — projects are good vehicles for testing low-confidence compass entries).

## Optional Inputs

- Mode: `propose` (generate aligned project ideas) / `scope [project]` (define hypothesis, ship date, audience) / `coach [project]` (in-flight coaching) / `ship [project]` (ship-day choreography) / `debrief [project]` (post-ship learning + Storybank seeding).
- Existing project ideas under consideration.

---

## Modes

### Mode: `propose`

Generate 5-7 project ideas drawn from:
- Defensible POVs in Brand Strategy — each POV deserves at least one demonstration project over time.
- Open questions in Compass — projects are testing apparatus.
- Coverage gaps in the target ecosystem — projects can be invitations into rooms the candidate can't network into.
- Real problems the candidate has noticed in target ecosystem they could plausibly contribute to (open source, a tool that doesn't exist, a write-up nobody else has done).

For each idea capture:
- Hypothesis: what does shipping this prove?
- Brand alignment: which POV or thesis component does this advance?
- Audience: who is meant to find this, and how?
- Format: code repo, essay, deck, video, dataset, talk, tool.
- Effort estimate: hours over how many weeks.

Force ranking. The candidate picks one (or two if they have capacity). Three is a stretch. Five is a guarantee none ship.

### Mode: `scope [project]`

For one chosen project:

**Step 1: Hypothesis statement.** "If I ship this, I expect [target audience] to react with [specific reaction]. If that doesn't happen, I'll learn [X about my brand thesis]."

A project without a falsifiable hypothesis is decoration.

**Step 2: Audience and discovery path.** Who specifically should find this? How will they find it? Channel ranking from `brand` applies. If the project ships to a channel the audience doesn't use, the project will succeed silently.

**Step 3: Ship date.** Hard date. The candidate commits. Bias toward earlier — a worse v1 shipped beats a better v2 imagined.

**Step 4: Scope cut.** Take the candidate's initial scope and cut it by half. Then half again. The smaller the v1, the higher the probability of shipping, the faster the learning loop.

**Step 5: Anti-perfection clauses.** Define the v1 quality bar. Examples:
- "Shipping when the README + demo work for one use case. Edge cases come later."
- "Publishing when the essay has one strong example and one defensible POV. Three more examples can come in v2."
- "Talk submitted when the abstract is good, even if the slides are 60% done. Slides finish in the next 2 weeks."

### Mode: `coach [project]`

For an in-flight project:

- Where is the candidate vs. the ship date?
- What's blocking? (Genuine technical blocker, scope creep, perfectionism, fear of shipping to target audience?)
- Apply the scope cut again — what could be deferred to v2 to ship sooner?
- Is the brand alignment still intact? (Projects drift. Mid-flight check.)

If the candidate is more than 2 weeks past the original ship date with no clear blocker: name it. Apply Challenge Protocol if Directness Level 5 — perpetual projects are usually proof of avoidance, not proof of work.

### Mode: `ship [project]`

Ship-day choreography:

- Public artifact published (repo, essay, deck — wherever it lives).
- Discovery path activated:
  - Posted on primary channel from Brand Strategy.
  - Sent to 5-10 Tier 1/2 contacts who would genuinely care (not a blast — specific notes).
  - Submitted to relevant communities/newsletters if the format fits.
- Add to Projects table with status "Shipped."
- Schedule debrief in 14-21 days (enough time for reactions to land).

### Mode: `debrief [project]`

Post-ship, ~2-3 weeks after shipping:

**Step 1: Hypothesis check.** Did the predicted reaction happen? Yes / partially / no.

**Step 2: Audience analysis.** Who actually engaged?
- Target audience members? (Highest-signal.)
- Adjacent audience? (Useful.)
- Wrong audience? (Means the discovery path or the framing was off.)
- Nobody? (Either the discovery path failed or the project didn't resonate with anyone.)

**Step 3: Inbound surfacing.** Did this project produce any inbound — DMs, conversations, opportunity hints? Log to `## Inbound Opportunity Funnel` if yes.

**Step 4: Storybank seeding.** Create at least one story:
- Title that reads as a proper story (not "I shipped a thing").
- STAR structure with the project's actual decisions.
- Earned secret: what the candidate now believes that they didn't before.
- Save to Storybank with full Story Details.

**Step 5: Brand thesis update.** Did this project's reception support, contradict, or refine the brand thesis? Note any update needed.

**Step 6: Next project.** If the project was a success, what does v2 or the next adjacent project look like? If it was a failure, what does the failure mean for `brand` and `compass`?

---

## Output Schema

Write to coaching_state.md under `## Projects (Proof of Work)`:

```markdown
## Projects (Proof of Work)
| Project | Hypothesis | Brand alignment | Audience | Status | Public artifact | Result |
```

After debrief, also seed Storybank (`## Storybank` and `### Story Details`).

---

## Failure Modes

- **Perpetual project.** The project is always almost ready. Apply scope cut + force a ship date.
- **Hidden project.** Built but not shipped to target audience. The discovery path is half the work.
- **Misaligned project.** Built to the candidate's interests but not to the brand thesis. Hobby, not proof of work.
- **Resume-stuffer project.** Built to look impressive on a resume, with no audience hypothesis. These never compound.
- **The infinite v2.** Shipping v1, then immediately starting v2 instead of debriefing v1 and starting next project. Diminishing returns. Move on after debrief unless v1 generated specific user demand.

---

## Recommended Next

After `propose`: `projects scope [chosen]` — define the hypothesis and ship date. **Alternatives**: more `compass` if no project feels alignment-clear (means compass needs work).

After `scope`: build. Coach in-flight via `projects coach` if blocked.

After `ship`: `content` — write a piece introducing the project to the target audience (the project IS content). **Alternatives**: `relationships` (signal the ship to relevant Tier 1).

After `debrief`: `projects propose` (next project) or revisit `brand` (if the project's reception suggests thesis revision). **Alternatives**: `stories` (improve the seeded story before it's used in interviews).
