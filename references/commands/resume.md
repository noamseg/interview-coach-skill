# resume — Holistic Resume Optimization

Optimize the candidate's resume across every dimension that actually affects whether they get interviews: ATS parsing and ranking, recruiter scan behavior, bullet quality, seniority calibration, keyword coverage, structure, concern management, and cross-surface consistency. This is NOT a duplicate of kickoff's Step 2.5 (which reads the resume for coaching signals). This is an optimization of the resume itself as a job-search document.

Also read `references/differentiation.md` (for earned secret integration into summary and bullets) and `references/storybank-guide.md` (for storybank data to feed into bullet rewrites and quantification).

---

## How Resumes Actually Work

**ATS (Applicant Tracking Systems)**: 83% of companies use AI-assisted screening. Most ATS don't auto-reject — they rank. Recruiters search the top and never see the rest. Average ATS score is 37%; target 75-80%. Keyword matching ranges from literal (Taleo) to semantic (iCIMS). Tables, columns, text boxes, headers/footers break parsing. Non-standard section headers lose scoring weight.

**Recruiter Scan**: 7-11 seconds, F-pattern. 80% of attention goes to: name, current title/company, previous titles/companies, dates, education. Quantified achievements increase callbacks 40%. 49% auto-dismiss for spelling/grammar. 72% prefer bullets over paragraphs.

**Bullet Quality**: XYZ formula (Accomplished X measured by Y by doing Z). "So What?" test (3 escalations: "So what?" → "Why does that matter?" → "What changed because of this?"). Action verbs shape 60%+ of perceived seniority. Quantification without hard numbers: ranges, frequency, scope, proxy metrics, comparative language.

**Seniority Signaling**: IC ("developed/built/implemented") → Manager ("managed/led/coordinated") → Director ("directed/scaled/established") → VP ("championed/orchestrated/transformed"). Beyond verbs: scope of impact, budget responsibility, span of control, strategic vs. tactical language.

**Structure**: Single column wins. Length: 1 page (<5yr experience) → 2 pages (5-15+yr). Standard section headers required. Summary outperforms objective by 340% in callbacks.

**Targeting**: Master resume strategy — comprehensive doc, extract targeted subset per application. Summary, skills ordering, bullet selection, keyword integration should adapt per JD.

**Common Mistakes**: Responsibilities instead of achievements. Contact info in headers/footers (25% of ATS skip these). Tables/columns. Non-standard headers. Repeated verbs. AI-generated smell. Timeline discrepancies with LinkedIn.

---

## Priority Check

Before running the full audit, check coaching state:
- If no `kickoff` has been run: "I can audit your resume, but without your target role context I'll be giving generic advice instead of calibrating for your seniority band and target role. Want to run `kickoff` first so I can target the audit, or proceed with a general review?"
- If the candidate has an interview within 48 hours: "You have an interview in [X] hours. Resume optimization can wait — let's focus on `hype` / `prep` first. Come back to this after."
- If resume text is not available: Ask for it. Accept any format — pasted text, file contents, or already captured during kickoff.

---

## Required Inputs

- Resume text (pasted, from file, or already captured during kickoff)
- Target role context (from coaching_state.md Profile, or ask)

## Optional Inputs

- Depth level: Quick Audit / Standard / Deep Optimization (default: Standard)
- Specific sections to focus on (e.g., "just my bullets" or "summary and skills only")
- Job description for targeted optimization
- Output preference: master resume optimization vs. targeted-for-specific-JD

---

## Depth Levels

| Level | When to Use | What It Covers |
|---|---|---|
| **Quick Audit** | Fast check, reviewing a draft, biggest wins | ATS compatibility + recruiter scan + top 3 fixes only |
| **Standard** | Default. Full resume review. | All 8 audit dimensions + bullet rewrites (most recent 2 roles) + summary rewrite + keyword analysis + storybank-to-bullet pipeline |
| **Deep Optimization** | Major overhaul, career transition, high-stakes application | All 8 dimensions + full bullet rewrite (all roles) + JD-targeted optimization + cross-surface consistency + master resume strategy + Challenge Protocol (Level 5) |

---

## Logic / Sequence

### Step 1: Resume Intake

Use resume from coaching state if available (kickoff captures resume text), otherwise ask. Accept any format — pasted text, copied from a doc, or described section by section. Be flexible.

### Step 2: Context Assembly

