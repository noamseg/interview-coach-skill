# Narrative Bank Guide

A searchable index of academic experiences organized for quick retrieval during document drafting.

---

## Narrative Bank Format

Each narrative has two components: an index entry in the table and full arc text in the Narrative Details section.

### Index Table

```markdown
| ID | Title | Type | Primary Theme | Secondary Theme | Intellectual Insight | Strength | Used In | Last Used |
|----|-------|------|---------------|-----------------|----------------------|----------|---------|-----------|
| N001 | [Short title] | Research Experience | [e.g., causal inference] | [e.g., cross-domain methods] | [1-phrase summary] | 4 | SoP P2 (MIT) | 2026-04-01 |
```

**Column definitions**:
- **ID**: N001, N002, etc. — sequential, never reuse
- **Title**: 3-5 word descriptive title (for quick identification)
- **Type**: Research Experience / Challenge-Growth / Intellectual Turning Point / Mentorship / Failure-Learning / Field Connection
- **Primary Theme**: the main competency, skill, or intellectual domain this narrative demonstrates
- **Secondary Theme**: a secondary dimension (can be blank)
- **Intellectual Insight**: one phrase capturing the non-obvious takeaway
- **Strength**: 1-5 composite score
- **Used In**: document type + section + program, e.g., "SoP P2 (MIT), MotLetter (Fulbright)"
- **Last Used**: date when narrative was last deployed in a document

### Narrative Detail Entry

```markdown
#### N001 — [Title]
- **Type**: Research Experience
- **Context**: [Where/when — setting, stakes, what was being worked on]
- **Challenge**: [What made this hard — intellectual, practical, or personal obstacle]
- **Insight**: [What was figured out — the resolution of the challenge]
- **Impact**: [What changed — for the project, field, or applicant's path]
- **Meaning**: [How this connects to PhD goals and research agenda]
- **Intellectual Insight**: [The non-obvious takeaway — the "earned secret" of this experience]
- **Strength**: [1-5]
- **Deploy in**: [SoP section / MotLetter section / Research Proposal / other]
- **Version history**: [date — what changed; e.g., "2026-03-15: Added intellectual insight; 2026-03-20: Sharpened impact sentence"]
```

---

## Building the Initial Narrative Bank

When starting with an empty bank, guide the applicant through an initial extraction session (typically 45-60 minutes, run during or after `kickoff`).

**Rapid experience inventory** (for quick coverage):

Ask these 6 questions one at a time. Each should surface at least one narrative:

1. "What's the single most significant research project you've worked on? Walk me through what you actually did — not your role title, but what you did day-to-day."

2. "Tell me about a time in your academic work when something went wrong or didn't work the way you expected. What happened, and what did you figure out?"

3. "Tell me about the moment you first got seriously interested in [their field] — what happened, and what made you realize this was the direction you wanted to go?"

4. "Is there a professor, advisor, or mentor who significantly shaped how you think about your research? Tell me about a specific conversation or moment with them."

5. "What's the most interesting or counterintuitive thing you've learned in your research? Something that changed how you think about the field?"

6. "Have you had any experiences that most people in your program or field wouldn't have had — from your background, industry experience, or unusual path? What did those bring?"

After each answer: probe for Intellectual Insight. The insight is usually buried. "So what did you actually take away from that? What do you know now that you didn't know before you went through that experience?"

---

## Narrative Health Check

Run during `narratives view` and `progress`. A healthy narrative bank:

| Metric | Target | Current Status |
|--------|--------|---------------|
| Total narratives | 6-10 | [count] |
| Strength 4+ | ≥ 60% of total | [count] |
| Intellectual Insights extracted | 100% | [count] / [total] |
| Type coverage | All 6 types represented | [missing types] |
| Document coverage | All SoP sections have Strong Fit narrative | [gaps] |
| Overuse risk | No narrative used in 3+ programs unchanged | [flagged] |
| Quantified outcomes | ≥ 2 narratives | [count] |
| Failure-Learning narrative | ≥ 1 (for PhD applicants) | [present/absent] |

---

## Narrative Strength Ladder

### Moving Strength 2 → 3
The narrative exists but is too vague. It has the arc but lacks specific detail.

Fix: "Walk me through this project again but give me the specifics — what exact method were you using? What did the data look like? What specifically did you do that someone else on the team couldn't have done?"

### Moving Strength 3 → 4
The narrative has good specific content but the Intellectual Insight is missing or vague.

Fix: "You've described what happened. Now tell me: what did you actually learn from it that changed how you think? What would you do differently or how did this change your approach to [field]?"

### Moving Strength 4 → 5
The narrative has strong content and a clear insight but isn't distinctive enough — another applicant with similar experience could tell a similar story.

Fix: Apply the Spiky POV from `references/differentiation.md`. "What's the version of this insight that's non-obvious? Most researchers in your field would assume X — what did you find that challenges that assumption?"

---

## Narrative Retirement Criteria

Retire (archive) a narrative when:
- Strength 1-2 with no realistic path to improvement (the experience itself is thin)
- The narrative has been superseded by a stronger narrative covering the same competency
- The narrative is no longer relevant to the applicant's current research direction
- The narrative was overused (appears unchanged in 3+ submitted applications) and has since been replaced

Retirement process: move from active table to a "Retired Narratives" section at the bottom of the Narrative Bank. Include retirement date and reason.

---

## Rapid-Retrieval Drill Protocol

For applicants with 6+ narratives: build retrieval speed so the right narrative surfaces instantly when drafting.

Drill format:
- State a document section and program: "SoP P2 for a computational biology PhD"
- Applicant responds in 10 seconds: narrative ID + one opening sentence
- Coach evaluates: right narrative for this context? Right opening?
- 8-10 rounds across different sections and programs

The drill reveals whether the applicant has internalized the bank or still needs to search it. If searching: run a narrative identity extraction (`narratives identity`) to find the through-line.

---

## Cross-Document Coherence

When the same narrative appears in multiple programs' SoPs: each deployment must be adapted, not copied.

**Minimum differentiation per program**:
- The program-fit framing must change (connects to different professors)
- The "Meaning" section must connect to this program's specific research direction
- The "Impact" framing may stay the same if the outcome is genuinely the same

**Red flag**: Identical paragraph for P2 across 3 programs. Even if the research experience is the same, the framing should shift based on what each program values.

Track in "Used In" column: if a narrative is used in more than 2 programs, flag for adaptation check.
