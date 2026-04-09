# feedback — Capture Feedback, Outcomes, and Corrections

A lightweight command for capturing information that arrives between structured workflows. Feedback does **capture**, not analysis. Analysis happens in `review`, `progress`, and `prep` when the data becomes relevant.

---

## When to Use

Use `feedback` when the applicant:
- Received a decision on an application (admitted / waitlisted / rejected)
- Got feedback from an advisor, professor, or program coordinator on their application materials
- Wants to correct something from a previous session
- Received a professor's response to a cold email
- Has general observations to capture outside a structured workflow

---

## Type Detection

Identify which type of feedback this is, then apply the appropriate capture protocol:

### Type A — Application Decision

Applicant received an admission decision.

Capture:
- Program, degree, decision (admitted / waitlisted / rejected / withdrew)
- Date decision received
- Any feedback provided by the program
- If admitted: financial package, whether full funding, stipend details
- If rejected: any feedback given? (most programs don't provide feedback; some do)
- Applicant's emotional response (brief — one word)

Record in Outcome Log. Update Application Loop status → Decision.

If admitted and applicant is deciding between multiple offers:
> "Congratulations. Before deciding, let's think through the offers. What matters most to you — research fit, funding, location, program reputation? And do you want to ask one program to match another's offer?"

If rejected:
> "That's disappointing. Do you want to take a moment, or should we figure out what it means for your other applications and whether there's anything to adjust?"

Do not immediately pivot to "what can we learn from this." Give space first.

### Type B — Advisor/Professor Feedback on Documents

Applicant received feedback from an advisor, professor, or recommender on draft documents.

Capture:
- Who gave the feedback (relationship, expertise level)
- Which document
- The specific feedback (quote or close paraphrase)
- Whether the applicant agrees with the feedback

Record in Narrative Intelligence → Reviewer/Advisor Feedback.

**Drift signal**: If external feedback directly contradicts your scores (e.g., advisor says "the program-fit section is generic" but you scored Fit at 4), flag for investigation in the next `review` session. External feedback from someone with domain knowledge overrides internal scoring.

### Type C — Coaching Correction

Applicant is correcting something you said or recommending a change to the coaching approach.

Examples: "The SoP structure you suggested doesn't work for this fellowship's specific prompt." / "That professor has left the university — the research data is outdated."

Capture immediately. Update the relevant data in `application_state.md`. If it was a factual error, flag with LOW confidence what you previously stated.

### Type D — Professor Email Response

Applicant received a response to a professor outreach email.

Capture:
- Professor name and program
- Response type (enthusiastic / brief positive / no response / negative)
- Key content of response
- Next action recommended

Update Application Loop: Professor contacted → response received.

### Type E — General Memory

Applicant shares something relevant to their application that doesn't fit another type: a conversation they had, a program visit, something they read about a program.

Capture in Coaching Notes. Flag if it affects any current Application Loop data (e.g., "heard at the campus visit that Prof. X is on sabbatical next year" → update Application Loop fit assessment).

---

## Output

After capturing feedback:

1. Confirm what was saved
2. Note any immediate implications: "Your rejection from [Program A] doesn't affect your [Program B] application, which is still due in 3 weeks. Let's stay focused on that."
3. If the feedback changes the Active Coaching Strategy: update it explicitly
4. End with a recommended next step

```
Captured: [Type] — [brief summary]
Saved to: [where in application_state.md]
Implication: [what this changes, if anything]
Recommended next: [command]
```
