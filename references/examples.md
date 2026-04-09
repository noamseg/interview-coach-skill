# Worked Examples

These examples show what good skill output looks like. Use them as calibration anchors — not templates to copy, but demonstrations of the quality bar, triage logic, and coaching voice in action.

---

## Example 1: SoP Paragraph Review

**Document section submitted** (SoP P2 — Research Experience):

> "I worked in Dr. Chen's lab studying protein folding. We used molecular dynamics simulations to analyze the misfolding of tau proteins, which is associated with Alzheimer's disease. I contributed to the team and learned a lot about computational approaches. This experience deepened my interest in computational biology."

**Review output**:

```
Scores (P2 only):
- Message: 2 — Research is named but contribution is absent. "Contributed to the team" is not a claim.
- Authenticity: 2 — Generic voice; this reads like it could have been written about any lab rotation.
- Fit: N/A (program-fit paragraph not yet reached)

Primary bottleneck: Message — no specific contribution claim.

Admission Committee's inner monologue for this paragraph:
"Dr. Chen's lab — I know that lab; good reputation. Molecular dynamics on tau misfolding — okay, solid area. But... what did this person actually do? 'Contributed to the team'? Every applicant says that. I can't tell if they ran simulations, analyzed results, wrote code, or just watched. And 'learned a lot' — that's not evidence. I'm moving on."

Automatic Rewrite — P2 (Research Experience):

**Before**: "I contributed to the team and learned a lot about computational approaches."

**After**: "My specific contribution was developing a Python pipeline to automate the analysis of 500+ simulation trajectories — the previous manual approach was taking 3 weeks per dataset; my pipeline reduced that to 4 hours. This revealed a previously uncharacterized intermediate misfolding state that we're now preparing for publication."

What changed:
- "Contributed to the team" → specific task the applicant owned (pipeline development)
- Added quantified outcome (500+ trajectories, 3 weeks → 4 hours)
- Added research significance (uncharacterized intermediate state)
- Added publication signal
- Intellectual insight still missing — add: "What surprised me was that the intermediate state appeared consistently at low pH conditions, which suggests [non-obvious implication]. That's the question I want to pursue."
```

---

## Example 2: Narrative Extraction Session

**Applicant prompt**: "Tell me about a time something went wrong in your research."

**Applicant answer**: "I was running experiments for my thesis and the data didn't match my hypothesis at all. It was really frustrating. But eventually I realized the issue and fixed it."

**Coach follow-up sequence**:
1. "What was the specific issue? Walk me through what the data showed versus what you expected."
2. "When you say you 'realized the issue' — what was the moment you figured it out? What were you doing?"
3. "After you figured it out, did it change how you designed experiments going forward?"
4. "What would you tell someone starting a similar thesis project that they wouldn't expect?"

**After probing**, applicant reveals:
- The data showed a consistent 40% offset from expected values
- They spent 3 weeks thinking the model was wrong before realizing the sensor had been miscalibrated since the start of the semester
- The calibration issue had also affected a previous graduate student's data — which means the previous student's conclusions may need to be revisited
- They now always run calibration checks at the start and end of every session, not just at the start

**Intellectual Insight extracted**: "Systematic errors in sensor calibration are invisible in relative comparisons but catastrophic in absolute measurements — and they propagate silently through chains of research that build on each other. I now design experiments to catch systematic errors early, not just reduce random noise."

**Narrative assessment**: This is a strong Failure-Learning narrative (Strength: 4). The intellectual insight is non-obvious and has implications beyond this specific experiment. Deploy in: SoP P3 (shows research maturity), or MotLetter opening (shows intellectual honesty).

---

## Example 3: Program Fit Paragraph — Before and After

**Before** (generic — Fit = 1):

> "Harvard's Department of Chemistry offers world-class research facilities and a distinguished faculty that aligns perfectly with my academic interests. The collaborative environment and interdisciplinary programs make it an ideal place for me to pursue my PhD. I am particularly excited by the department's strengths in computational chemistry."

**After** (specific — Fit = 4):

> "At Harvard, I am excited to work with Prof. [Name], whose recent work on polarizable force fields for protein-ligand binding directly extends my thesis research on tau aggregation dynamics. Specifically, Prof. [Name]'s 2024 paper demonstrating that standard non-polarizable force fields systematically underestimate binding free energies in flexible protein systems is precisely the technical gap my work encountered — and that I want to build on. I am also interested in Prof. [Name 2]'s integrative structural biology group, whose cryo-EM data could provide experimental validation for the computational predictions I plan to generate. The department's access to both Summit and Frontera computing resources would enable the simulation scales my proposed work requires."

