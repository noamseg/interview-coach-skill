# narratives — Narrative Bank Workflow

Use `references/narrative-bank-guide.md` for the full narrative format, arc template, and health check protocol.

---

## Menu

```text
Narrative Bank
1) view          — Display the full narrative bank with health check
2) add           — Add a new narrative (guided development)
3) improve       — Diagnose and upgrade an existing narrative
4) find gaps     — Identify what document sections lack strong narrative coverage
5) retire        — Archive a weak or overused narrative
6) drill         — Rapid-retrieval drill (find the right narrative in 10 seconds)
7) identity      — Narrative identity extraction (the through-line across all narratives)

What do you want to work on?
```

---

## 1) view — Display Narrative Bank

Show the full table from `application_state.md` → Narrative Bank, then run the health check:

```
Narrative Bank Health Check:
✓ Total narratives: [count] (target: 6-10)
✓ Strength distribution: [X at 4+, Y at 3, Z at 1-2] (target: 60%+ at 4+)
✓ Intellectual Insights extracted: [X] / [count] (target: all)
✓ Document coverage: [which document sections have Strong Fit narratives]
✗ Missing: [document sections with no strong narrative]
✗ Overuse risk: [narratives used in 3+ program documents already]
```

Then ask: "What would you like to do — add a narrative, improve one, or check gaps?"

---

## 2) add — Guided Narrative Development

**This is not a Q&A form. This is a coaching conversation.** Ask one question at a time. Use follow-up probes based on what the applicant says — don't just check boxes.

**Step 1: Experience selection**

> "Tell me about a research experience, intellectual challenge, or defining moment in your academic path that you haven't fully developed yet. It doesn't have to be dramatic — the most revealing narratives are often about small moments with large implications."

If the applicant is stuck: offer prompts:
- "Tell me about a time a result didn't come out the way you expected. What happened?"
- "What's the most interesting thing you've worked on — the thing you'd talk about at a dinner party?"
- "Tell me about the moment you first got seriously interested in [their field]."
- "Tell me about a mentor or advisor who changed how you think."
- "Tell me about a project that failed. What did you learn?"

**Step 2: Arc development** — one question at a time

- **Context**: "Set the scene. Where were you, what were you working on, and what were the stakes?"
- **Challenge**: "What made this hard? What was the obstacle — intellectual, practical, or personal?"
- **Insight**: "What did you figure out? Not just what happened — what did you understand afterward that you didn't understand before?" (probe: "Would most people in your situation have reached the same conclusion? What was non-obvious about your takeaway?")
- **Impact**: "What changed because of this? For the project, for your thinking, for your path?"
- **Meaning**: "How does this experience connect to what you want to do in your PhD? What does it tell a committee about why you're pursuing this research?"

**Step 3: Intellectual Insight extraction**

This is the most important step. Push until the applicant can articulate the non-obvious thing they learned.

> "Let's find the intellectual insight in this experience — the thing you now know that most people in your situation wouldn't know, and that would only occur to someone who went through exactly what you went through. What is that thing?"

Common responses that are NOT insights (push further):
- "I learned that research takes patience." (universal — not an insight)
- "I learned that collaboration is important." (generic — not an insight)
- "I learned that [field] is more complex than I thought." (vague — push for what specific complexity)

An intellectual insight sounds like:
- "I realized that the reason [standard approach X] doesn't work is because it assumes [condition Y] that's rarely true in real-world data. This led me to ask: what if we [your approach]?"
- "I discovered that the bottleneck in [problem] isn't the technical challenge everyone focuses on — it's the question of how to [underappreciated problem]. Nobody is working on that yet."
- "Working on [project] showed me that [field A] and [field B] are asking the same question in different languages. That's the bridge I want to build in my PhD."

**Step 4: Document deployment planning**

> "Where does this narrative fit in your applications? Which document sections is it strongest for?"

