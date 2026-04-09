# decode — Program Requirements & Prompt Analysis

**Purpose**: Decode program application prompts, fellowship criteria, and faculty research descriptions to extract what the program is actually evaluating — beyond what the surface language says.

---

## How Application Prompts Actually Work

Program application prompts and fellowship criteria follow predictable patterns. But the signal isn't in the surface structure — it's in the specific language choices, what's emphasized, what's repeated, and critically, what's missing.

**Common types to decode**:
- Statement of Purpose prompts (length and topic requirements)
- Personal statement prompts (often more open-ended than SoP)
- Research proposal requirements
- Fellowship review criteria (NSF GRFP Broader Impacts + Intellectual Merit, Fulbright project statement, Rhodes character + leadership criteria)
- Faculty "research interests" descriptions on lab websites — what does this professor *actually* want?
- "Why this program?" prompts — what are they really asking?

---

## The 6 Decoding Lenses

Apply all 6 lenses to every prompt or requirement you're analyzing. Not every lens produces signal on every prompt — but run them all and report what you find with confidence labels.

### Lens 1: Repetition and Emphasis

What themes, words, or phrases appear more than once? What is emphasized through repetition?

*Example*: A Fulbright prompt that uses "cultural exchange" three times and "research excellence" once is telling you which matters more to reviewers. A PhD program that mentions "interdisciplinary" in three separate places is signaling that cross-disciplinary candidates are genuinely valued, not just tolerated.

Confidence: HIGH when repetition is clear. LOW when the sample is too short to detect patterns.

### Lens 2: Order and Priority

What is mentioned first? What comes last? In prompts with multiple components, order often (but not always) reflects priority.

*Example*: A fellowship that asks for "your proposed project, your qualifications, and your long-term goals" in that order is telling you: project first, qualifications second, goals third. Don't lead your statement with your resume.

