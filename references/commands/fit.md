# fit — Deep Professor Research & Fit Analysis

**Purpose**: Deep-dive professor fit analysis for a specific program. Goes beyond the brief faculty profiles in `research` to build genuine understanding of a professor's current work and identify the specific collaboration opportunity. This is the command to run before writing the program-fit paragraph of the SoP.

---

## When to Run

Run `fit [program]` when:
- Planning to mention a specific professor in the SoP
- Unsure about professor fit — want to validate before committing
- Prepping the most important document (the program-fit paragraph)

Run BEFORE `draft-sop` or before writing the program-fit paragraph of any document.

---

## Step 1: Professor Selection

Pull target professors from Application Loop or ask:

> "Which professor(s) at [Program] are you considering for your research fit paragraph? If unsure, we can research 2-3 candidates and pick the strongest."

For each professor candidate:
- Name, department, lab website (if applicable)
- Current research focus (from their own lab page or recent papers)

---

## Step 2: Publication Deep-Dive

For each target professor, analyze their recent publications (last 2-3 years):

**What to extract from publications**:
1. **Research questions**: What problems are they asking?
2. **Methods**: What approaches/tools are they using?
3. **Recent direction**: Are they pivoting to new topics or deepening existing ones?
4. **Collaborations**: Who are they working with?
5. **Findings**: What have they discovered in the last 2 years?

**Source**: Google Scholar, lab website, preprint servers (ArXiv, bioRxiv, etc.)

Use HIGH confidence labels. If information is >2 years old, note the staleness.

---

## Step 3: PhD Student & Lab Profile

Assess the lab environment:

```
### Lab Profile — Prof. [Name]

PhD Students (current):
- [count] current PhD students
- Names/research areas if visible
- Timeline data: how long do students typically take to graduate? (look at lab alumni pages)

Recent Graduates:
- [names and current positions] — where did they go? (academia, industry, government, postdoc)
- Placement quality: are students going to desirable positions?

Lab Culture Signals:
- Lab website tone: collaborative / independent / rigorous / creative?
- Funding status: [grants listed] — is the lab well-funded and active?
- Collaborations: [names of frequent collaborators] — is the lab well-connected?
```

---

## Step 4: Genuine Overlap Assessment

This is the critical step. Not "I'm interested in what they do" but specifically: **what would the applicant contribute to this professor's current projects?**

Ask the applicant:

> "Looking at Prof. [Name]'s recent papers and current research, which ONE project or research direction is most relevant to your work? What's the specific overlap?"

Then probe:

> "If you joined this lab next fall, what would you actually be working on in your first year? And what would you bring to that project that's not already there?"

**Strong genuine overlap looks like**:
- Applicant's prior work used a method that this professor is now applying to a new domain
- Applicant has background in a technique that this professor's lab is adopting
- Applicant's research question is in this professor's current focus area
- Applicant has data, code, or expertise that could complement this professor's current projects

**Red flags**:
- "I'm interested in what they study" (generic — they're probably interested too, but that doesn't make a collaboration)
- Applicant's work and professor's work are in the same broad field but with no specific connection
- Professor's most recent papers are in a direction the applicant hasn't engaged with

---

## Step 5: Draft the Program-Fit Paragraph

Based on the analysis, draft the specific sentences that will appear in the SoP program-fit paragraph:

**Template**:

> "At [Program], I am excited to work with Prof. [Name], whose [specific recent work / finding / project] directly builds on my prior research on [applicant's work]. In particular, [professor's specific finding] raises the question of [specific research question], which is exactly the problem I want to tackle in my PhD. My experience with [method / finding / background] positions me to contribute to this direction, specifically [what the applicant would bring]. I am also interested in working with Prof. [Name 2], whose [complementary work] offers [what this adds]. Beyond the faculty, [Program]'s [specific resource/seminar/program feature] would provide [what the applicant needs]."

**Checklist**:
- ✓ Professor name(s) mentioned specifically
- ✓ Specific recent work referenced (not just general research area)
- ✓ Connection to applicant's prior work (not generic)
- ✓ What applicant would contribute (not just what they'd learn)
- ✓ Non-faculty program element included (seminar, resource, community)
- ✓ Passes substitution test: couldn't be submitted to another program unchanged

---

## Step 6: Fit Verdict & Counter-Arguments

After the analysis, deliver a fit verdict:

```
### Fit Assessment — Prof. [Name] at [Program]

Fit Verdict: [Strong / Workable / Stretch / Weak]
Confidence: [High / Medium / Low]

Why: [evidence from the deep-dive]

Potential Counter-Arguments (what a skeptical committee member might think):
- [possible concern about fit]
- [how to address it in the SoP]

Risk Factors:
- [any concerns — professor leaving, lab downsizing, unclear funding, etc.]

Strength of Collaboration Plan:
[Does the applicant have a clear first-year project idea? Or is it vague?]
```

---

## Step 7: Outreach Decision

Should the applicant email this professor before applying?

**Yes, if**:
- PhD program (not Master's); research-focused
- Clear genuine overlap
- Professor explicitly welcomes inquiries on their website
- Applicant has a specific question, not just "are you taking students?"

**No, if**:
- Program explicitly requests no pre-application contact
- Master's program (often don't want students emailing)
- Overlap is weak

If yes: recommend running `professor-contact` to draft an effective cold email.

---

## Output Format

```
## Deep Fit Analysis — Prof. [Name], [Program]

**Fit Verdict**: [Strong / Workable / Stretch / Weak]
**Confidence**: [High / Medium / Low]

### Professor Profile
[research focus, methods, recent directions]

### Lab Environment
[PhD students, recent placements, lab culture, funding]

### Genuine Overlap Assessment
[specific connection between applicant and professor's work]
[what applicant would contribute]

### Program-Fit Paragraph (draft)
[the specific text for the SoP]

### Risk Factors & Counter-Arguments
[concerns and mitigation]

### Outreach Recommendation
[email this professor before applying / don't contact / unclear]

---
**Recommended next**: `draft-sop [program]` to include this fit paragraph. **Alternatives**: `professor-contact` to draft an outreach email if recommended.
```

---

## State Updates

Save to Application Loop for this program:
- Target professors: updated with fit levels (Strong / Workable / Stretch / Weak)
- Fit signals: updated with detailed evidence
- Date analyzed: when `fit` was run
- Program-fit paragraph draft (reference in Coaching Notes)
