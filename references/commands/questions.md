# email-questions — Questions for Professor Emails & Scholarship Interviews

**Purpose**: Generate strategic questions for two contexts: (1) questions to include in professor outreach emails before applying, and (2) questions to ask during scholarship interviews. Both serve specific tactical purposes — they're not filler.

---

## Context Detection

Ask the applicant which context they need:

> "Are you generating questions for a **professor outreach email** (before applying), or for a **scholarship interview** (where you'll be asked 'do you have any questions for us')?

---

## Context 1: Professor Email Questions

Questions embedded in professor outreach emails serve one purpose: establish that you've done the research homework and have a genuine intellectual question worth answering.

**Rules for professor email questions**:
1. **Must be specific** — answerable only by this professor, not by reading their website
2. **Must be intellectual** — about the research, not about logistics ("are you taking students?")
3. **Must be genuine** — you actually want to know the answer
4. **One question only** — don't ask three things in a cold email

**Good professor email questions**:
- "In your 2024 paper on [topic], you found [specific finding]. I'm curious whether you've explored [logical extension]. Is that a direction your lab is working on?"
- "Your work uses [method X] — I'm interested in whether that approach generalizes to [scenario Y], which is where my prior work has been. Is that something you're thinking about?"
- "I noticed your recent work shifted toward [new area]. Is that a long-term direction for the lab, or more of a collaboration project?"

**Bad professor email questions**:
- "Are you accepting PhD students this year?" → sounds like you haven't researched; makes the ask explicit
- "What is your advising style?" → too early; feels like an interview question for a first email
- "Could we schedule a Zoom call?" → too much ask for a cold email; earn the call first

**Generation protocol**:
1. Pull professor's 2 most recent papers from Application Loop (or ask the applicant to share them)
2. Identify 1 specific finding, method choice, or research direction that you can ask a genuine question about
3. Draft the question so it requires knowledge of their work to answer
4. Test: "Could this question be asked of any professor in the field, or only this specific person?"

**Output**:
```
Email Question — Prof. [Name], [Program]

**Question**: [the question]

**Why this question works**:
- Specific to their 2024 paper on [topic]
- Shows you read past the abstract
- Opens a research direction discussion, not a logistics discussion
- Easy to answer in 2-3 sentences if they're interested

**Context sentence** (to introduce the question in the email):
"In reading your recent work on [topic], I was struck by [specific finding]. I've been working on [related thing], which raised a question for me: [the question]."
```

---

## Context 2: Scholarship Interview Questions

At the end of a scholarship or PhD program interview, when asked "do you have any questions for us?" — this is not a formality. Strategic questions demonstrate:
- Genuine interest in the program
- Intellectual seriousness
- That you've thought about fit, not just admission

**Rules for scholarship interview questions**:
1. **Never ask what's on the website** — "What are the program requirements?" shows you haven't done the homework
2. **Never ask about funding/salary first** — even if it matters, it's not the first question
3. **Ask what you actually want to know** — authenticity reads better than strategic posturing
4. **2-3 questions ready** — use 1-2, have a backup

**Good interview question categories**:

*Research direction*:
- "How do you see [your subfield] evolving in the next 5 years, and how does the lab's work position it for that direction?"
- "Are there research directions you're hoping your next cohort of students will explore?"

*Lab/advising culture*:
- "What does the collaboration structure typically look like in the lab — do students tend to work independently on distinct projects or closely together on shared goals?"
- "For students who've been most successful in your lab, what qualities made the difference?"

*Program environment*:
- "What resources or communities within the department do PhD students find most valuable that might not be obvious from the outside?"
- "Is there something about this program that surprised you when you first joined that you think prospective students should know?"

*Fellowship-specific* (for Fulbright/Rhodes/Marshall etc.):
- "What do you think distinguishes the fellows who have the most meaningful experiences from those who don't?"
- "Are there aspects of the [project/work] that you'd recommend I think about more carefully before arriving?"

**Bad interview questions**:
- "What is the stipend amount?" → ask this after you've been admitted
- "What is the average time to completion?" → easily found on the website; signals you didn't look
- "What are the weaknesses of this program?" → puts interviewers on the defensive

**Generation protocol**:
1. Pull program archetype from `references/program-archetypes.md`
2. Identify 1-2 things the applicant genuinely wants to know about this specific program
3. Draft 3 questions — 2 primary, 1 backup
4. Test: "Would knowing the answer to this actually influence my decision or preparation?"

**Output**:
```
Interview Questions — [Program/Fellowship] [date]

**Primary Question 1**: [question]
Why it works: [brief rationale]

**Primary Question 2**: [question]
Why it works: [brief rationale]

**Backup**: [question]
Use if: [when to use the backup instead]

**Avoid**: [any question the applicant raised that won't land well]
```

---

## State Updates

- No persistent state updates for email-questions — output is one-time use
- After interview: capture in `postsubmit` which questions the applicant actually asked and how they landed