Confidence: MEDIUM (order doesn't always reflect priority — compare against Lens 1 to calibrate).

### Lens 3: Required vs. Preferred vs. Aspirational

Distinguish between hard requirements ("applicants must demonstrate...") and aspirational language ("we welcome candidates who..."). Hard requirements are gates; preferred criteria are where you differentiate.

*Example*: "A minimum of one year of research experience is required" vs. "We especially welcome candidates with publication experience." The first is a gate — check whether you clear it. The second is a differentiation signal — if you have it, lead with it.

Confidence: HIGH when language is explicit ("required" / "must"). MEDIUM when implied.

### Lens 4: Verb Choices

What verbs does the prompt use? "Demonstrate," "show," "describe," and "explain" each carry different instructions.

- "Describe your research experience" → narrate what you did
- "Explain your research methodology" → analyze how and why
- "Demonstrate your leadership" → prove with evidence, not assertion
- "Articulate your research goals" → be specific and defensible, not aspirational
- "Reflect on" → introspection expected; more personal register acceptable

Confidence: HIGH when verbs are specific. LOW when the prompt is written carelessly (many are).

### Lens 5: Between-the-Lines Signals

What does the language assume or imply about the ideal applicant?

*Example*: A program that says "you will be expected to identify your own funding sources during the third year" is implying that self-sufficiency and grant-writing are expected skills — and that students who can't do this will struggle. This is a signal to address in the SoP.

*Example*: A lab website that says "our lab values independence and self-direction" is telling you: students who need heavy mentorship will not thrive here. If you need mentorship, this may not be the right fit — or you need to frame your prior independent work explicitly.

Confidence: MEDIUM (interpretation required — label clearly as inference).

### Lens 6: What's Missing

What would you expect a prompt to address that it doesn't mention?

*Example*: A PhD program application with no mention of teaching requirements is unusual — it may mean teaching is not emphasized, or it may mean it's assumed and not worth discussing. Worth verifying.

*Example*: A fellowship with no explicit diversity or impact statement requirement — when similar fellowships have one — may be signaling that they value technical excellence above broader impact. Or it may be an oversight. Confidence: LOW, but worth noting.

---

## Batch Triage Mode

When the applicant is applying to 5-10 programs and needs to prioritize where to invest their prep time:

1. Collect the main prompts or document requirements for each program
2. Apply the 6 lenses briefly to each
3. Identify:
   - Which programs have the most unique/complex requirements (higher prep investment needed)
   - Which programs' prompts suggest the strongest fit with the applicant's profile
   - Which programs have similar enough requirements that documents can be adapted rather than rewritten from scratch
4. Recommend a triage order: which programs deserve full prep, which can be handled with adapted documents, which may not be worth the time

**Batch triage output format**:
```
### Batch Triage — [N] Programs

**Priority 1 (full prep)**: [Program] — [reason: strong fit + unique requirements]
**Priority 2 (adapt documents)**: [Program] — [reason: similar to Priority 1 but with specific differences]
**Priority 3 (low investment)**: [Program] — [reason: weaker fit or highly similar to Priority 1]
**Reconsider**: [Program] — [reason: requirements suggest poor fit]
```

---

## Fellowship-Specific Decoding

Some fellowships have well-known review criteria that should be decoded before writing any document. See `references/program-archetypes.md` for detailed rubrics. Key points:

**NSF GRFP**: Two explicit criteria — Intellectual Merit and Broader Impacts. Both must be addressed explicitly in the Research Proposal and the Personal Statement. "Broader Impacts" is not a throwaway paragraph — it is weighted equally with research quality.

**Fulbright**: Country-specific; the U.S. review panel evaluates the project proposal, the personal statement, and letters of recommendation. Emphasis: cultural exchange + feasibility + applicant preparedness. The project must be genuinely doable in the host country.

**Rhodes**: Four criteria: literary and scholastic attainments, fondness for and success in sports, truth, courage, devotion to duty, sympathy for and protection of the weak. These are not vague — decode them literally. Leadership and character matter as much as academic excellence.

**Marshall**: Leadership potential + academic excellence + likely to make contributions to UK-US relations. The "Marshall personality" is specific: curious, service-oriented, collaborative.

**Gates Cambridge**: Academic excellence + reasons for choice of course + commitment to improving lives of others + leadership capacity. The project choice matters — it must be at Cambridge with a specific supervisor.

---

## Verification Questions

After decoding, generate 2-3 questions the applicant should verify before writing — either by emailing the program or asking a current student:

*Examples*:
- "The SoP prompt says 'describe your research experience' but doesn't mention length. Verify: is there a word limit, and should I include only academic research or also industry research?"
- "The program mentions 'we value interdisciplinary approaches' — verify whether this means they actively fund cross-department advisors or just tolerate it."
- "The faculty page for Prof. X hasn't been updated in 18 months. Verify: is the professor still at this institution and still taking students?"

---

## Decode Output Format

```
## Decode — [Program / Fellowship / Prompt Name]

**Document being decoded**: [SoP prompt / Personal statement / Fellowship criteria / Faculty description]

**Lens Analysis**:

1. Repetition/Emphasis: [findings + confidence label]
2. Order/Priority: [findings + confidence label]
3. Required vs. Preferred: [findings + confidence label]
4. Verb Choices: [findings + confidence label]
5. Between-the-Lines: [findings + confidence label]
6. What's Missing: [findings + confidence label]

**What This Program Is Actually Evaluating**:
[2-3 sentences synthesizing the lenses — what does the committee really want to see?]

**Top 5-7 Criteria** (in priority order, with confidence):
1. [Criterion] — [evidence from lenses] — [HIGH/MEDIUM/LOW confidence]
2. [Criterion] — ...
...

**Gap Analysis** (what does this applicant have vs. what the prompt rewards?):
- Strong coverage: [what the applicant can address well]
- Moderate coverage: [what the applicant can partially address]
- Gap: [what the prompt rewards that the applicant lacks]

**Verification Questions**:
[2-3 questions to confirm before writing]

**Document Implications**:
[Specific guidance for how to write the document based on the decode — e.g., "Lead with research, not goals." "Address Broader Impacts in its own paragraph, not as a footnote." "Use 'demonstrate' verbs: evidence, not assertion."]

---
**Recommended next**: `prep [program]` if applying, `draft-sop [program]` if ready to write, `fit [program]` for deeper professor analysis.
```

---

## State Updates

Save decode results to Application Loop for the program:
- Top criteria identified (for reference when drafting)
- Gap analysis (supplements the Academic Profile concerns)
- Document implications (guides `draft-sop` and `review`)
- Date decoded
