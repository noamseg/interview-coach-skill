# help — Command Reference

### Logic

When the user types `help`, generate a context-aware command guide — not just a static list. Pull from `application_state.md` to highlight the commands most relevant right now. Always include the full list at the bottom, but lead with what matters for this applicant at this moment.

---

## Context-Aware Highlights

Check `application_state.md` and surface the 3-5 most relevant commands based on:

- **Deadline urgency**: If a deadline is within 3 weeks → surface `review`, `draft`, `premit`
- **LoR gap**: If LoRs not yet requested for an upcoming deadline → surface `lor` urgently
- **Narrative bank empty**: If Narrative Bank has < 3 entries → surface `narratives` as first priority
- **No prep run**: If applying to a program but `prep` hasn't been run → surface `prep [program]`
- **New applicant**: If application_state.md is missing or no sessions logged → emphasize `kickoff` and `research`
- **Post-submission**: If application just submitted → surface `postsubmit`, `feedback`
- **Interview upcoming**: If Interview programs is populated and interview date is set → surface `simulate`, `premit`

---

## Full Command Reference

### Core Application Lifecycle

| Command | What it does |
|---------|-------------|
| `kickoff` | Initialize your academic profile, target programs, and coaching state. Start here. |
| `research [program]` | Program and faculty research + fit assessment. 3 depth levels: snapshot, standard, deep. |
| `prep [program]` | Full program application brief: document requirements, professor intelligence, narrative mapping. |
| `decode [requirements]` | Decode program prompts and fellowship criteria using 6 lenses to find what they're really evaluating. |
| `fit [program]` | Deep professor research: publication deep-dive, genuine overlap assessment, draft the program-fit SoP paragraph. |
| `deadline-plan` | Application calendar with backward-planned critical paths per program and LoR request deadlines. |

### Document Creation and Review

| Command | What it does |
|---------|-------------|
| `draft-sop [program]` | Full Statement of Purpose drafting session: architecture planning → section-by-section → initial review. |
| `draft [section]` | Section-level drafting and revision drills. Sections: opening, narrative, research, fit, goals, full-letter, cold-email. Revision drills: trim, sharpen, fit-check, voice. |
| `review [document]` | Score a document on 5 dimensions. Delivers Admission Committee inner monologue + automatic rewrite of weakest section. |
| `academic-cv` | Optimize your academic CV: publication ordering, research descriptions, teaching sections, academic conventions. |

### Narrative and Positioning

| Command | What it does |
|---------|-------------|
| `narratives` | Build and manage your academic narrative bank. Sub-commands: view, add, improve, find gaps, retire, drill, identity. |
| `positioning` | Build your research identity statement and 5 context variants (SoP opener, MotLetter hook, professor email, fellowship pitch, verbal). |

### Letters of Recommendation

| Command | What it does |
|---------|-------------|
| `lor` | LoR management. Sub-commands: select (rank recommenders), request (draft the email), brief (create recommender package), track (status), waive (guidance). |

### Professor and Program Outreach

| Command | What it does |
|---------|-------------|
| `professor-contact` | Coach professor cold-email outreach: specificity test, intellectual question, follow-up strategy. |
| `email-questions` | Generate strategic questions for professor emails or scholarship interviews. |

### Progress and Administration

| Command | What it does |
|---------|-------------|
| `concerns [program]` | Anticipate admissions committee concerns about your application. Severity ranking + counter-strategies. |
| `progress` | Trend review, score tracking, outcome correlation, self-assessment calibration, strategy update. |
| `feedback` | Capture application decisions, advisor feedback, professor email responses, and corrections. |
| `postsubmit` | Post-submission or post-interview rapid capture while impressions are fresh. |

### Confidence and Closure

| Command | What it does |
|---------|-------------|
| `premit` | Pre-submission or pre-interview boost. Evidence-based confidence brief + checklist + 3 risks + mitigations. |
| `reflect` | Post-cycle retrospective and archive. Closes the loop; captures lessons for future cycles. |

### Interview Sub-Module (only if programs have interview stages)

| Command | What it does |
|---------|-------------|
| `simulate [format]` | Full simulated scholarship interview. Formats: panel, research presentation, informal faculty meeting, fellowship interview. |

---

## Diagnostic Router

If the applicant isn't sure what to do next, ask:

1. "When is your earliest application deadline?"
   - Within 3 weeks → **triage mode**: `review` + `draft` + `premit` + confirm LoRs via `lor track`
   - 1-2 months → **focused mode**: `prep` → `narratives` → `draft-sop` → `review`
   - 3+ months → **full system**: `kickoff` → `narratives` → `positioning` → `deadline-plan` → `research` → `fit` → `draft-sop`

2. "What's the most important thing that's NOT done yet?"
   - No narratives developed → `narratives add`
   - No SoP draft → `draft-sop [program]`
   - SoP exists but hasn't been reviewed → `review sop [program]`
   - LoRs not requested → `lor request`
   - Don't know the professor well enough → `fit [program]`
   - Deadline approaching → `premit`

---

## Remind Every 3 Sessions

If `help` hasn't been used in 3+ sessions:

> "Reminder: `help` shows you all available commands and surfaces what's most relevant for where you are right now."
