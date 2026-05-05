# bootcamp — Multi-Week Orchestration

The orchestrator skill that runs the full Opportunity → Interview lifecycle as a structured, multi-week program. **Bootcamp does not duplicate other commands' logic.** It sequences them, sets weekly commitments, runs checkpoints, and tracks outcomes.

This file is the entry point. The full program manual lives in `references/bootcamp.md` — read it before running.

---

## Modes

| Mode | Purpose |
|---|---|
| `bootcamp start` | Begin a new program: pick track, set commitment, run Stage 1 Week 1. |
| `bootcamp plan` | Plan the current week's work based on track and stage. |
| `bootcamp audit` | End-of-week audit: what shipped, what didn't, adjustments. |
| `bootcamp checkpoint` | Run the gate review for the current stage transition. |
| `bootcamp pause` | Pause the program — life event, exhaustion, course-correction. |
| `bootcamp resume` | Resume a paused program with re-orientation. |
| `bootcamp end` | Wrap up the program: outcomes review, retrospective, next-cycle decision. |

---

## Mode: `start`

**Step 1: Eligibility check.**

- Has `kickoff` been run? If no, run it first.
- Is the user willing to commit 5-10 hours/week for 8-12 weeks? If they hedge, surface the trade-off honestly: "Bootcamp under 5 hours/week doesn't compound. Do you have it, or should we run individual commands as needed instead?"
- Is the user in the middle of an active interview cycle (interview within 2 weeks)? If yes, finish that cycle first.

**Step 2: Track selection.**

Walk through the four tracks (Brand-First, Network-First, Project-First, Hybrid — see `references/bootcamp.md`). Pick one based on the user's existing strengths.

**Step 3: Commitment.**

- Hours per week (5-10 typical).
- Day/time of weekly plan + audit.
- 12-week target end date.
- Track choice.

Write to `## Bootcamp State` in coaching_state.md.

**Step 4: Run Stage 1 Week 1.**

Hand off to `compass` Session 1 (or directly to the Week 1 schedule for the chosen track in `references/bootcamp.md`).

---

## Mode: `plan`

For the current week:

1. Read `## Bootcamp State` — current week, stage, track.
2. Look up the week's commitments per the track schedule.
3. Read last week's `audit` results (Session Log).
4. Adjust commitments based on what shipped vs. what didn't last week. Don't carry forward stalled work without naming why.
5. Confirm this week's commitments with the user.
6. Schedule the audit at end of week.

Output: this week's commitments, the commands the user will run, and what success looks like.

---

## Mode: `audit`

End-of-week review:

- For each commitment: shipped / partially / not started?
- For "not started" or "partially": what got in the way?
- What was learned that wasn't predicted?
- What changed in the user's life or context?
- Are we still on the original track, or does the data suggest a track adjustment?

Apply Challenge Protocol (Directness Level 5) for missed commitments. Avoid both extremes: don't shame, but don't paper over.

If 3 weeks in a row of significantly missed commitments: stop. Run the meta-question: is bootcamp the right structure for this user's current life? Either reduce commitment, change track, or pause.

Update Session Log with the audit. Update `## Bootcamp State` with current week's metric snapshot.

---

## Mode: `checkpoint`

Run the gate review for the current stage transition. The five checkpoints are defined in `references/bootcamp.md`:

1. **Compass Lock** — after Stage 1.
2. **Position Lock** — after Stage 2.
3. **Distribution Active** — after Stage 3.
4. **Network Live** — after Stage 4.
5. **Conversion Ready** — after Stage 5 (entry, not exit — Stage 5 is ongoing).

For each checkpoint:
- Walk the pass criteria.
- Cite evidence from coaching_state.md (compass section exists with high confidence; brand thesis written; X content pieces published; etc.).
- Verdict: **Pass** / **Soft pass** (advance with named caveats) / **Fail** (do not advance).

If **Fail**: do not advance. Plan a remediation week. Common remediations:
- Compass Lock fail → second compass cycle, possibly with peer interviews (Deep depth).
- Position Lock fail → revisit `brand` with sharper focus on POV.
- Distribution Active fail → either cadence is wrong (reset) or there's avoidance to surface (apply Challenge Protocol).
- Network Live fail → smaller-scope `mapping` and `relationships` reset.

Log checkpoint result to `## Bootcamp State` (Last checkpoint + verdict).

---

## Mode: `pause`

Life happens. Pausing is fine.

- Capture the reason (real reason, not "too busy"). The reason informs whether bootcamp resumes or ends.
- Mark `Active program: paused` in `## Bootcamp State`.
- Note last commitments + last completed work.
- Set a soft check-in date (4-6 weeks out). When that arrives, `bootcamp resume` re-engages from where it stopped.

---

## Mode: `resume`

Re-orientation:

- Read prior `## Bootcamp State` and Session Log.
- Was the work done since pause? (Sometimes the user pauses and then organically does the next 3 weeks of work without realizing.)
- Has compass/brand changed during the pause?
- Adjust the schedule for the new context.

If the pause has been 3+ months: treat resume as a partial restart — re-run `compass` (Quick mode) and `brand` review, then continue from there.

---

## Mode: `end`

End-of-program retrospective:

- Outcomes review against bootcamp's success metrics (`references/bootcamp.md` — Success Metrics).
- Compass stability — does the user still endorse the compass that was set in Week 1?
- Brand thesis stability.
- Reciprocity ratio.
- Inbound count + alignment.
- Aligned offers / role changes.
- Network durability assessment.

Hand off:
- If bootcamp produced an active interview pipeline → Interview Track is now primary.
- If outcomes are partial — the system is built but inbound is just starting — recommend a second 12-week cycle with adjusted targets.
- If bootcamp didn't produce expected outcomes despite execution — diagnose. Likely culprits: compass clarity (most common), audience/channel fit, or timing (some segments take 18+ months).

Archive the bootcamp state. The next cycle starts fresh but draws on the prior cycle's learnings.

---

## Coordination With Other Commands

When bootcamp is active:

- The user is welcome to invoke any other command directly (`compass`, `brand`, etc.). Bootcamp doesn't trap them.
- The coach should reference bootcamp commitments when relevant: "We're in Week 6 of bootcamp; this week's commitments include `relationships give`. Want to address that now or later this week?"
- Other commands (especially `progress`) should be aware of bootcamp state and weave bootcamp metrics into their reviews.

When bootcamp produces an active interview process:

- Hand off cleanly. Interview Track takes over for that opportunity.
- Bootcamp continues in parallel — distribution and relationship work doesn't pause for one interview cycle.
- If multiple interviews compete with bootcamp time, decide together: pause bootcamp temporarily, or accept reduced bootcamp velocity for the duration.

---

## Recommended Next

After `start`: hand off to `compass` Session 1.

After `plan`: execute the week's commands.

After `audit`: continue to next week's `plan`. **Alternatives**: `bootcamp checkpoint` if a stage transition is due.

After `checkpoint` (Pass): advance to next stage. After `checkpoint` (Fail): plan remediation week.

After `end`: decide on next cycle, pause, or move primarily into Interview Track.
