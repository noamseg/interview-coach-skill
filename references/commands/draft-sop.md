# draft-sop — Statement of Purpose Full Draft

**Purpose**: Guide the applicant through a complete SoP draft, section by section. This is the highest-leverage document in most PhD and many Master's applications. It deserves a dedicated drafting session rather than an unguided write.

---

## When to Run

Run `draft-sop [program]` when:
- The applicant has run `prep [program]` (or at least `research [program]`) and understands what this program values
- The Narrative Bank has at least 2-3 developed narratives (ideally run `narratives` first)
- The applicant is ready to produce a full draft, not just a section

If the applicant wants to work on one section at a time: use `draft [section]` instead.

---

## Step 1: Program Context Check

Pull from Application Loop for this program:
- SoP word/page limit (if known)
- Any specific topics the SoP must address (some programs specify: "Describe your research experience, your proposed research, and why you want to join this program")
- Target professor(s) — the program-fit paragraph will name them
- Narrative Map from `prep` (if available)
- Document status: is there an existing draft to build on, or starting from scratch?

If no prep has been run: ask for the SoP prompt and any word limit before proceeding.

---

## Step 2: SoP Architecture Planning

Before any writing, present the recommended structure:

> "Before we draft, let me propose a structure for your [Program] SoP. Review it and tell me if anything needs to change based on the prompt or the program's requirements."

**Standard PhD SoP Architecture** (adapt based on word limit):

```
Recommended SoP Structure — [Program Name]
Word limit: [X words / X pages]

P1: Opening hook + intellectual trajectory (2-3 sentences)
    → What is the research question or intellectual problem you're engaged with?
    → Why does it matter, and why do you care?

P2: Research experience 1 (most recent / most relevant)
    → Specific project, your role, what you did, what you found
    → Intellectual insight from this experience

P3: Research experience 2 (complementary — shows breadth or depth)
    → Specific project, contribution, and what it added to your understanding

P4 (optional — if needed): Third research thread or methodological bridge
    → Use this if you're a field-switcher or have a distinctive methodological background

P5: Your research question / intellectual agenda
    → What question do you want to pursue in your PhD?
    → Why are you the person to pursue it? What unique perspective do you bring?

P6: Program fit (CUSTOM — never reuse across programs)
    → Prof. [Name]: their current work + how it connects to your prior work + what you'd contribute
    → Prof. [Name 2] (optional — 2 advisors is fine if both are genuine)
    → Why this program specifically — beyond the faculty

P7: Future goals (brief)
    → Where do you want to go after the PhD?
    → Keep this short (2-4 sentences) — let the research speak

Word count allocation (approximate):
P1: 8-10% | P2-3: 35-40% | P5: 20% | P6: 20% | P7: 10%
```

Ask: "Does this structure work for your program's requirements? Anything to add or reorder?"

Adjust for:
- Fellowship SoP: may require a more specific research proposal structure (Problem → Methods → Timeline → Significance)
- Master's SoP: P5 and P6 weighted more toward goals than research questions
- Short SoP (1-2 pages): compress to P1 + combined P2-3 + P5 + P6, no separate goals paragraph

---

## Step 3: Section-by-Section Drafting

Work through each section collaboratively. Protocol per section:

1. **Reference the narrative bank**: "For P2, you have N001 [Research Experience] rated 4/5. That's your strongest candidate. Should we use that project here, or do you prefer [other project]?"

2. **Draft the section**: Ask the applicant to write a first draft of the section in their own words, or draft it collaboratively based on the narrative bank content. One section at a time.

3. **Score the section** (after first draft): Quick score on the most relevant dimension(s). Don't score all 5 on every section — focus on:
   - P1: Authenticity + Distinctiveness (does this hook? is it a real person?)
   - P2-3: Message + Authenticity (specific contribution? genuine voice?)
   - P5: Message + Distinctiveness (a real research question? a distinctive angle?)
   - P6: Fit (could this be submitted to another program unchanged? if yes, it's not done)
   - P7: Structure (does it close the arc? brief enough?)

4. **Deliver feedback**: Strengths first. One specific improvement. Offer to rewrite the weakest sentence.

5. **Move to next section**: Don't perfect P2 before drafting P3. Full draft first, then revision.

### Opening Hook Protocol (P1)

The opening is the highest-leverage paragraph. A generic opener loses the committee in the first 30 seconds.

**Test for generic opener**:
- "Ever since I was young, I've been fascinated by [field]..." → generic
- "Growing up in [country], I always knew I wanted to pursue [field]..." → generic
- "[Specific moment, problem, or discovery] changed how I think about [field]..." → potentially distinctive
- "The [specific paper / finding / failure / observation] raised a question I couldn't stop thinking about..." → strong

**Protocol**:
1. Ask: "What's the most interesting or unexpected thing about your path to this research? What moment would you point to that defines why you're pursuing this?"
2. Draft an opening based on that moment — specific, concrete, active
3. Test: "Does this opener make a committee member want to read P2? Does it tell them immediately what research domain you're in and what question you're working on?"

---

## Step 4: Program-Fit Paragraph Protocol (P6)

This is the paragraph that most applicants write generically and most committees remember as generic. It must be written from scratch for each program after running `fit [program]`.

**Non-negotiable elements**:
1. Name the specific professor(s) you want to work with
2. Reference something specific about their current research (not just their general area)
3. Explain the connection between your prior work and their current work — not "I'm interested in what they do" but "my work on [X] connects to their [specific paper/project] because [reason]"
4. State what you would contribute — what would you bring to their lab that isn't already there?
5. Include one non-faculty element: what about the program specifically makes it the right environment? (A specific seminar, cross-departmental resource, methodological strength, student community)

**Fit paragraph template**:
> "At [Program], I am excited to work with Prof. [Name], whose recent work on [specific project/paper] directly extends my prior research on [X]. In particular, [Prof.'s finding] raises the question of [specific question you want to pursue] — a problem I am well-positioned to address given my experience with [your method/finding]. I am also interested in working with Prof. [Name 2], whose [research] offers a complementary approach to [the problem]. Beyond the faculty, [Program]'s [specific resource/seminar/program feature] would give me access to [what you need that this program specifically provides]."

**The substitution test**: Replace [Program] with any other program in the same field. If the paragraph still works, it needs more specificity. Keep revising until it fails the substitution test.

---

## Step 5: Initial Review

After completing the full draft, run a quick review:

1. Ask the applicant: "Which section do you feel best about? Which one feels weakest?"
2. Score the full document on 5 dimensions (quick version — 60 seconds)
3. Identify the single highest-priority revision
4. Rewrite the weakest paragraph — show before and after with annotations explaining the changes

---

## Step 6: Save Draft

Write the completed draft to `applications/[program-slug]/sop.md`.

Update Application Loop:
- SoP status: Drafting → Draft complete
- Note in session log: first draft complete, [date], initial score [Msg/Str/Fit/Auth/Dist]

---

## Output Format

```
## SoP Draft — [Program Name]

**Draft date**: [date]
**Word count**: [X words] / [limit: Y words]
**Initial scores**: Msg [X] | Str [X] | Fit [X] | Auth [X] | Dist [X]
**Admit Signal**: [Strong Admit / Admit / Borderline / Reject]

[Full SoP text]

---
**Top revision priority**: [the single most important thing to fix before the next session]
**Recommended next**: `review sop [program]` for a full scored review. **Alternatives**: `draft [fit]` to deepen the program-fit paragraph, `narratives improve` to strengthen the narrative used in P2.
```
