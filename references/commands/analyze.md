# review — Application Document Review

**Purpose**: Score and diagnose an application document (SoP, Motivation Letter, Research Proposal, Personal Statement) on 5 dimensions. Identify the primary bottleneck, deliver the Admission Committee's inner monologue, and automatically rewrite the weakest section.

This command can also review professor outreach emails and LoR requests when called with the appropriate document type.

---

## Input Collection

Ask for the document if not already pasted or readable from file:

> "Paste your [document type] draft, or tell me which program's [document] to load from the applications folder."

If loading from file: read `applications/[program-slug]/[document].md`.

**Cold Start** (no application_state.md): Execute the review without a coaching state. Skip self-assessment comparison. Score on all 5 dimensions. Note at the end: "Run `kickoff` to set up your full coaching profile — I'll be able to give you more targeted feedback once I know your background."

**Document type detection**: Identify which document type this is. If unclear, ask:
- Statement of Purpose (SoP): research-focused narrative, typically 500-1000 words
- Motivation Letter / Personal Statement: more personal register, shorter, often for fellowships
- Research Proposal: structured with problem/methods/timeline, typically 500-1500 words
- LoR Request email: different review criteria — see LoR email rubric at end of this file
- Professor outreach email: see professor-contact for full coaching; quick review available here

---

## Step 1: Self-Assessment (Level 1-4 only)

Before scoring, ask:

> "Before I give you feedback, take a quick pass yourself. Which section or paragraph do you feel best about? Where do you think it's still weak? Give me your gut reaction — there's no wrong answer here."

Record their self-assessment. Score the document independently before comparing. After scoring: name the delta between their self-assessment and your scores. Systematic deltas (always underestimates → impostor syndrome; always overestimates → calibration gap) go into Coaching Notes.

**Level 5 exception**: Lead with coach assessment. Then ask: "How does that compare to what you thought?"

---

## Step 2: Document Completeness Check

Before scoring, assess whether this is a fragment or a complete draft:

- **Full draft**: Score all sections
- **Fragment** (< 60% of stated word limit, or clearly missing major sections): "I'm reviewing a partial draft — my structural feedback is limited. I'll score what's here and flag what's missing."
- **Final-stage document** (applicant says this is their near-final version): Apply the Challenge Protocol if Level 5 is active. Otherwise, apply fit-check drill to every section.

---

## Step 3: Section-by-Section Scoring

