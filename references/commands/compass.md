# compass — Discover What You Actually Want

Help the candidate define what an aligned opportunity actually looks like for them — concretely enough that they could recognize one in the wild and refuse a misaligned one. This is the foundational Opportunity Track command. Most other commands in the track derive from compass output.

Read `references/opportunity-system.md` (especially Section: Discovery Rigor) before running.

---

## Why This Command Exists

Most career searches optimize the search before defining what's being searched for. The result: the user gets pulled toward the loudest opportunities, not the right ones. Compass forces a definition specific enough that it can be tested against real opportunities — and refused.

The deeper claim: the user who has a sharp compass attracts a sharper network, builds a sharper brand, and converts opportunities at a higher rate. The compass is upstream of every other Opportunity Track command.

---

## Priority Check

Before running:
- If `kickoff` hasn't run: Soft gate — "Compass works best with profile context. Want to run `kickoff` first, or proceed?"
- If a recent compass exists (<60 days) and the user wants a fresh run: Ask — "You have a compass from [date]. Do you want to revise it, or rebuild from scratch? Revising preserves continuity; rebuilding lets you challenge the foundation."
- If the user is in active interview prep (interview <14 days): Redirect — "Compass is a multi-session process. Let's finish the active interview cycle first, then come back."

---

## Required Inputs

- The user's current state: confused / in-between roles / employed but searching / employed and content but exploring.
- Permission to ask uncomfortable questions. State this upfront: "Compass works by pushing on what feels obvious. I'll ask you to be specific in places that are easier to leave vague. OK?"

## Optional Inputs

- Depth: Quick (60 min, single-session) / Standard (3 sessions over 1-2 weeks, default) / Deep (5 sessions over 3-4 weeks, includes external testing — peer interviews, archive review, lifestyle math).
- Resume / past role history (improves data, not required).
- Any prior values or career-design exercises (Ikigai, Designing Your Life, etc.) — these are inputs, not outputs.

---

## Depth Levels

| Level | When to Use | What It Covers |
|---|---|---|
| **Quick** | User has a strong intuition and wants help articulating it. | Single 60-90 min session: work-shape Q&A, anti-criteria forcing, aligned-opportunity sentence test. |
| **Standard** | Default. User is in genuine search mode. | 3 sessions: (1) work-shape + anti-criteria draft, (2) past-data testing — when each value last cost something, (3) sentence test + confidence calibration. |
| **Deep** | User is making a major pivot or has been searching unsuccessfully. | Standard + (4) peer interviews — user reaches out to 3 people who knew them in past roles for outside-view input, (5) archive review — past calendar/journal review for what energized vs. drained. |

Default to Standard. Suggest Deep when:
- The user has completed prior career-design work and is still stuck.
- Two prior search cycles produced misaligned outcomes.
- A major life change (parenthood, health, partner relocation) is reshaping constraints.

---

## Logic / Sequence

### Session 1 — Work Shape + Anti-Criteria Draft

**Step 1: Work shape inquiry.** One question at a time. After each answer, push for specificity.

- "Forget titles. What is the work itself? Describe a typical week of work that you'd want to keep doing for years."
- "What's the problem space? Not the industry — the kind of problem you keep being drawn back to."
- "Who's the customer of your work? Not the company — the person whose life changes."
- "What scope of impact are you trying to have, realistically, in the next 3-5 years? Don't say 'big.'"
- "How much autonomy do you actually want? Be honest — autonomy has a cost too."

When an answer is too abstract, ask: "Can you make that concrete enough that someone reading it would know what to send you?"

**Step 2: Anti-criteria forcing.** This is the core diagnostic.

"Tell me three things you would refuse, even if everything else were perfect. Not 'wouldn't prefer' — refuse."

If the user struggles, prompt: "Companies, work styles, hours, missions, leadership types, geographies, equity structures, team sizes — pick the dimension that feels most loaded."

If the user gives soft answers ("I wouldn't want a really toxic culture"), push: "Everyone says that. What's a specific thing you've seen or experienced that you would now refuse?"