Options:
- SoP opening hook (if it's a turning point or curiosity moment)
- SoP research experience section P2 (if it's a specific project)
- SoP program-fit section (if it connects directly to target faculty)
- Motivation Letter opening (if it's personal)
- Fellowship personal statement (if it shows character or impact)

Add to "Deploy in" field. Update Narrative Bank index.

**Step 5: Score and save**

Score the narrative on 2 dimensions:
- Intellectual depth (equivalent of Message) — 1-5
- Distinctiveness — 1-5

Final narrative format:
```markdown
#### N00X — [Title]
- Type: [Research Experience / Challenge-Growth / Intellectual Turning Point / Mentorship / Failure-Learning / Field Connection]
- Context: [1-2 sentences]
- Challenge: [1-2 sentences]
- Insight: [1-2 sentences]
- Impact: [1 sentence]
- Meaning: [1-2 sentences — how this connects to PhD goals]
- Intellectual Insight: [the non-obvious takeaway — the most important field]
- Strength: [1-5]
- Deploy in: [document type + section]
- Version history: [date — first developed]
```

---

## 3) improve — Diagnostic Upgrade

**Diagnose before prescribing**: identify which specific dimension is limiting the narrative before attempting to fix it.

Step 1: Read the narrative from the Narrative Bank. Ask: "What's your instinct about what's weakest here? What part does it feel like is missing?"

Step 2: Score the narrative on all 5 dimensions (briefly). Identify the gap type:

| Gap Type | Diagnostic Signal | Fix |
|----------|------------------|-----|
| Missing intellectual insight | Narrative ends with outcome but no "what I learned" | Run insight extraction: "What do you know now that you didn't know then? What would surprise most people?" |
| Too vague / credential-reciting | Context exists but Challenge and Insight are absent | "Tell me the hardest moment in this experience. Walk me through it." |
| No specific contribution | "We" framing throughout; no individual ownership | "What specifically did YOU do that someone else couldn't have done — or wouldn't have done the same way?" |
| Wrong deploy target | Narrative is strong but mapped to a section where it doesn't fit | Remap to better-fit section. Consider whether a second version with different framing is worth developing. |
| Weak opening | The narrative buries the most interesting moment | Restructure: start with the most interesting moment, not the chronological beginning. |

Step 3: Apply the fix. Rewrite the relevant arc element. Re-score. Confirm the improvement.

---

## 4) find gaps — Document Coverage Analysis

Pull the Narrative Bank and the document requirements from active Application Loops. Map current narratives to required document sections:

```
Gap Analysis — Document Coverage

SoP Structure (for [Program]):
P1 Opening hook:          [narrative ID + fit level, or GAP]
P2-3 Research experience: [narrative ID + fit level, or GAP]
P4 Second experience:     [narrative ID + fit level, or GAP]
P5 Intellectual agenda:   [narrative ID + fit level, or GAP]
P6 Program fit:           [CUSTOM — requires `fit [program]`]
P7 Goals:                 [CUSTOM — no narrative needed]

Critical gaps (must be addressed before drafting):
[list of sections with no Strong Fit narrative]

Important gaps (addressable with existing narratives + adaptation):
[list of sections with only Workable or Stretch narratives]

Overuse risk:
[any narrative already deployed in 3+ program SoPs — flag for differentiation review]
```

Recommend next action: "Add" a new narrative for critical gaps, or "Improve" an existing Stretch narrative to make it Workable.

---

## 5) retire — Archive Weak Narratives

Move narratives rated 1-2 with no realistic path to improvement to a "Retired Narratives" archive.

Before retiring: confirm:
- Has the applicant tried to improve it? (if not: try `improve` first)
- Is the experience itself weak, or is the narration weak? (weak narration is fixable)
- Is it the only narrative covering a critical document section? (if yes: don't retire until a replacement is developed)

Retirement note format: "Retired [date] — [reason]: [why the narrative isn't deployable and what would need to be true to bring it back]"

---

## 6) drill — Rapid-Retrieval Practice

Purpose: For documents with many sections and a large narrative bank, the applicant needs to find the right narrative quickly when drafting under time pressure.

Protocol:
1. State a document section: "SoP P2 — your most relevant research experience for a computational biology PhD"
2. Applicant responds in 10 seconds: narrative ID + one-sentence opening
3. Coach evaluates: right narrative? right opening?
4. 8-10 rounds

This is especially useful when applying to many programs and the narrative bank has 8+ entries — the applicant shouldn't have to search the bank when drafting.

---

## 7) identity — Narrative Identity Extraction

Extract 2-3 core intellectual themes across all narratives in the bank:

> "Looking across your narratives, I want to find the through-line — the recurring intellectual question or concern that connects your experiences. This becomes the spine of your Research Positioning statement."

Method:
1. Read all Intellectual Insights from the narrative bank
2. Look for patterns: what question keeps appearing? What lens does this applicant apply to different problems?
3. Extract 2-3 themes in order of prominence

Example output:
> "Across your narratives, three themes appear consistently:
> 1. **The measurement problem**: In three different projects, you've been drawn to situations where the standard measurement approach is inadequate. This isn't coincidence — it's a perspective.
> 2. **Bridging scales**: Your work repeatedly connects micro-level mechanisms to macro-level phenomena. That's a methodological signature.
> 3. **Failure as signal**: Half your best narratives involve an unexpected result that turned into a better question. You're an intellectually curious scientist who treats failure as data.
>
> These themes should anchor your SoP opening and your Research Positioning statement. They're what makes you distinctive — not your credentials, but how you think."

This output feeds directly into `positioning`.

---

## State Updates

After any `narratives` session:
- Update Narrative Bank index in `application_state.md`
- Update "Used In" column when a narrative is mapped to a document section
- Update Narrative Intelligence → Effective Patterns if a narrative scored 4-5
- Note narrative identity themes in Coaching Notes if extracted
