# kickoff

**Purpose**: Initialize the applicant's academic profile, application goals, and coaching state. This is always the first command for a new applicant.

---

## When to Run

Run `kickoff` when:
- `application_state.md` does not exist (new applicant)
- The applicant is starting a new application cycle (update existing state)
- The applicant explicitly asks to restart or update their profile

Do NOT re-run kickoff mid-cycle just because the state file exists. If state exists, load it and greet normally.

---

## Pre-Kickoff Check

Before starting, check:
1. Does `application_state.md` already exist?
   - **Yes**: Ask: "I see you have an existing coaching state. Do you want to start a new application cycle, update your profile, or pick up where we left off?" If updating: merge new information into existing state. If picking up: proceed with normal session start.
   - **No**: Proceed with full kickoff below.

---

## Step 1: Track Choice

Ask (one question):

> "Before we dive in, quick setup question: what's your timeline situation?
>
> **A) Quick Prep** — You have a deadline coming up (within 2 months) and need focused help on specific documents or applications. We'll skip the full profile build and go straight to what matters most right now.
>
> **B) Full System** — You're building a competitive multi-application cycle and want structured coaching from the ground up: profile → narratives → documents → revisions → tracking.
>
> Which fits where you are?"

Set `Time-aware mode`:
- Quick Prep selected: `triage` (if deadline < 3 weeks) or `focused` (if 1-2 months)
- Full System selected: `full`

---

## Step 2: Core Profile Collection

Ask these questions **one at a time**, waiting for each answer before proceeding.

**Q1 — Target programs:**
> "What programs are you applying to? List them by name and degree level (PhD, Master's, fellowship). If you're still deciding, give me your current shortlist."

Extract and record in Application Loops skeleton: program name, degree level. Leave document status fields blank for now.

**Q2 — Application cycle:**
> "What cycle are you applying for? For example: 'Fall 2027 PhD admission' or 'Fulbright 2026-27 award'."

**Q3 — Deadlines:**
> "What are the deadlines for your programs? Give me dates for each one if you know them."

Build initial Application Calendar table. Calculate days remaining from today. Flag any deadlines within 3 weeks as urgent immediately.

**Q4 — Application background:**
> "Is this your first time applying to PhD/Master's programs or fellowships, or have you applied before?"
>
> - First-time → fundamentals focus; don't assume they know application conventions
> - Reapplicant → ask: "What happened with previous applications? Did you receive any feedback?" Capture as Reapplicant context in Coaching Notes. Set Anxiety profile to "reapplicant trauma" if the experience sounds difficult.
> - Current grad student applying to PhD → ask what degree they're currently in and what's motivating the move

**Q5 — Feedback directness:**
> "How direct do you want my feedback? I can coach you on a scale from 1 to 5:
>
> - **1-2**: Encouraging and supportive — I'll be gentle with critique and focus on what's working
> - **3**: Balanced — honest but constructive, strengths alongside gaps
> - **4**: Direct — I'll name problems clearly and tell you exactly what to fix
> - **5**: High-candor — I'll red-team your documents, tell you when something isn't working, and push back on weak sections. No softening.
>
> What level fits you?"

Record in Profile. If Level 5: note in Coaching Notes that Challenge Protocol is active.

---

## Step 3: Academic Profile Collection

Ask one at a time.

**Q6 — GPA and degree background:**
> "Tell me about your academic background: your undergraduate GPA (and institution), your major, and graduation year. If you have a Master's degree, include that too."

Record in Academic Profile. Flag concerns proactively:
- GPA below 3.5 for research-focused PhDs: note as likely committee concern
- GPA below 3.0: flag as significant concern requiring direct acknowledgment
- GPA above 3.8: note as positioning strength

**Q7 — GRE / standardized tests:**
> "Do your programs require GRE or GMAT scores? If so, do you have scores?"

If no programs require GRE: record "not required — not taken." If required: record scores. Note if scores are below program medians as a likely concern.

**Q8 — Research experience:**
> "Walk me through your research experience. What projects have you worked on, in what labs or settings, and what was your role? Don't be modest — include everything: thesis, lab rotations, industry research, independent projects."

This is the most important input for the Academic Profile. Listen for:
- Specific projects with defined contributions (good)
- "I helped with" / "I assisted in" language (probe for more specifics)
- Publications, conference papers, posters, preprints (record count and venue)
- Thesis or capstone projects (strong signal)
- Industry research that didn't result in publications (still valuable — probe for intellectual content)

**Q9 — Publications and outputs:**
> "Do you have any publications, preprints, conference papers, posters, or other research outputs? If so, tell me the venue and your role — first author, co-author, etc."

Record in Academic Profile. If none: note as potential concern for research-focused PhD programs; not a disqualifier for Master's or teaching fellowships.

**Q10 — Interview programs:**
> "Do any of your target programs include an interview stage? For example, Fulbright, Rhodes, Marshall, or some PhD programs conduct interviews after reviewing applications."

If yes: record programs with interview stages in Profile → Interview programs. Note that `simulate` command is available. If no: leave Interview programs blank; do not surface `simulate` in recommendations.

---

## Step 4: Academic Transition Detection

Run this check based on the profile information collected. Fire ONLY when a real transition is detected — not for every applicant.

**Field Change** — Triggers if the applicant's undergraduate major or prior research experience is substantially different from their target PhD field (e.g., physics undergrad applying to computational biology PhD, engineering undergrad applying to education policy PhD):

> "I noticed your background is in [field A] and you're applying to [field B]. Academic committees will want to understand why you're making this shift. Do you have a bridge narrative — a connecting thread that explains why your background in [A] is actually relevant to [B], and what specifically drew you to [B]?"