**What changed**:
- Generic "distinguished faculty" → named specific professor
- Generic "strengths in computational chemistry" → specific 2024 paper and what it found
- Generic "excited" → specific intellectual connection ("precisely the gap my work encountered")
- Generic "ideal environment" → specific computational resources named and their role explained
- Passes substitution test: this paragraph only works because of this specific applicant's specific tau aggregation work + this specific professor's 2024 paper

---

## Example 4: Admissions Committee Inner Monologue

**Context**: Reading the full SoP above after the program-fit paragraph is improved.

> "A committee member opening this SoP is thinking:
>
> *P1*: 'Interesting opening — 'the 40% offset that wasn't in the data' immediately tells me this person has done hands-on experimental work. They had a setback. I want to know more.'
>
> *P2-3*: 'Okay, molecular dynamics on tau. Good lab. The pipeline contribution is specific and I can picture it — this person can build tools, not just run analyses. The calibration error story is actually charming: it shows self-awareness and research maturity. Most students would have buried that.'
>
> *P5*: 'The research question is specific: extending polarizable force fields to flexible proteins. That's a real gap in the field. They know it's a gap — they've read the literature.'
>
> *P6*: 'Oh, they mention Prof. [Name]'s 2024 paper. That's the paper I co-authored. They clearly read it carefully — the connection they're making is correct and non-obvious. And Prof. [Name 2] is a reasonable second choice. Summit access is a real need for this kind of work — they've thought about execution, not just aspiration.'
>
> 'This is a real person with a real research problem and a real reason to be here. Advancing to the next round.'"

---

## Example 5: Kickoff Academic Profile Analysis

**Profile inputs**: Biochemistry undergraduate, GPA 3.4, no publications, one lab rotation (Dr. Chen's lab above), applying to PhD programs in computational biology.

**Positioning strengths**: 
> "You have a clear research narrative: one focused lab experience with a specific technical contribution (the simulation pipeline) and a genuine intellectual insight about your field (systematic errors in calibration and their implications). That's a clean story. The fact that you didn't publish doesn't define you — the specificity of what you did does.

> The field switch (biochemistry → computational biology) is actually your strongest card if framed correctly: you bring wet lab intuition to a computational field, which gives you an unusual ability to evaluate whether computational predictions make physical sense. Most computational biology PhD students come from either pure CS or pure biology — you can translate between them."

**Likely committee concerns**:
1. *GPA below program median (3.4 vs. typical 3.7+)*: Significant. The SoP must demonstrate research capability independent of GPA. The LoRs — especially from Dr. Chen — must directly address your potential. [HIGH confidence]
2. *No publications*: Moderate. Common for undergraduate applicants; not a dealbreaker. The pipeline contribution and the calibration paper (if it advances) can be mentioned in progress. [MEDIUM confidence]
3. *Field switch (biochemistry → computational biology)*: Moderate. Needs a clear bridge narrative. [HIGH confidence]

**Narrative seeds**:
- The calibration error story: strong Failure-Learning narrative with genuine insight
- The pipeline development: strong Research Experience narrative with quantified outcome
- The field switch itself: Field Connection narrative — "why computational biology from biochemistry"

**Narrative gaps**:
- No Mentorship narrative yet (who introduced you to this path?)
- No Intellectual Turning Point narrative (what made you realize computational approaches were the right lens?)

**Recommended next**: `narratives add` to develop the pipeline and calibration stories before drafting the SoP.

---

## Example 6: Professor Outreach Email — Before and After

**Before** (generic):
> "Subject: Prospective PhD Student
>
> Dear Prof. Johnson,
>
> I am a prospective PhD student interested in your research. I have been studying protein folding and am fascinated by computational approaches to understanding disease mechanisms. I believe your lab would be an excellent fit for my interests. Please let me know if you are accepting students.
>
> Best,
> [Name]"

Problems: no specific paper referenced; generic interest claim; directly asks "are you accepting students" (bad); no research connection.

**After** (specific):
> "Subject: Question about your polarizable force field work and tau misfolding
>
> Dear Prof. Johnson,
>
> I'm writing because your 2024 paper on polarizable force fields for flexible proteins directly connects to a problem I encountered in my thesis research. We found that our tau aggregation simulations showed systematic underestimation of binding affinity in flexible loop regions — which I think is exactly the limitation your new approach addresses.
>
> I'm completing a biochemistry degree at [University], where I developed an automated pipeline for MD simulation analysis under Dr. Chen. I'm applying to computational biology PhD programs for Fall 2027.
>
> I'd be curious whether your force field parameterization approach has been tested on intrinsically disordered proteins like tau, where the flexibility is more extreme. I haven't been able to find this in your published work, and I'm wondering if it's a direction you're exploring.
>
> Thank you for considering this.
>
> [Name]"

What improved: specific paper referenced; genuine research connection; specific intellectual question (not "are you taking students?"); brief credential statement with specific contribution; appropriate length (under 150 words).
