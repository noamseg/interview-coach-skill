# prep — Program Application Brief

**Purpose**: Generate a comprehensive program application brief for a specific program you're actively applying to. This is the command to run before drafting any documents. It synthesizes research, professor intelligence, document requirements, and narrative mapping into an actionable application plan.

---

## Required Inputs

- Program name and institution
- Degree level (PhD, Master's, fellowship)
- Application deadline
- Target professor name(s) (if known; can run `fit [program]` after for deeper analysis)

**Before running prep**: Ideally, `research [program]` has been run so basic fit and faculty data is already in the Application Loop. If not, prep will gather it inline at reduced depth.

---

## Program Knowledge Sourcing Rules

**Non-negotiable evidence standards for program-specific claims**:

- **Claim professor X is "actively taking students"**: Only from official lab page that shows current open positions, or from the professor's own statement. Never assume. Default: "Availability unknown — confirm by email."
- **Claim typical admit profile (GPA, GRE, pubs)**: Only from official program website. Grad Cafe data is MEDIUM confidence and must be labeled as such.
- **Claim program culture (collaborative, competitive, supportive)**: Only from multiple consistent student sources or official materials. Single-source claims labeled LOW.
- **Claim professor's research direction**: Only from their own words (lab website, paper abstracts, faculty page). Do not infer unstated directions.
- **When uncertain**: Use confidence labels (HIGH / MEDIUM / LOW / UNKNOWN) and tell the applicant what to verify.

---

## Step 1: Document Requirements Analysis

Identify exactly what documents this program requires and their specifications:

```
### Document Requirements — [Program]
- Statement of Purpose: [yes/no] — [word limit or page limit if specified]
- Motivation Letter / Personal Statement: [yes/no] — [limit]
- Research Proposal: [yes/no] — [scope and length if specified]
- Writing Sample: [yes/no] — [type and length]
- Academic CV: [yes/no]
- Letters of Recommendation: [number required] — [any specific guidance from the program?]
- Transcripts: [official/unofficial at this stage?]
- GRE/GMAT: [required/optional/not accepted]
- Other: [anything non-standard]

Document completion status:
[Pull from Application Loop — what exists, what's in draft, what hasn't started]
```

---

## Step 2: Professor Intelligence

For each target professor, build a research profile. Pull from existing research data if `research` was run; supplement as needed.

**Professor Profile**:
- Name, department, lab name (if applicable)
- Current research themes (from lab page and recent papers — last 2-3 years)
- Methods they use (quantitative/qualitative, specific tools or approaches)
- Current active projects (if visible on lab page)
- Recent publications: 2-3 most relevant to the applicant's interests
- PhD students: how many current students? Recent placements?
- Funding status: any visible active grants?
- Lab culture signals: collaborative lab page language vs. independent researcher framing

**Connection to Applicant**:
- Specific overlap with applicant's prior research or methods
- What the applicant could contribute to current lab projects
- What question the applicant wants to pursue under this advisor
- Fit level: Strong / Workable / Stretch

**Contact Recommendation**:
- Should the applicant email this professor before applying? (Yes if: research-focused PhD program, clear connection, professor is active)
- If yes: run `professor-contact` to draft the email
- If no: "Some programs prefer applicants not contact faculty before applying — check program guidelines"

---

## Step 3: Program Culture Profile

Classify the program using archetypes from `references/program-archetypes.md`:

- **R1 Research-First PhD**: SoP should lead with research contributions and questions. Committee cares most about research fit and potential.
- **Coursework-Heavy Master's**: Goals and preparation matter more. SoP should lead with professional goals and how the program prepares for them.
- **Interdisciplinary PhD**: Bridge narrative is essential. Emphasize cross-domain perspective as a feature, not a gap to explain.
- **Professional Master's / MEng**: Industry application > academic research. Different document conventions.
- **Fellowship (NSF GRFP, Fulbright, Marshall, etc.)**: Decode the specific fellowship rubric before coaching any document. See `references/program-archetypes.md`.

**Signals to look for**:
- "We look for students with strong research backgrounds" → research-first; publications matter more
- "We welcome students from diverse disciplinary backgrounds" → interdisciplinary; bridge narrative is valued
- "Graduates pursue careers in academia and industry" → both paths; give the applicant flexibility
- "Our program is funded by [specific agency]" → research must align with that agency's priorities

---

## Step 4: Role-Fit Assessment (5 Dimensions)

Same framework as `research`, but with deeper analysis now that the application is active:

1. **Research Fit**: Is there a specific project the applicant could walk into this lab and contribute to?
2. **Academic Alignment**: Are there any hard thresholds the applicant might not meet? (Flag these explicitly — "Your GPA is below the program's stated 3.5 minimum. This is a significant concern. Your SoP and LoRs need to address this directly.")
3. **Domain Relevance**: Confirmed or updated from research.
4. **Professor Match**: Updated with specific fit levels per professor. Confirm 2-3 viable advisors — single-professor match = risky.
5. **Trajectory Coherence**: Does the application story make sense for this specific program? What narrative arc should the SoP follow?

---

## Step 5: Narrative Bank Health Check

Pull from `application_state.md` → Narrative Bank:

```
### Narrative Bank Status for [Program]
- Total narratives: [count]
- Strength distribution: [how many at 4+, 3, 1-2]
- Intellectual Insights extracted: [count] / [total]
- Key narrative types present: [Research Experience / Turning Point / etc.]
- Missing for this program: [what document sections lack strong narratives?]
- Overuse risk: [any narrative used in 3+ program documents already?]
```

If critical narratives are missing: flag as a pre-drafting priority. "Before writing the SoP, you need a Research Experience narrative for [X project]. Run `narratives add` first."

---

## Step 6: Narrative-to-Document Mapping

Map available narratives to the specific documents required by this program, using the 4-level fit system from `narrative-mapping-engine.md`:

- **Strong Fit**: Narrative is specific to this program's focus and the target professor's methods
- **Workable**: Narrative is relevant but needs adaptation for this program
- **Stretch**: Narrative is adjacent — can be used but needs framing
- **Gap**: No narrative covers this document section — needs to be developed

**SoP Mapping Template**:
```
### Narrative Map — [Program] SoP

P1 (Opening hook):          [narrative ID + fit level + adaptation needed]
P2-3 (Research experience): [narrative ID + fit level]
P4 (Second experience):     [narrative ID + fit level]
P5 (Intellectual insight):  [which narrative's insight to highlight]
P6 (Program fit):           [custom — not from narrative bank — requires `fit [program]`]
P7 (Goals):                 [custom — based on professor research directions]

Gaps: [which sections have no Strong Fit narrative]
Overuse risk: [narratives already used in 3+ other programs' SoPs]
```

---

## Step 7: Concerns Specific to This Program

Beyond the general concerns from Academic Profile, what are the specific concerns for this program?

- "This program explicitly states they want applicants with [X]. You don't have [X]. Your SoP should acknowledge this gap and make the case for why you're prepared anyway."
- "Prof. [Y]'s current work is in [area]. Your prior work is in [adjacent area]. The fit paragraph must explicitly bridge this."
- "This is a top-5 program with a typical admit GPA of 3.8+. Your GPA is 3.4. Your LoRs need to specifically address your research capability."

---

## Step 8: Application Brief Output

Deliver the **Program Application Brief**:

```
## Application Brief — [Program Name]

**Deadline**: [date] — [X days away]
**Fit Verdict**: [Strong / Investable Stretch / Long-Shot Stretch / Weak]
**Program Type**: [R1 Research-First / Coursework Master's / Fellowship / etc.]

### Document Requirements
[Table from Step 1]
Document status: [pull from Application Loop]

### Target Faculty
[Profile block per professor — name, current focus, fit level, connection to applicant]

### Program Culture
[1-2 sentences on what this program values and how that should shape the SoP]

### Fit Assessment
1. Research Fit: [verdict + evidence]
2. Academic Alignment: [verdict + any threshold concerns]
3. Domain Relevance: [verdict]
4. Professor Match: [number of viable faculty + fit levels]
5. Trajectory Coherence: [verdict + what narrative arc is recommended]

### Narrative Status
[Narrative bank health check + narrative map for SoP]

### Key Concerns for This Program
[Specific concerns + counter-strategy for each]

### Day-of Checklist (when ready to submit)
- [ ] SoP mentions [specific professor] by name with specific research connection
- [ ] Program-fit paragraph could NOT be submitted to any other program unchanged
- [ ] LoRs are confirmed and submitted
- [ ] GRE/transcripts uploaded (if required)
- [ ] Word count within limits for all documents
- [ ] Application portal account verified and all fields complete

---
**Recommended next**: `draft-sop [program]` to start the Statement of Purpose. **Alternatives**: `fit [program]` for deeper professor analysis, `lor` to start LoR management, `concerns [program]` for counter-strategies.
```

---

## State Updates

Update Application Loop for this program:
- Status: Prepping
- Documents required: confirmed list
- Target professors: updated with fit levels
- Date prep was run
- Narrative map: saved (not in Application Loop; referenced in Coaching Notes)
- Active Coaching Strategy: update primary bottleneck based on prep findings
