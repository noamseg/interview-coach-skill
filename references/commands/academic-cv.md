# academic-cv — Academic CV Optimization

**Purpose**: Optimize the applicant's academic CV for PhD and Master's program applications. Academic CVs follow completely different conventions from industry resumes — this is a distinct command for that distinct document.

---

## Academic CV vs. Industry Resume: Key Differences

Before coaching, ensure the applicant understands these differences:

| Aspect | Academic CV | Industry Resume |
|--------|------------|-----------------|
| Length | 2-5 pages (no limit) | 1-2 pages maximum |
| GPA/Scores | Prominently displayed | Often omitted |
| Publications | Most important section | Rarely relevant |
| Research descriptions | Include brief project descriptions | Bullet-point accomplishments |
| Teaching | Dedicated section | Usually omitted |
| ATS optimization | Irrelevant — humans read it | Critical |
| Conferences/Posters | Listed in their own section | Irrelevant |
| Chronological order | Within sections, yes; section order by priority | Strict reverse-chronological |

**Section priority for academic CVs** (order from top):
1. Contact Information + Academic Website (if applicable)
2. Education (most recent first; include GPA)
3. Research Experience (most important section after education)
4. Publications and Preprints (if any — separate from research experience)
5. Presentations and Posters
6. Teaching Experience / TAships
7. Awards, Fellowships, Honors
8. Skills (programming languages, lab techniques, languages spoken)
9. Professional Experience (if relevant — don't lead with this)
10. References (or "Available upon request")

---

## Step 1: Context

Ask:
> "Tell me about your target programs — primarily research-focused PhDs, Master's programs, or a mix? And do you have an existing CV to work from, or are we building from scratch?"

If from scratch: collect information section by section using the prompts below.
If from existing CV: read it and proceed to the audit.

---

## Step 2: CV Audit

Evaluate each section against academic conventions:

### Education
- Degree, institution, graduation year, GPA (required — do not omit)
- Thesis title if applicable
- Relevant coursework: list only if highly relevant to the target programs and not obvious from the major

**Common error**: Omitting GPA because it's "below 4.0." In academic applications, omitting GPA signals it's worse than it is. Include it unless it's genuinely disqualifying (below 2.7 for most programs). If below program median: it will be noticed with or without it — the SoP and LoRs must address it.

### Research Experience
- This is the section admissions committees read most carefully
- Format per entry: Lab name + PI name + institution + dates + role title
- Description: 3-5 bullet points per research position with:
  - What the project was (1-2 sentences)
  - Your specific contribution (not "assisted with" — your actual task)
  - Outcome or finding if applicable
  - Methods or tools used
- Order: most recent first; within a position, most impactful contribution first

**Common error**: Listing research positions without describing what was done. "Research Assistant, Prof. X's Lab, 2022-2023" with no description is a missed opportunity.

**Common error**: "I helped with..." language. Rewrite to: "Developed / analyzed / designed / implemented / collected / processed [specific contribution]."

### Publications
- Format: author list (with the applicant's name bolded or underlined), title, venue, year
- Order: peer-reviewed journals first, then conference papers, then workshop papers/posters, then preprints
- First-author papers should appear before co-author papers within each category
- Include a DOI or arXiv link if available

**If no publications**: This section may be absent. Do not add a placeholder or list papers "in preparation" unless they are genuinely submitted. "In preparation" that never materializes is a credibility risk.

### Presentations and Posters
- Include conference talks, poster presentations, invited talks
- Format: title, venue, date
- Even undergraduate conference presentations count here

### Teaching Experience
- TAships with course name, level (undergraduate/graduate), institution, semester
- Guest lectures, tutoring, mentoring
- If the applicant has been a TA for multiple semesters of the same course, list once with date range

### Awards and Fellowships
- List everything: departmental awards, scholarships, competitive fellowships, travel grants, academic honors
- Include the awarding institution and year
- Competitive national awards (NSF REU, Goldwater, Rhodes, etc.) should appear near the top of this section

### Skills
- Programming languages: specific (Python, R, MATLAB, Julia) not generic ("proficient in coding")
- Statistical/computational methods: if relevant to research (e.g., Bayesian inference, deep learning, fMRI analysis)
- Lab techniques: if applicable (PCR, electrophoresis, microscopy — be specific)
- Languages: include proficiency level; relevant for international programs or interdisciplinary fields

---

## Step 3: Scoring

Score the CV on 5 academic-specific dimensions:

1. **Research Signal** (1-5): Is the research experience clear, ordered, and impressive? Does it tell a coherent story of growing contribution?
2. **Publication Prominence** (1-5, or N/A if no publications): Are publications correctly formatted and priority-ordered? Is the applicant's role clear?
3. **Trajectory Narrative** (1-5): Does the CV tell a coherent academic story, or does it feel like a list of unrelated items?
4. **Completeness** (1-5): Are all expected sections present? Anything missing that committees will notice?
5. **Formatting Conventions** (1-5): Does it follow academic conventions (not industry conventions)?

---

## Step 4: Priority Fixes

After the audit, identify the 3-5 highest-priority improvements:

Priority 1: Any formatting that makes it look like an industry resume (single page, no GPA, no publications section, resume-style summary at top)
Priority 2: Research Experience section with no descriptions or vague descriptions
Priority 3: Wrong ordering of sections (most relevant sections not near the top)
Priority 4: Publications missing or formatted incorrectly
Priority 5: Contribution language ("assisted with," "helped") not claiming specific ownership

---

## Step 5: Rewrite the Weakest Section

For the lowest-scoring section, show a before/after rewrite with annotations.

Example:
```
BEFORE (Research Experience entry):
Research Assistant, Prof. Smith's Lab, MIT, 2023-2024

AFTER:
Research Assistant — Neural Computation Lab, PI: Prof. Jane Smith, MIT, 2023-2024
• Implemented a novel preprocessing pipeline for EEG data from N=50 participants, reducing noise artifacts by 40% vs. standard methods
• Analyzed spectrotemporal dynamics using wavelet transforms in Python (MNE-Python); identified previously unreported gamma-band synchrony patterns during decision tasks
• Contributed to manuscript preparation (currently under review, Nature Neuroscience)
```

What changed:
- PI name added (allows programs to verify and shows specificity)
- "Research Assistant" → contextualized with lab name
- Vague "assisted" → specific contributions with methods and outcomes
- Publication status added (highest-credibility signal)

---

## Step 6: Program-Specific Customization

Some programs benefit from a slightly customized CV:
- Research-focused PhD: lead with the strongest research experience; publications at top if any exist
- Teaching-focused fellowship: move Teaching Experience higher
- Interdisciplinary program: consider a short "Research Interests" line under contact info (2-3 sentences)

**Generally do not customize**: Most programs see the same CV. Major restructuring per program isn't necessary unless a section's relevance changes dramatically.

---

## CV Review Output

```
## Academic CV Review

**Last reviewed**: [date]
**Depth**: [light / standard / comprehensive]

### Section Scores
| Section | Score | Key Issues |
|---------|-------|------------|
| Research Experience | [1-5] | [note] |
| Publications | [1-5 / N/A] | [note] |
| Trajectory Narrative | [1-5] | [note] |
| Completeness | [1-5] | [note] |
| Formatting | [1-5] | [note] |

### Priority Fixes
1. [Highest priority with specific guidance]
2. [Second priority]
3. [Third priority]

### Rewrite — [weakest section]
[Before/after with annotations]

---
**Recommended next**: `narratives` to develop the research narratives that will go in the SoP, or `lor` to start managing recommendation letters.
```

---

## State Updates

- Update `application_state.md` → Academic CV section: last reviewed date, depth, strengths, gaps, fixes needed
- If creating a full CV: write to `applications/[program-slug]/cv.md` or to a master `cv.md` at the root if not program-specific