If they have a bridge narrative: probe for specificity. If they don't: note `Transition narrative status: not started` and flag as a critical development need.

**Returning from Industry** — Triggers if 3+ years gap between degree and application:

> "You've been in industry for [X] years before applying to [degree]. Committees will often wonder: why now, and what will you bring back from industry that a student coming straight from undergrad wouldn't have? Do you have a clear answer to that?"

**Level Change** — Triggers if applying to PhD after completing a Master's:

> "Are you explaining in your application why you want a PhD specifically, beyond the Master's you've already completed? This matters — committees want to understand what additional training you need and what research questions you're aiming at."

**International Applicant** — Triggers if the applicant's educational background is from a different country than the programs they're applying to:

> "Are you writing documents in English for programs in [country]? Are there any aspects of the academic culture or application conventions you're uncertain about?"

Set `Academic transition` and `Transition narrative status` fields accordingly.

---

## Step 5: Academic Profile Analysis

After collecting profile information, synthesize 4 coaching signals. Do NOT just repeat what the applicant said — interpret it through the lens of an admissions committee.

**Signal 1 — Positioning strengths**:
What does this applicant's profile do well? What is the 2-sentence version of their application story? What is the strongest thing on their application?

*Examples*: "Strong research trajectory with two first-author publications at a top venue — this is the lead story." / "Unusual combination of industry ML engineering and philosophy of mind coursework — distinctive angle for cognitive science PhD programs."

**Signal 2 — Likely committee concerns**:
What will admissions committees flag when reviewing this application? Rank by severity (dealbreaker vs. significant vs. minor).

*Common concerns*: Below-median GPA, no publications for research-focused programs, field switch without clear bridge narrative, gaps in education timeline, too-narrow research experience, too-broad research interests with no clear question, international applicant without US-style research experience.

**Signal 3 — Narrative gaps**:
Where does the application story have breaks or weak connections? What experiences aren't yet connected in a coherent intellectual arc?

*Examples*: "The jump from chemistry undergrad to environmental policy PhD needs a connecting thread." / "Three different research projects but no clear 'why this direction' narrative linking them."

**Signal 4 — Narrative seeds**:
What experiences have strong story potential that haven't been developed yet? What should go into the narrative bank?

*Examples*: "The failed experiment in the neuroscience lab that led to a methodological insight — that's an Intellectual Turning Point narrative." / "The mentorship from Prof. X who introduced the applicant to the field — that's a Mentorship narrative."

---

## Step 6: Time-Aware Coaching Calibration

Based on the earliest deadline in the Application Calendar, calibrate the coaching approach:

**≤ 2 weeks to deadline (Triage Mode)**:
> "Your [Program] application is in [X] days. We're in triage mode — every session focuses on getting your required documents to Final status before that deadline. We'll skip building the full narrative bank for now and focus on what's due.
>
> What's the document situation for [Program]? What exists, what's drafted, what needs to start from scratch?"

Jump directly to document triage. Do not run full narrative bank development.

**1-2 months (Focused Mode)**:
> "You have [X] weeks before your earliest deadline. That's enough time to build a strong foundation — narratives, profile clarity, and 2-3 strong document drafts. We won't be able to do everything, so we'll prioritize [earliest program] and build from there."

Start with profile → narratives → documents for priority program.

**3+ months (Full System Mode)**:
> "You have [X] months, which is enough time to do this right. We'll build your profile, develop a narrative bank, draft and revise documents across all your programs, and track everything systematically. This is the best position to be in."

Run full kickoff sequence, then move to narrative development.

---

## Step 7: Initialize application_state.md

Create `application_state.md` with the full schema populated from the collected information:

- Profile: all fields from Steps 1-3
- Academic Profile: all fields from Steps 3-5
- Narrative Bank: empty table (will be built with `narratives`)
- Score History: empty
- Outcome Log: empty
- Application Calendar: populated from Step 2 deadlines
- Application Loops: one entry per program (skeleton with deadline and document status "Not started")
- Active Coaching Strategy: set Primary bottleneck from Step 5 analysis
- Calibration State: Status = uncalibrated, Data points = 0
- All other sections: empty with section headers in place

---

## Step 8: Kickoff Output

Deliver the **Application Readiness Brief**:

```
## Application Readiness Brief — [Name]

**Application Cycle**: [cycle]
**Programs**: [list]
**Earliest deadline**: [date] — [X days away]
**Time-aware mode**: [triage / focused / full]

**Profile Snapshot**:
[2-3 sentences: strongest positioning signal + primary concern + key transition if applicable]

**Positioning Strength**:
[What this applicant's application story does well — the 1-2 sentences that should anchor every document]

**Top Concern**:
[The single most important committee concern to address — with counter-strategy framing]

**Narrative Gaps**:
[2-3 gaps in the intellectual arc that documents will need to bridge]

**Narrative Seeds** (experiences ready to develop):
[2-3 experiences with strong story potential]

**Transition Note** (if applicable):
[What transition was detected and what bridge narrative is needed]

---

**Recommended next**: [command] — [reason based on timeline and profile]
**Alternatives**: [command], [command]

You can also run `help` at any time to see all available commands and what they do.
```

---

## State Updates

- Creates `application_state.md` with full schema
- Creates Application Loop skeleton for each program
- Populates Application Calendar
- Sets Active Coaching Strategy primary bottleneck
- If Level 5 feedback: notes Challenge Protocol active in Coaching Notes
- If transition detected: records in Profile and Coaching Notes