Parse the document into sections (P# for paragraphs, or named sections for research proposals):

For each section, score the most relevant dimensions based on section type:
- Opening paragraph: Authenticity + Distinctiveness (hook quality)
- Research experience paragraphs: Message + Authenticity (substantive and believable?)
- Program-fit paragraph: Fit (specific to this program and professor?)
- Goals paragraph: Message + Structure (specific and arc-closing?)
- Entire document: Structure (does the overall arc work?)

**Do not score every section on all 5 dimensions** — focus on the dimension(s) that matter most for each section type.

---

## Step 4: Document-Level Scoring

After section-by-section:

1. Compute weighted document-level scores (not a simple average):
   - Research experience sections: highest weight
   - Opening and program-fit: high weight
   - Goals: medium weight

2. Determine the Admit Signal:
   - **Strong Admit**: Fit ≥ 4, Message ≥ 4, all others ≥ 3
   - **Admit**: Mostly 3-4, no 1s, no more than one 2
   - **Borderline**: One dimension at 1-2 or significant inconsistency
   - **Reject**: Fit = 1 (functionally generic) OR two+ dimensions at 1-2

3. Identify the triage priority bottleneck:
   - If Fit ≤ 2: Fit is the bottleneck — every other dimension is secondary
   - If Message ≤ 2: Message is the bottleneck
   - Otherwise: follow triage order (Fit → Message → Structure → Authenticity → Distinctiveness)

---

## Step 5: Admission Committee's Inner Monologue

This is the most distinctive output of the review command. Replay the document from the perspective of an admissions committee member reading it for the first time.

Format:
> "A committee member opening your [document] is thinking:
>
> [First impression from P1 — what does the opener signal? positive or negative?]
>
> By P2, they're [forming a specific impression — what does the research experience section tell them about this applicant's potential?]
>
> The moment that stands out: [the single most memorable thing in the document — and whether it's memorable for good or bad reasons]
>
> The moment they hesitate: [where the committee member pauses, raises an eyebrow, or loses confidence — even briefly]
>
> After reading the program-fit section, they're thinking: [specific reaction to the fit section — is it convincing? generic? impressive?]
>
> Their verdict: [overall read from the committee member's perspective, not a score — what kind of admit are they imagining?]"

This should feel like a real person reading, not a scoring rubric recitation. Use specific language from the document. Identify the moment where the committee's read shifted — for better or worse.

---

## Step 6: Automatic Rewrite of Weakest Section

Identify the weakest section (lowest score on its primary dimension). Offer to rewrite it:

> "The [section] is the primary bottleneck. Here's a rewrite that addresses the [primary dimension] gap:"

**Before** (the original):
[Paste the original section]

**After** (the rewrite):
[Write the improved version]

**What changed**:
- [Specific annotation: what was removed and why]
- [What was added and why]
- [What principle the change illustrates — for the applicant to apply to other sections]

The rewrite should be in the applicant's voice, not the coach's. Use language and specifics from the rest of the document. Do not invent details the applicant hasn't provided.

---

## Step 7: Triage Output

Deliver the full review in this format:

```
## Document Review — [Document Type]: [Program Name]

**Date**: [date]
**Document status**: [draft / revision / final-stage]
**Word count**: [X words] / [limit: Y words if known]

### Scores
| Section | Msg | Str | Fit | Auth | Dist | Primary Note |
|---------|-----|-----|-----|------|------|-------------|
| P1 (Opening) | — | — | — | [X] | [X] | [brief note] |
| P2-3 (Research) | [X] | — | — | [X] | — | [brief note] |
| P[fit] (Program Fit) | — | — | [X] | — | — | [brief note] |
| P[goals] (Goals) | [X] | [X] | — | — | — | [brief note] |
| **Document** | **[X]** | **[X]** | **[X]** | **[X]** | **[X]** | |

**Admit Signal**: [Strong Admit / Admit / Borderline / Reject]
**Self-assessment delta**: [over / under / accurate — and by how much]

### Primary Bottleneck
[Triage decision: which dimension to fix first, with evidence]

### Admission Committee's Inner Monologue
[Full inner monologue from Step 5]

### Automatic Rewrite — [weakest section]
**Before**: [original]
**After**: [rewrite]
**What changed**: [annotations]

### Revision Priorities
1. [Highest priority fix with specific guidance]
2. [Second priority]
3. [Third priority — optional; only if above ≥ 3 on both primary dimensions]

---
**Recommended next**: `draft [section]` to address the primary bottleneck. **Alternatives**: `fit [program]` if Fit is the bottleneck, `narratives improve [N00X]` if Message is the bottleneck.
```

---

## Level 5: Challenge Protocol Integration

For Level 5 applicants, after delivering the standard review, apply 2-3 of the 5 challenge lenses from `references/challenge-protocol.md` to the document:

1. **Assumption Audit**: What is this document taking for granted that it shouldn't? "This document assumes the committee already knows why [X] is an interesting research problem. It doesn't — and 200 other applicants are competing for that assumption."

2. **Blind Spot Scan**: "The document doesn't address [major concern from Academic Profile]. A committee member who notices this absence will wonder [what they'll think]."

3. **Substitution Test**: "Replace your name with another qualified PhD applicant in this field. Would this document still work? If yes, the Distinctiveness is 1-2, not 3-4."

4. **Devil's Advocate**: "The weakest argument in this document is [specific claim]. A skeptical reviewer would push back: [what the pushback would be]. You need a response to that embedded in the document itself."

5. **Strengthening Path**: "The single change that would move this from Admit to Strong Admit is [specific change]. Here's exactly what that looks like: [draft]."

For Level 5, name the hard truth directly: "The program-fit paragraph is a 1. It mentions Prof. X by name but says nothing specific about their work. A committee member who works in this lab will notice immediately. This is fixable — but it must be fixed before submission."

---

## State Updates

After every `review` session:
- Add entry to Score History: date, document type, program, all 5 scores, Admit Signal, self-delta
- Update document status in Application Loop (Drafting → Revised, or Draft complete → Revised)
- Update Active Coaching Strategy if a new bottleneck is identified
- Note any Narrative Bank narratives that performed well or poorly (update Effective/Ineffective Patterns in Narrative Intelligence)
- If Fit = 1 throughout: flag in Coaching Notes "program-fit paragraph not yet written for [program]"

---

## LoR Request Email Review (Quick Rubric)

When reviewing an email the applicant is sending to request a recommendation letter:

Score on:
- **Timing**: Is this being sent 6-8 weeks before the deadline? (Less = urgency problem)
- **Specificity**: Does the email remind the recommender of specific shared experiences they can reference?
- **Opt-out language**: Does it give the recommender an easy out if they can't write a strong letter? (Non-negotiable — "I understand if you're too busy" is insufficient; use "If you feel you can write a strong letter, I'd be grateful; otherwise, no worries at all.")
- **Package**: Does it offer to provide a recommender brief with materials?
- **Tone**: Professional but personal — not formal-stiff, not casual

Deliver: Quick score (1-3 sentences per dimension) + rewrite of the opt-out language if it's missing or weak.
