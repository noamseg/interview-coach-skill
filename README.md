# Scholarship & PhD Application Coach

A Claude Code-based scholarship preparation coach that covers the full PhD and fellowship application lifecycle — from program research and professor outreach through document drafting, revision, and LoR management. 23 commands across research, document coaching, narrative development, and application tracking. It scores your documents across five dimensions, diagnoses root causes behind weak spots, builds a narrative bank you can deploy across applications, and adapts its coaching to your specific situation. Not a generic essay-editing tool. An adaptive system that tracks your applications, knows your academic profile, and gets sharper the more you use it.

Say `kickoff`, tell it your target programs, and you're being coached in under 2 minutes.

---

## What It Coaches

**Research & Analysis**
- Program and faculty research with fit assessment
- Deep professor research: publication deep-dive, genuine overlap assessment
- Decode program prompts and fellowship criteria using 6 lenses
- Application calendar with backward-planned critical paths

**Document Creation & Review**
- Full SoP drafting: architecture planning → section-by-section → review
- Section-level drafting drills: opening hook, research experience, program fit, goals
- Revision drills: trim (compression), sharpen (distinctiveness), fit-check (per-program relevance), voice (authenticity)
- Document scoring on 5 dimensions: Message, Structure, Fit, Authenticity, Distinctiveness
- Admission Committee inner monologue + automatic rewrite of weakest section
- Academic CV optimization: publication ordering, research descriptions, academic conventions

**Narrative & Positioning**
- Academic narrative bank: types include Research Experience, Intellectual Turning Point, Challenge-Growth, Mentorship, Failure-Learning
- Narrative arc: Context → Challenge → Insight → Impact → Meaning
- Intellectual Insight extraction: the non-obvious takeaway that only this experience could produce
- Research identity statement with 5 context variants (SoP opener, MotLetter hook, professor email, fellowship pitch, verbal)

**Letters of Recommendation**
- Recommender selection and ranking
- Request email drafting with explicit opt-out language
- Recommender brief: CV, shared experience summary, what to highlight, brag sheet
- LoR status tracking with deadline enforcement (6 weeks before deadline)

**Professor Outreach**
- Cold email coaching: specificity test, intellectual question, appropriate ask
- Email questions for outreach and scholarship interviews

**Application Tracking**
- Application calendar with urgency tiers and deadline proximity alerts
- LoR request deadline enforcement
- Per-program milestone tracking

**Optional Interview Preparation** (for programs with interview stages)
- Full simulated interviews: panel, research presentation, informal faculty meeting, fellowship interview
- Pre-interview confidence boost and recovery planning

---

## 23 Commands

### Core Lifecycle
| Command | What it does |
|---------|-------------|
| `kickoff` | Initialize academic profile, target programs, and coaching state |
| `research [program]` | Program and faculty research + fit assessment (3 depth levels) |
| `prep [program]` | Full application brief: documents, professor intelligence, narrative mapping |
| `decode [requirements]` | Decode program prompts and fellowship criteria using 6 lenses |
| `fit [program]` | Deep professor research: publication dive, genuine overlap, draft program-fit paragraph |
| `deadline-plan` | Application calendar with backward-planned critical paths |

### Documents
| Command | What it does |
|---------|-------------|
| `draft-sop [program]` | Full SoP session: architecture → section-by-section → initial review |
| `draft [section]` | Section drafting + revision drills (opening, narrative, research, fit, goals, trim, sharpen, fit-check, voice) |
| `review [document]` | Score on 5 dimensions. Admission Committee inner monologue. Auto-rewrite weakest section. |
| `academic-cv` | Academic CV optimization |

### Narratives & Positioning
| Command | What it does |
|---------|-------------|
| `narratives` | Build and manage narrative bank (view, add, improve, find gaps, retire, drill, identity) |
| `positioning` | Research identity statement + 5 context variants |

### Letters of Recommendation
| Command | What it does |
|---------|-------------|
| `lor` | LoR management (select, request, brief, track, waive) |

### Outreach
| Command | What it does |
|---------|-------------|
| `professor-contact` | Professor cold-email coaching |
| `email-questions` | Questions for professor emails or scholarship interviews |

### Progress & Admin
| Command | What it does |
|---------|-------------|
| `concerns [program]` | Anticipate committee concerns + counter-strategies |
| `progress` | Score trends, outcome correlation, self-assessment calibration, strategy update |
| `feedback` | Capture decisions, advisor feedback, professor email responses |
| `postsubmit` | Post-submission or post-interview rapid capture |

### Confidence & Closure
| Command | What it does |
|---------|-------------|
| `premit` | Pre-submission or pre-interview confidence boost with evidence + checklist |
| `reflect` | Post-cycle retrospective and archive |

### Interview Sub-Module (optional)
| Command | When used |
|---------|-----------|
| `simulate [format]` | Only for programs with interview stages. Formats: panel, research presentation, informal faculty meeting, fellowship interview. |

### Help
| Command | What it does |
|---------|-------------|
| `help` | Context-aware command guide and diagnostic router |

---

## Fast Workflows

**New applicant, 3+ months out**: `kickoff` → `narratives` → `positioning` → `deadline-plan` → `research [program]` → `fit [program]` → `draft-sop [program]` → `review sop [program]`

**Near deadline (< 4 weeks)**: `kickoff` → `review` existing SoP → `draft [fit]` to fix program-fit → `lor track` to check LoR status → `premit` before submission

**Fellowship application (Fulbright/NSF GRFP)**: `kickoff` → `decode [fellowship criteria]` → `narratives` → `positioning` → `draft full-letter` → `review` → `lor brief` → `premit`

**Reapplicant**: `kickoff` (update profile) → `concerns [program]` (address what led to previous rejection) → `narratives improve` → `review` existing documents → revise

**Research-focused PhD (strong fit)**: `research [program]` → `fit [program]` → `professor-contact` → `draft-sop [program]` → `review sop [program]` → `lor brief`

---

## How State Persistence Works

Your coaching state is saved in `application_state.md` — a plain markdown file in your project directory. Every session reads from this file and writes updates back to it. You can start a session, stop, come back weeks later, and the system knows your narrative bank, your application calendar, your score trends, your active coaching strategy, and exactly where you left off.

Each program's documents live in `applications/[program-slug]/` — a folder with the SoP, MotLetter, CV, LoR request info, and program notes as markdown files.

No database required. No account. Just open the folder in Claude Code and run a command.

---

## Coaching Philosophy

**Triage before template**: The system branches based on what your data shows. An applicant with a strong research record and weak program-fit writing gets different coaching than one with a weak research record and strong writing. No one-size-fits-all approach.

**Evidence-based feedback**: Every score has a rubric anchor. Claims have evidence requirements. "Your SoP is great!" is not coaching. "Your Fit score is 2 because the program-fit paragraph could be submitted to any program in the field unchanged" is coaching.

**Persistent memory**: The system doesn't forget. Previous coaching sessions, narrative bank health, application outcomes, and coaching patterns all carry forward. Over a multi-week application cycle, the coaching gets sharper because the system knows your specific patterns.

**Academic stage calibration**: A "4 on Message" means something different for an undergraduate applicant with one lab rotation than for a PhD-to-PhD transfer with a publication record. Scores are calibrated to where the applicant actually is, not an abstract ideal.

**Directness you control**: Choose your feedback level (1-5). At Level 5, the Challenge Protocol activates — the system will red-team your documents, name what isn't working, and push back on weak sections without softening.
