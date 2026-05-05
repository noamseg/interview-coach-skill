# content — Content Calendar & Writing Coaching

Convert the brand strategy into a 90-day content calendar, coach individual pieces against the thesis, and audit what's published for inbound signal.

Read `references/opportunity-system.md` (Section: Content Discipline) and `references/commands/brand.md`.

---

## Priority Check

- If no `brand`: Hard gate — "Content without a brand thesis is volume, not strategy. Run `brand` first."
- If `brand` cadence commitment exists: Reuse it. Don't override.
- If candidate is in active interview prep within 7 days: Redirect — "Let's finish the interview cycle. Content this week is a distraction."

---

## Required Inputs

- Brand Strategy (from coaching_state.md).
- Storybank (earned secrets are the renewable content fuel).

## Optional Inputs

- Mode: `plan` (build/refresh the calendar) / `coach [piece]` (coach a specific draft) / `audit` (review published log for inbound signal).
- Specific piece in progress (draft, outline, idea).
- Time horizon — default 90 days.

---

## Modes

### Mode: `plan`

Build or refresh the calendar.

**Step 1: Cadence verification.** Pull cadence from Brand Strategy. Confirm the candidate can still hold it. If they're already 30 days into a missed cadence, force the conversation: "What changed? Do we adjust the cadence or address the blocker?"

**Step 2: Backlog seeding.** Generate 8-12 candidate ideas, drawing from:
- Storybank earned secrets (each strong story is at least one piece).
- The 1-3 defensible POVs in Brand Strategy (each POV needs multiple demonstrations over time, not just one post).
- Open questions in the candidate's compass (these often become "thinking out loud" pieces).
- Recent moments where the candidate had a strong opinion and held back from sharing — those are the highest-signal pieces.
- Reactions to public discourse where the candidate has a defensible counter.

For each idea capture:
- Working title.
- Format (long-form essay / LinkedIn post / thread / talk / repo + write-up).
- Earned secret hook (the unique insight).
- Target audience reaction (what would constitute success — debate? saves? DMs?).
- Estimated effort (hours).

**Step 3: Sequencing.** Sequence the backlog into 90 days against the cadence commitment. Front-load the strongest 2-3 pieces — early wins shape the trajectory.

**Step 4: First piece scoping.** Take the first piece in the calendar. Outline it together — 5-bullet outline, hook, close, one earned secret highlighted. Block the next session as a coaching session on the draft.

### Mode: `coach [piece]`

Coach a specific piece.

**Quality rubric:**

| Dimension | What to check |
|---|---|
| **Thesis tie** | Does this piece reinforce the brand thesis? If a reader couldn't connect this back to the candidate's positioning, it's noise. |
| **Earned-secret content** | Is there at least one insight that only this candidate could write? "Show, don't claim." |
| **Voice authenticity** | Does this sound like the candidate? Watch for AI voice, consultant voice, LinkedIn-speak. |
| **Hook strength** | Does the first sentence/paragraph earn the reader's attention without clickbait? Test against `pitch.md` curiosity-gap principles. |
| **Specificity** | Numbers, names of decisions, real tradeoffs — not "I learned a lot." |
| **Defensible stance** | Would 30%+ of peers disagree? If everyone agrees, it's consensus content. |
| **Channel fit** | Is the format right for the channel? LinkedIn post, Twitter thread, essay, talk all want different shapes. |
| **Anti-brand check** | Does this violate any anti-brand entry? |

Walk the rubric. Surface 2-3 highest-leverage edits. Provide annotations, not a rewritten version. The voice is the asset.

If the piece scores low on multiple dimensions, name it: "This piece doesn't move the brand thesis forward. We can ship it, but it won't compound. Want to either revise toward the thesis, or shelve it?"

### Mode: `audit`

Review the Published log against the success signals from Brand Strategy.

For each piece in the last 90 days:
- Reach (impressions/views — only directionally; don't optimize for reach).
- Reactions (saves > likes > none — saves indicate the piece was useful).
- DMs / replies from target audience (the highest-signal indicator — these are the people the brand is trying to reach).
- Inbound conversations or opportunities traceable to the piece.

**Patterns to surface:**
- Which formats produced inbound from the target audience?
- Which POVs landed (debate, saves, DMs)?
- Which formats produced reach without alignment? (Reach without target-audience traction is a vanity signal.)

**Recommendations:**
- Double down on what works: which thesis variants, formats, channels.
- Stop what doesn't: pieces that get reach but no aligned signal are noise.
- Test what's missing: if the calendar has been monoformat, propose a different format next cycle.

If 90 days of content has produced zero target-audience inbound, the issue is upstream: brand thesis, channel fit, or audience definition. Recommend revisiting `brand`.

---

## Output Schema

Write to coaching_state.md under `## Content Calendar`:

```markdown
## Content Calendar
### Cadence
- Long-form: [frequency + channel]
- Short-form: [frequency + channel]
- Talks/podcasts: [target per quarter]

### Backlog
| Idea | Format | Target audience | Earned secret hook | Status | Date due |

### Published
| Date | Title | Channel | Reaction | Inbound? | Lessons |
```

In-session output (mode-dependent):
- `plan`: backlog table + first-piece outline + next-session block.
- `coach`: 2-3 annotated edits + voice-authenticity check + thesis-tie verdict.
- `audit`: pattern summary + recommendations.

---

## Anti-Patterns (Strict)

- **Ghostwriting / LLM-laundering.** Catch this. The voice is the asset. The coach edits structure, sharpens specificity, never replaces voice. If the candidate asks for "just write the post for me," redirect: "I can outline, edit, sharpen — but if I write it, you don't have a brand, you have a content account."
- **Volume optimization.** Posting daily without thesis is noise. The cadence is a floor, not a sprint.
- **Reach chasing.** Tweaking pieces toward virality at the cost of POV. A 100-impression post that produces 3 inbound DMs from target audience beats a 100k-impression post that produces 0.
- **Ghosted topics.** The candidate avoids the topic that would land hardest because it's the one they have a defensible POV on. Push toward the friction. (Apply Challenge Protocol if Directness Level 5.)

---

## Recommended Next

**Recommended next** depends on mode:
- After `plan`: `content coach [first piece]` — coach the first draft into shape. **Alternatives**: `events` (if a talk fits the calendar), `projects` (if a project is the next piece).
- After `coach`: ship and log to Published table; in 30 days, run `content audit`. **Alternatives**: `relationships` (signal the piece to relevant Tier 1).
- After `audit`: if patterns are clear, refine `brand` (small adjustments) or revise channel ranking. If no inbound after 90 days, return to `brand`. **Alternatives**: `mapping` if the issue may be that the audience isn't even reachable from current channels.
