# deadline-plan — Application Calendar & Critical Path

**Purpose**: Build and maintain an application calendar with backward-planned critical paths per program. Scholarship applications have hard external deadlines (unlike job applications where the candidate controls timing). This command ensures nothing falls through the cracks and the applicant knows what to prioritize each week.

---

## When to Run

Run `deadline-plan` when:
- Starting the application cycle (after `kickoff`)
- Adding new target programs mid-cycle
- Deadline is approaching and triage mode is activated
- Checking what's most urgent this week

---

## Step 1: Collect Deadlines

Ask for all application deadlines and create the Application Calendar table:

> "Give me every deadline you're tracking. For each one: program name, degree level, and exact deadline date."

Record in Application Calendar:
```
| Deadline | Program | Degree | Days Remaining | Priority | Critical Path Item |
|----------|---------|--------|----------------|----------|--------------------|
| [date] | [name] | [PhD/MA/Fellowship] | [auto-calculated] | [tier] | [what's due] |
```

**Priority tier logic** (auto-calculated from days remaining):
- **Urgent** (<3 weeks): highest priority; every session focuses on getting documents to Final
- **Active** (3-8 weeks): strong priority; this is the main focus
- **Planned** (>8 weeks): lower priority; can work on this alongside active applications; still needs progress

---

## Step 2: Backward-Planning Per Program

For each program with an upcoming deadline, build a critical path — the sequence of dependencies that must be completed by the deadline.

**Template for backward planning**:

```
[Program Name] — Deadline [date] ([X days away])

Working backward from deadline:
Day 0 (deadline): Submit application ✓
Day 1-2 (by [date]): Final proofread + submit
Day 3-7 (by [date]): Final revisions complete; documents ready to submit
Day 8-14 (by [date]): LoRs submitted to portal; [program] application portal opens
Day 15-21 (by [date]): All document revisions complete; LoRs confirmed with recommenders
Day 22-28 (by [date]): Request LoRs (6 weeks before deadline)
Day 28-35 (by [date]): Document draft review + revision complete
Day 35-42 (by [date]): Document drafts complete
Day 42+ (by [date]): Begin drafting documents; complete `prep [program]` and `fit [program]`

Critical dependencies:
- LoR requests MUST go out 6+ weeks before deadline (this is non-negotiable)
- Document drafts MUST exist 2+ weeks before deadline for revision
- Program fit analysis (`fit [program]`) must be done BEFORE program-fit paragraph is drafted
```

---

## Step 3: Current Status Check

Pull from Application Loops. For each program, assess completion:

```
[Program] Status Check:
✓ Researched: yes (date: [date])
✓ Prepped: yes (date: [date])
? SoP: draft complete / in revision / not started
? MotLetter: required / not required / draft complete
? CV: academic CV / program-specific variant / not started
? LoRs: requested / [count] confirmed / [count] submitted
? Interview: no / yes, date [date]

Next action: [based on critical path and current status]
On track: yes / no — [reason if no]
```

---

## Step 4: Weekly Priority Matrix

Build a matrix for the next 4 weeks showing what should be worked on each week:

```
Application Priority — This Week [week of date]

Urgent (deadline < 3 weeks):
- [Program A]: [specific task — e.g., "Finish SoP revisions; submit LoRs to portal"]
- [Program B]: [specific task]

Active (deadline 3-8 weeks):
- [Program C]: [specific task — e.g., "Request LoRs; start draft-sop"]

Planned (deadline > 8 weeks):
- [Program D]: [specific task — e.g., "Run fit [program]; map narratives"]

Recommended session focus: [which program to work on first this week]
```

---

## Step 5: LoR Deadline Enforcement

LoR deadlines are the most critical hidden deadline. Add these to the calendar explicitly:

```
LoR Request Deadlines (6 weeks before application deadline):

[Program]: Application deadline [date] → LoR request deadline [date] ([X days away])
  Recommenders: [name], [name], [name]
  Status: [not requested / requested / confirmed / submitted]
  Action: [if deadline < 7 days: REQUEST LoRs TODAY]
```

**Urgent LoR flag**: If any program's LoR request deadline is within 7 days and LoRs haven't been requested, surface this as the single most important action.

> "Your [Program] LoR request deadline is in [X] days. This is your most urgent task. Requesting LoRs today is the minimum viable action before doing anything else."

---

## Step 6: Milestone Tracking

Track per program what major milestones have been completed:

```
Milestone Completion — All Programs

[Program A]:
✓ Research complete [date]
✓ Prep complete [date]
✓ Narratives ready [date]
✓ SoP draft complete [date]
○ SoP revisions in progress
○ MotLetter not yet started
○ LoRs requested [date]
○ LoRs submitted [date]
○ Ready to submit [date]

[Program B]:
✓ Research complete [date]
○ Prep not yet complete
...
```

---

## Session-Start Integration

At the start of every session, the deadline calendar should inform the greeting:

> "Welcome back. Your [Program] deadline is in [X] days. You need to [specific task]. Let's focus on that."

Or:

> "No urgent deadlines this week. Your next deadline is [Program] in [X] days. Want to work on that, or focus on a program further out?"

---

## Output Format

```
## Application Calendar & Critical Path

**Today's date**: [date]

### Application Calendar (All Programs)
| Deadline | Program | Degree | Days Remaining | Priority | Critical Path Item |
|----------|---------|--------|----------------|----------|--------------------|
[all rows, sorted by deadline]

### LoR Request Deadlines (Critical)
[all LoR deadlines, with URGENT flags if < 7 days]

### This Week's Priorities
Urgent: [program] — [task]
Active: [program] — [task]
Planned: [program] — [task]

### Milestone Status
[per-program completion checklist]

---
**Recommended next**: [based on critical path] **Alternatives**: [related commands]
```

---

## State Updates

Save to `application_state.md`:
- Application Calendar table
- LoR Request Deadline summary (with URGENT flags)
- Weekly Priority Matrix (update each week)
- Milestone Tracking (update as tasks complete)

Update at session start to recalculate days remaining and auto-flag deadlines < 3 weeks.
