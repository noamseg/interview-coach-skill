# State Update Triggers

## Global — update on every save

Use the Scan → Tag → Update → Verify protocol. Verify is skipped on the default single-Write path; it applies only to the multi-Edit fallback. Do not rely on hardcoded section names — derive what needs updating from the live file and what ran this session.

**Step 1 — Scan at session start**
When reading `coaching_state.md`, extract all headings (all levels) into a working section index. This is the live map of what sections exist in this candidate's file. Do not assume sections from the schema exist — only act on what the scan finds. For files exceeding the Read tool limit, extract headings via Bash grep rather than a full file read:
`grep -nE "^(#|Last updated:)" coaching_state.md`

**Step 2 — Tag during session**
As each command runs, evaluate every heading in the section index against the per-command rules below to identify which sections need updating. Maintain the tag list explicitly in working memory throughout the session. Two sections are always tagged regardless of what ran:
- `Last updated:` — not a heading, located by line-prefix match (`^Last updated:`) anywhere in the file; action: set to today's date
- `Session Log` — found via heading scan (Step 1), always tagged regardless of which commands ran; action: append a new row summarising what happened this session

**Step 3 — Update at save (single atomic write)**
Save in one Read + Write cycle, not one Edit per tagged section:
1. Read the full file.
2. Apply every tagged update in memory: always-tagged sections per Step 2 actions, all other tagged sections per the relevant per-command rule below.
3. Write the modified file back in a single Write call.

The Write tool returns success or failure directly — no follow-up verification is needed on this path.

**Fallback for large files**: if `coaching_state.md` exceeds the Read tool's default 2000-line limit, fall back to per-section Edit calls (Step 4 verify applies). Targeted Edits are cheaper than reading and rewriting a multi-thousand-line file. Use the same size threshold as Step 1.

**Step 4 — Verify (multi-Edit fallback only)**
On the multi-Edit fallback path, partial-failure risk exists: an Edit may succeed for one section but fail for another, leaving the file half-saved. After all Edit calls complete, do a single Read covering the union of modified sections and confirm:
- All new content is present as intended
- Surrounding content is intact

If verification fails, diagnose and re-apply before closing the save.

On the single-Write path (Step 3 default), skip Step 4 — the Write tool's return value is the verification.

## Per-Command Triggers

Write to `coaching_state.md` whenever:

- **kickoff** creates a new profile and populates Resume Analysis from resume analysis. Also initializes empty sections: Meta-Check Log, Active Coaching Strategy, Interview Loops, Coaching Notes.
- **research** adds a new company entry (lightweight, in Interview Loops with Status: Researched, plus fit verdict, fit confidence, fit signals, structural gaps, and date)
- **stories** adds, improves, or retires stories (write full STAR text to Story Details, not just index row)
- **analyze**, **practice**, or **mock** produces scores (add to Score History — practice sub-commands that use the 5-dimension rubric add to Score History; retrieval drills log to Session Log only) — analyze also updates Active Coaching Strategy after triage decision. When updating Active Coaching Strategy, always preserve Previous approaches — move the old approach there before writing the new one. Analyze also extracts questions and scores to Interview Intelligence Question Bank, updates Effective/Ineffective Patterns if 3+ data points reveal a pattern, updates Company Patterns, and checks for cross-dimension root causes (updates Calibration State → Cross-Dimension Root Causes if a root cause appears across 2+ answers).
- **concerns** generates ranked concerns (save to Interview Loops under the relevant company's Concerns surfaced, or to Active Coaching Strategy if general)
- **questions** generates tailored questions (save top 3 to Interview Loops under Prepared questions for the relevant company)
- **debrief** captures post-interview data (add to Interview Loops, update storybank Last Used dates and increment Use Count for each story used, add to Outcome Log as pending). Also extracts recalled questions to Interview Intelligence Question Bank (marked "recall-only") and captures recruiter/interviewer feedback to the Recruiter/Interviewer Feedback table.
- **feedback** captures ad-hoc input: recruiter feedback (add to Recruiter/Interviewer Feedback — also check for drift signals when feedback contradicts coach scoring), outcomes (update Outcome Log + Question Bank Outcome column — trigger calibration check when 3-outcome threshold is crossed), corrections (evaluate and adjust if warranted — may update Score History or Storybank ratings, record in Coaching Notes), post-session memories (route to Question Bank, Storybank, Interview Loops, or Company Patterns as appropriate), and meta-feedback (record in Meta-Check Log)
- **progress** reviews trends (update Active Coaching Strategy, check Score History archival, check Interview Intelligence archival thresholds). Also runs calibration check when 3+ outcomes exist (scoring drift detection, cross-dimension root cause review, success pattern analysis) — updates Calibration State.
- **User reports a real interview outcome** (add to Outcome Log)
- **linkedin** produces profile audit (save LinkedIn Analysis section to coaching_state.md — date, depth, overall score, dimension scores, top fixes pending, positioning gaps)
- **resume** produces resume audit (save Resume Optimization section to coaching_state.md — date, depth, overall score, dimension scores, top fixes pending, JD-targeted status, cross-surface gaps)
- **pitch** produces a positioning statement (save Positioning Statement section to coaching_state.md — date, depth, core statement, hook, key differentiator, earned secret anchor, target audience, variant status, consistency status)
- **outreach** produces outreach coaching (save Outreach Strategy section to coaching_state.md — date, depth, positioning source, message types coached, targets contacted, channel strategy, follow-up status, LinkedIn profile flagged, key hooks identified)
- **decode** produces JD analysis (save JD Analysis section per JD to coaching_state.md — date, depth, fit verdict, top competencies, frameable gaps, structural gaps, unverified assumptions, batch triage rank). Multiple JD Analysis sections can exist. Also update Interview Loops: if decode is for a company already in loops, add/update JD decode data; if new company, add lightweight entry with Status: Decoded.
- **present** produces presentation prep (save Presentation Prep section as top-level section in coaching_state.md — include company name in header when company-specific — date, depth, framework, time target, content status, top predicted questions, key adjustment)
- **salary** produces comp strategy (save Comp Strategy section to coaching_state.md — date, depth, target range, range basis, research completeness, stage coached, jurisdiction notes, scripts provided, key principle)
- **apply** drafts written application answers (save to `job-search/[company]_application.md`, add to Session Log)
- **prep** starts a new company loop or updates interviewer intel, round formats, fit verdict, fit confidence, and structural gaps (add to Interview Loops)
- **negotiate** receives an offer (add to Outcome Log with Result: offer)
- **reflect** archives the coaching state (add Status: Archived header)
- **Meta-check conversations** (record candidate's response and any coaching adjustment to Meta-Check Log)
- **Any session where the candidate reveals coaching-relevant personal context** — preferences, emotional patterns, interview anxieties, scheduling preferences, etc. (add to Coaching Notes)