Pull from coaching_state.md:
- Target role(s) and seniority band
- Resume Analysis (build on kickoff's work — don't re-derive what's already been assessed. Focus on optimization, not re-diagnosis.)
- Storybank (for earned secrets and quantified outcomes to feed into bullet rewrites)
- Active Coaching Strategy (bottleneck — if Differentiation is the gap, emphasize that in resume too)
- LinkedIn Analysis (if exists — for cross-surface consistency at Deep level)
- Interview Loops (for JDs — enables targeted optimization)

### Step 3: ATS Compatibility Scan

Evaluate:
- **Format**: Single column, no tables/text boxes/graphics, no multi-column layouts
- **Section headers**: Standard names (Professional Experience, not "Where I've Made Impact")
- **Contact info placement**: In the body, not header/footer (25% of ATS skip header/footer content)
- **File format guidance**: PDF preserves formatting but some ATS parse DOCX better. Recommend testing both if the candidate has access to the company's ATS.
- **Keyword presence**: Target role keywords present in resume body (not just skills section)
- **Parsing integrity**: Would an ATS correctly extract job titles, company names, dates, and skills?

Rate: **ATS-Ready** / **ATS-Risky** / **ATS-Broken**

### Step 4: Recruiter Scan Audit

Evaluate the 7-second F-pattern scan:
- **First impression**: What does a recruiter see in the first 7 seconds? Name, current title, company, dates — do these tell a clear story?
- **Visual hierarchy**: Is the most important information visually prominent?
- **Information density**: Too dense (wall of text) or too sparse (wasted space)?
- **Scannability**: Bullets vs. paragraphs, consistent formatting, clear section breaks
- **Red flag visibility**: Are gaps, short tenures, or title regressions immediately visible without explanation? (Not about hiding them — about positioning them.)

Rate: **Strong** / **Moderate** / **Weak**

### Step 5: Section-by-Section Audit (8 dimensions)

**1. Professional Summary**
- Hook + positioning + differentiation
- Does it answer "why should I keep reading?" in 2-3 lines?
- Target role alignment — is it clear what they're going for?
- Earned secret or spiky POV present? (From storybank if available)
- Summary vs. objective (summary outperforms objective by 340% in callbacks)
- **Provide**: Rewritten summary with rationale

**2. Experience — Bullet Quality**
- Accomplishment vs. responsibility ("Led migration to microservices, reducing deployment time 60%" vs. "Responsible for system architecture")
- XYZ test: Does each bullet show what was accomplished, how it was measured, and what was done?
- "So What?" test: Can each bullet survive 3 escalations?
- Quantification: Hard numbers where possible, proxy metrics where not (ranges, frequency, scope, comparative language)
- Verb variety: No verb used more than twice across the resume
- AI-generation smell: Does the resume read like a human wrote it? Overly polished, buzzword-dense, or formulaic language triggers skepticism.
- **Provide**: Rewritten bullets — most recent 2 roles at Standard, all roles at Deep

**3. Experience — Seniority Calibration**
- Verb seniority match: IC verbs for IC roles, manager verbs for manager roles, director verbs for director roles (see Seniority Signaling above)
- Scope escalation: Does impact grow across roles? (individual → team → department → organization)
- Strategic visibility: Senior roles should show strategic thinking, not just execution
- Progression narrative: Does the resume tell a coherent story of growth?
- Cross-reference seniority bands from SKILL.md Core Rubric

**4. Skills Section**
- Keyword coverage: Target role keywords present?
- Relevance ordering: Most relevant skills first, not alphabetical
- Specificity: "Python, SQL, dbt, Airflow" beats "Programming Languages, Data Tools"
- Hard + domain keywords: Technical skills AND domain-specific terms
- **Provide**: Recommended skills list with ordering rationale

**5. Education and Certifications**
- Placement by career stage: Recent grads lead with education; 5+ years of experience puts it at the bottom
- Relevant credentials highlighted
- Irrelevant credentials deprioritized (not removed — just not prominent)
- GPA included only if strong and recent (<3 years out)

**6. Structure and Layout**
- Column layout: Single column (multi-column breaks ATS)
- Section ordering: Summary → Experience → Skills → Education (standard flow)
- Length: 1 page (<5yr), 2 pages (5-15+yr) — flag if mismatched
- Formatting consistency: Bullet style, date format, font usage
- White space: Enough to breathe, not so much it wastes space

**7. Concern Management**
- Cross-reference kickoff's "likely concerns" from Resume Analysis
- Employment gaps: Address with framing language, not excuses
- Short tenures: Position as intentional moves with clear rationale
- Domain switches: Bridge narrative connecting previous domain to target
- Title regressions: Explain (startup equity, scope expansion, etc.)
- Provide specific mitigation language for each concern identified

**8. Consistency and Polish**
- Spelling/grammar (49% auto-dismiss)
- Tense consistency: Current role in present tense, past roles in past tense
- Date format: Consistent throughout (Month Year or MM/YYYY, not mixed)
- Bullet punctuation: Consistent (periods or no periods, not mixed)
- No first person ("I managed" → "Managed")
- No buzzword padding ("synergized cross-functional stakeholder alignment" → "Aligned product, engineering, and design on roadmap priorities")
- Timeline consistency with LinkedIn (if LinkedIn Analysis exists — flag discrepancies)

### Step 6: Storybank-to-Bullet Pipeline (Standard + Deep, when storybank exists)

This is where the storybank directly improves the resume. Not just flags — actionable rewrites.

- **Impact mining**: Identify storybank outcomes (quantified results, earned secrets) that are missing from the resume. These are proven, real achievements the candidate has articulated but hasn't put on paper.
- **Earned secret integration**: High-strength story insights (strength 3+) → candidate's summary and/or bullet rewrites. An earned secret that surfaces in an interview answer should also surface in the resume.
- **Strength-priority ordering**: Strongest stories (by strength rating) → most prominent bullet positions. The best material should be in the most-scanned spots.
- **Skill tag cross-reference**: Storybank skill tags vs. resume skills section. Are skills the candidate has demonstrated in stories missing from the resume?
- **Story-to-bullet mapping**: For each story rated 3+, produce a corresponding resume bullet (with full rewrite). Format: "Story [S###: Title] → Bullet: [rewritten bullet text]"

### Step 7: JD-Targeted Optimization (when JD available)

When the candidate provides a specific job description, produce a targeted version:

- **Keyword gap analysis**: Map JD keywords → resume presence. Flag missing high-priority keywords.
- **Bullet priority reordering**: Reorder bullets within each role to lead with the most JD-relevant accomplishments.
- **Skills reordering**: Reorder skills section to match JD priority.
- **Summary adaptation**: Rewrite summary to mirror JD language and priorities.
- **Master resume extraction**: Which bullets to keep/drop/promote for this specific application.
- **Provide**: Complete targeted version (or the specific changes to make from the master resume)

### Step 8: Cross-Surface Consistency Check (Deep only)

Cross-reference the resume against other candidate surfaces:

- **Resume ↔ LinkedIn** (if LinkedIn Analysis exists): Titles match? Dates match? Same positioning strengths leading? Inconsistencies create doubt when a recruiter checks both.
- **Resume ↔ interview narrative** (if storybank + coaching strategy exist): Does the resume tell the same story the candidate tells in interviews? Are the strongest storybank themes reflected in resume bullet prominence?
- **Specific inconsistencies**: List each one with a recommended resolution.

### Step 9: Challenge Protocol (Deep, Level 5 only)

Run Challenge Protocol lenses against the resume:
- **Assumption Audit**: What must be true for this resume to work? (e.g., "Assumes the recruiter reads past the first page." "Assumes 'data-driven product leader' is how target companies search.")
- **Blind Spot Scan**: What can't you see about your own resume? (e.g., "You think your bullets show impact. From the outside, 4 of 7 are responsibility statements.")
- **Devil's Advocate**: If a recruiter was looking for reasons to skip this resume... (e.g., "No quantification in the most recent role. Two gaps unexplained. Skills section looks auto-generated.")
- **Strengthening Path**: The single highest-leverage fix that changes the resume's odds.

(Pre-Mortem omitted — doesn't apply to a static document.)

---

## Output Schema — Quick Audit

```markdown
## Resume Quick Audit

## ATS Status: [ATS-Ready / ATS-Risky / ATS-Broken]
[1-2 line rationale]

## Top 3 Fixes (in priority order)
1. **[Dimension]**: [What's wrong] → [Specific fix with rewrite if applicable]
2. **[Dimension]**: [What's wrong] → [Specific fix with rewrite if applicable]
3. **[Dimension]**: [What's wrong] → [Specific fix with rewrite if applicable]

## Quick Wins
- [1-2 things that take <5 minutes and improve ATS ranking or recruiter scan]

**Recommended next**: `resume` (Standard) — get the full audit with bullet rewrites. **Alternatives**: `stories`, `prep [company]`
```

## Output Schema — Standard

```markdown
## Resume Audit: [Name]

## Resume Score
- ATS compatibility: [ATS-Ready / ATS-Risky / ATS-Broken] — [1-line evidence]
- Recruiter scan: [Strong / Moderate / Weak] — [1-line evidence]
- Bullet quality: [Strong / Moderate / Weak] — [1-line evidence]
- Seniority calibration: [Aligned / Mismatched] — [1-line evidence]
- Keyword coverage: [Strong / Moderate / Weak] — [1-line evidence]
- Overall: [Strong / Needs Work / Weak]

## Section-by-Section

### Professional Summary
- Assessment: [hook strength, positioning, differentiation, target alignment]
- Recommended: [full rewritten summary]
- Why: [rationale]

### Experience — [Most Recent Role]
- Bullet quality: [accomplishment vs. responsibility, quantification, verb variety]
- Seniority calibration: [aligned / mismatched — with specifics]
- Rewritten bullets:
  - [original] → [rewrite]
  - [original] → [rewrite]
  - [...]

### Experience — [Second Most Recent Role]
- [same format as above]

### Skills
- Assessment: [keyword coverage, relevance ordering, specificity]
- Recommended skills list: [ordered list with rationale]

### Education and Certifications
- Assessment: [placement, relevance, credentials]
- Fix: [if needed]

### Structure and Layout
- Assessment: [column layout, section ordering, length, formatting]
- Fixes: [if needed]

### Concern Management
- Concerns identified: [from Resume Analysis or detected]
- Mitigation language:
  - [Concern 1]: [specific language to address it]
  - [Concern 2]: [specific language to address it]

### Consistency and Polish
- Issues found: [list]
- Fixes: [specific corrections]

## Storybank-to-Bullet Pipeline
[If storybank exists]
- Impact gaps: [storybank outcomes missing from resume]
- Story-to-bullet mapping:
  - S###: [Story Title] → [rewritten bullet]
  - S###: [Story Title] → [rewritten bullet]
- Skills gap: [storybank skills missing from resume skills section]

## JD Notes
[If JD available — brief keyword gap analysis + priority reordering suggestions. Full targeted version available at Deep level.]

## Priority Moves (ordered)
1. [highest-impact fix — do this first]
2. [second-highest]
3. [third]

**Recommended next**: `linkedin` — ensure your LinkedIn and resume tell a consistent story. **Alternatives**: `stories`, `resume` (Deep Optimization), `prep [company]`
```

## Output Schema — Deep Optimization

```markdown
## Resume Deep Optimization: [Name]

## Resume Score
[same as Standard]

## Section-by-Section
[same as Standard, but expanded to ALL roles — not just most recent 2. Full bullet rewrites for every role.]

### Professional Summary
[same as Standard]

### Experience — [Most Recent Role]
[full bullet rewrites]

### Experience — [Second Role]
[full bullet rewrites]

### Experience — [Third Role]
[full bullet rewrites]

### [... all remaining roles]

### Skills
[same as Standard]

### Education and Certifications
[same as Standard]

### Structure and Layout
[same as Standard]

### Concern Management
[same as Standard]

### Consistency and Polish
[same as Standard]

## Storybank-to-Bullet Pipeline
[same as Standard, but comprehensive — all stories rated 3+ mapped to bullets]

## JD-Targeted Optimization
[When JD available]
- Keyword gap analysis:
  | JD Keyword | Present in Resume? | Location | Action |
  |---|---|---|---|
  | [keyword] | Yes/No | [section] | [add/reorder/rewrite] |
- Summary adaptation: [rewritten summary targeting this JD]
- Bullet priority reordering: [which bullets to promote/demote]
- Skills reordering: [reordered skills list for this JD]
- Master resume extraction: [which bullets to keep/drop/promote]

## Cross-Surface Consistency
- Resume ↔ LinkedIn: [aligned / gaps — specific gaps listed]
- Resume ↔ Interview narrative: [aligned / gaps — specific gaps listed]
- Inconsistencies to resolve: [specific items with recommended resolution]

## Master Resume Strategy
- Current resume length: [pages]
- Recommended master resume approach: [maintain comprehensive version, extract per application]
- Targeting checklist: [what to customize per application — summary, skills order, bullet selection, keyword additions]

## Challenge (Level 5 only)
- Assumptions this resume rests on: [2-3]
- Blind spots: [what you can't see about your own resume]
- Devil's advocate: [strongest case for a recruiter to skip you]
- Highest-leverage fix: [the one thing that changes the resume's odds]

## Priority Moves (ordered)
1. [highest-impact fix]
2. [second]
3. [third]
4. [fourth]
5. [fifth]

**Recommended next**: `linkedin` — ensure cross-surface consistency. **Alternatives**: `stories`, `prep [company]`, `practice`
```

---

## Coaching State Integration

After running `resume`, save to coaching_state.md:

```markdown
## Resume Optimization
- Date: [date]
- Depth: [Quick Audit / Standard / Deep Optimization]
- Overall: [Strong / Needs Work / Weak]
- ATS compatibility: [ATS-Ready / ATS-Risky / ATS-Broken]
- Recruiter scan: [Strong / Moderate / Weak]
- Bullet quality: [Strong / Moderate / Weak]
- Seniority calibration: [Aligned / Mismatched]
- Keyword coverage: [Strong / Moderate / Weak]
- Top fixes pending: [1-3 line items]
- JD-targeted: [yes — which JD / no]
- Cross-surface gaps: [resume ↔ LinkedIn inconsistencies, if assessed]
```