**Output Session 1:**
- Draft work-shape paragraph (3-5 sentences).
- Draft anti-criteria list (3-7 items).
- Open questions list (things the user couldn't answer with confidence).

### Session 2 — Past-Data Testing

For each value claimed in Session 1, ask: "When did this last cost you something? What did you choose, and what did you give up?"

Values that have never been tested are hypotheses. Mark them as such. Values that have been tested and held are real.

**Pattern surfacing.** Look for contradictions across the user's history. Common ones:
- Claims to value autonomy but accepted three roles in a row with high oversight.
- Claims to want strategic work but consistently took roles where execution was the rewarded skill.
- Claims to want small teams but the most energized periods were on large ones.

When you spot a contradiction, name it: "You said X is a value, but the pattern in your history suggests you're actually drawn to Y. Which is true, or is it both contextually?"

**Lifestyle math.** What does the user need this work to make possible (financially, geographically, time-wise)? If the lifestyle constraints contradict the work shape (e.g., "I want deep technical work" + "I need to be home by 6pm + travel <5%"), name the tradeoff.

**Output Session 2:**
- Refined work-shape paragraph.
- Refined anti-criteria — promoted from drafts only when supported by past data.
- Hypothesis list — values claimed but not yet tested.

### Session 3 — Sentence Test + Confidence Calibration

**The aligned-opportunity sentence test.** The user must write a single sentence — one sentence — that an opportunity must satisfy to count.

Examples (illustrative, not templates):
- "A senior PM role at a 50-500-person B2B SaaS company building infrastructure for engineering teams, where I report to a founder or CPO who has shipped product before."
- "Any role where I lead a team of 4-10 people doing applied research in clinical AI, with at least 30% of my time on hands-on work, no more than two layers above the work."

The sentence is good when:
- A specific, real opportunity could be evaluated against it in under 60 seconds.
- It forecloses many opportunities cleanly (the anti-criteria are doing real work).
- It's narrow enough that the user could imagine 5-20 opportunities in the world fitting it, not 5,000.

If the sentence is fuzzy, run another round.

**Confidence calibration.** For each component of the sentence, the user labels their confidence: high / medium / low.

- **High** = held across multiple roles, tested under pressure, refused costly opportunities to defend.
- **Medium** = consistent intuition + some past data.
- **Low** = stated preference, untested.

A compass with multiple Low ratings is fine — but the next stage isn't `brand` or `targets`, it's testing. Recommend `projects` (small projects to test the hypothesis) or peer interviews.

**Output Session 3 (final):**
- Aligned-opportunity sentence.
- Component-level confidence labels.
- Anti-criteria (final list).
- Open questions / hypotheses to test.
- Compass section written to coaching_state.md.

---

## Output Schema

```markdown
## Compass (Opportunity Track)
- Date: [date]
- Depth: [Quick / Standard / Deep]
- What I want — work shape: [paragraph from Session 1, refined]
- What I want — values/environment: [team type, leadership style, pace, geography]
- Anti-criteria: [3-7 items, each backed by past data when claimed at high confidence]
- Aligned opportunity definition: [the single sentence]
- Confidence: [overall: low / medium / high — based on component confidence]
- Component confidence:
  - Work shape: [low / medium / high]
  - Values/environment: [low / medium / high]
  - Anti-criteria: [low / medium / high]
- Open questions: [hypotheses still to test]
```

---

## Failure Modes & How to Catch Them

- **Performative clarity.** The user delivers a confident-sounding sentence in Session 1. Slow down. Real compass requires friction.
- **Ikigai poetry.** The user keeps reaching for elegant abstractions ("the intersection of art and engineering"). Force one concrete artifact: "Show me the most recent week of work that felt like that."
- **The compromise sentence.** A sentence that no real opportunity satisfies because it tries to satisfy too many constraints. Fix by ranking — which constraint is most load-bearing?
- **Anti-criteria avoidance.** The user can list things they want but not things they'd refuse. This is the most common failure. Push harder. People who can't name what they refuse end up saying yes to whatever's offered.

---

## Recommended Next

After compass:
- If Confidence is **high** → `targets` (build the ecosystem this compass implies).
- If Confidence is **medium** → `targets` + `mapping` (build the ecosystem and find people in it who can pressure-test the compass).
- If Confidence is **low** → `projects` (run a small test project) or peer interviews via `outreach`.

**Recommended next**: `targets` — translate the aligned-opportunity sentence into a real target ecosystem. **Alternatives**: `brand` (if the user is impatient and confidence is high), `projects` (if compass is hypothesis-heavy and needs testing).
