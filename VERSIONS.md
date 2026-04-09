# Version Roadmap

Each version has a clear thesis — not a feature grab bag.

---

## v1 — Foundation (current)

**Thesis**: A complete scholarship preparation coach built from a proven interview coaching architecture. All the core mechanisms are in place; future versions add depth and specialization.

**What's included**:
- 23 commands spanning the full application lifecycle
- 5-dimension scoring system calibrated for written documents: Message, Structure, Fit, Authenticity, Distinctiveness
- Academic narrative bank with arc template (Context → Challenge → Insight → Impact → Meaning) and Intellectual Insight extraction
- Persistent `application_state.md` state across sessions
- Per-program document folder architecture (`applications/[slug]/`)
- Application Calendar with backward-planned critical paths
- LoR management with recommender brief generation
- Deep professor fit analysis (publication review, genuine overlap, program-fit paragraph draft)
- Professor outreach email coaching
- Fellowship-specific rubric decoding (NSF GRFP, Fulbright, Rhodes, Marshall, Gates Cambridge)
- Program archetypes (R1 research-first, coursework Master's, interdisciplinary, fellowships)
- Optional interview sub-module for scholarship interview stages
- Level 5 Challenge Protocol: Assumption Audit, Blind Spot Scan, Pre-Mortem, Devil's Advocate, Strengthening Path
- Calibration engine: outcome correlation, scoring drift detection, success pattern capture
- Academic stage calibration: undergraduate / Master's-to-PhD / experienced / reapplicant

---

## v2 — Depth (planned)

**Thesis**: Deeper intelligence for the specific programs and fellowships that matter most.

**Planned additions**:
- Fellowship-specific coaching modules: NSF GRFP Personal Statement and Research Proposal with criterion-by-criterion feedback; Fulbright country-specific guidance; Rhodes character assessment
- Multi-program portfolio optimization: detect when the same narrative is overused across applications; enforce differentiation across the portfolio
- Reapplicant coaching mode: structured comparison of previous vs. current application; what changed and why it matters
- Academic website / Google Scholar profile coaching (increasingly expected for PhD applicants)
- Writing sample coaching for humanities/social science programs: argument structure, evidence use, disciplinary conventions

---

## v3 — Scale (planned)

**Thesis**: Support for applicants managing large, complex application cycles.

**Planned additions**:
- Parallel program comparison: when two programs have similar fit, help the applicant decide where to invest the most prep effort
- LoR analytics: track recommender reliability (did they submit on time?); draft follow-up sequences for late letters
- Application Portal checklists: program-specific checklist generation for the most common portals (Embark, Liaison/Slate, ApplyYourself)
- Funding and negotiation module: for applicants admitted to multiple PhD programs, coaching for multi-offer comparison and (in rare cases) funding negotiation

---

## Design Principles (across all versions)

1. **One file is the memory**: `application_state.md` is the entire coaching memory. No database. Open the folder in Claude Code, and the system knows everything.

2. **Evidence over encouragement**: Every score has a rubric anchor. Every recommendation has a reason. "Your Fit is 2 because..." is always more useful than "Your SoP looks great!"

3. **Program-specific means program-specific**: Generic documents are identified and flagged — not scored generously. The Substitution Test is applied to every program-fit paragraph.

4. **Triage before template**: The same command produces different outputs for different applicants based on what their data shows. An applicant with a strong narrative bank and weak program-fit sections gets different coaching than one with the reverse.

5. **Calibration closes the loop**: After decisions arrive, the system checks whether scores predicted outcomes, detects drift, and updates accordingly. The coaching gets better as the cycle progresses.
