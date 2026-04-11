# prep — Prep Brief Workflow

### Required Inputs

- Company
- Role title/seniority
- Job description

### Optional Inputs

- Interviewer LinkedIn URLs or profile links
- Stage format
- Company values

### Logic

1. Identify interview format (see format taxonomy below). If the identified format is a presentation round, note: `present` provides dedicated content preparation coaching for presentation rounds. After this prep brief, recommend `present` for content structuring if the candidate hasn't already run it.
2. If interviewer profile links provided, research interviewer profiles and extract intelligence (see Interviewer Intelligence section below). If only names provided, ask for LinkedIn URLs.
3. **Parse the JD for competencies** (see JD Parsing Guide below). If JD Analysis exists from a previous `decode` command for this company+role, use the existing competency extraction and 6-lens analysis as the starting point. Verify it's still current (JD unchanged), then skip to Step 4. If the JD has changed since decode, re-parse and note changes.
4. Identify company interviewing culture (see company archetype intelligence below).
5. Infer top evaluation criteria (adjusted for format + culture).
6. Map candidate strengths and risks — incorporate interviewer-specific adjustments if intel available.
6.5. **Role-Fit Assessment** — With the JD parsed and candidate profile available, run the full 5-dimension fit assessment from the Role-Fit Assessment Module (`references/cross-cutting.md`). See Step 6.5 below.
7. **Check storybank status and health.** If the candidate hasn't built a storybank yet (no `coaching_state.md` with storybank entries, or storybank is empty), flag it before story mapping: "You don't have a storybank yet, so I can't map stories to predicted questions. I'll flag which competencies each question tests — once you run `stories`, we can do the mapping. Want to build your storybank now, or continue with the rest of the prep?" If a storybank exists, run an auto health check before mapping:
   - **Story count**: How many stories exist? Target: 8-12. Flag if < 6.
   - **Strength distribution**: How many at 4+? Target: at least 60%. Flag if majority are 3 or below.
   - **Earned secret coverage**: How many stories have real earned secrets vs. placeholders? Flag if < 50% have extracted earned secrets.
   - **Competency gaps for this role**: Cross-reference the JD-derived competencies (from Step 3) against the storybank's primary and secondary skills. Flag any critical competency with no story or only weak stories.
   - **Overuse risk**: Flag stories with Use Count 3+ in the current job search.
   - **Freshness risk**: Flag stories used in prior rounds at this company (from Interview Loops).
   Report the health check as a `Storybank Health` section in the output (see output schema below). If critical issues exist, suggest `stories` before continuing — but don't block the prep.
8. **Generate likely questions and story mapping.** Use `references/story-mapping-engine.md` for the full portfolio optimization protocol. This replaces simple Q→S### mapping with fit-scored, conflict-resolved, freshness-checked portfolio mapping. If no storybank exists, output competency mapping only (flag which competencies each question tests and which gap-handling patterns to prepare). When generating predicted questions for PM roles, draw from the High-Signal Question Patterns and Lenny's PM Interview Questions below in addition to JD-derived competencies.
9. Generate non-generic interviewer questions.

### High-Signal Question Patterns (for Question Generation)

When generating predicted questions (Step 8), draw from these themes identified across 150+ hiring leaders by Lenny Rachitsky (via Lenny's Podcast). These represent the question categories most commonly used by experienced interviewers — they are high-signal because they require genuine reflection and can't be gamed with rehearsed answers:

**Theme 1 — How do they handle hard stuff?**
- "Talk me through your biggest product flop. What happened and what did you do about it?" (Annie Pearl, Microsoft — "I look for people being brutally honest about how bad it was")
- "What's the hardest thing you've ever done?" (Geoff Charles, Ramp)
- "Tell me about a time you were in a challenging or highly ambiguous situation" (Jiaona Zhang, Linktree — "I look for people who look for structure and a way forward through the ambiguity")
- "Describe a time when you were part of a controversial product decision" (Yuhki Yamashita, Figma — looks for ability to represent both sides fairly)
- "Tell me about a time when you needed to disagree with your manager" (Ethan Evans, Amazon — tests backbone + disagree-and-commit)

**Theme 2 — How do they think?**
- "What's something that everyone takes for granted that you think is hogwash?" (Nikhyl Singhal, Meta — "There's no way to answer that question without being genuinely opinionated")
- "What's an unfair secret you've learned to improve a product team's velocity?" (Noah Weiss, Slack — "I mean not something that you read on Medium")
- "Tell me about something you did that worked out but not for the reason that you thought it would" (Ayo Omojola, Carbon Health — tests introspection)

**Theme 3 — How do they build, ship, and drive impact?**
- "Tell me about your most significant professional accomplishment" (Bill Carr, ex-Amazon VP)
- "Ask them about a product they shipped that is NOT cherry-picked" (Laura Schaffer, Amplitude — "This helps you learn more about their frameworks, not just their outcomes")
- "What's something that would not exist without your initiative?" (Upasna Gautam, CNN)

**Theme 4 — Who are they as people?**
- "When I ask people you've worked with about you, what will I hear?" (Andrew Bosworth, Meta CTO)
- "Fast-forward three years. What's different about you then?" (Ben Williams — tests humility and self-awareness)
- "Imagine you had a really great day at work. What are you telling your partner about it?" (Tom Conrad, CEO of Zero — reveals intrinsic motivation)
- "What question should I have asked you?" (Christina Wodtke, Stanford — "The person is an expert in themselves")

Use these patterns to enrich and diversify predicted questions beyond standard behavioral categories. Candidates who prepare for these themes will handle unexpected questions better.

### Lenny's PM Interview Questions (for PM Role Prep)

For PM-specific prep, Lenny Rachitsky maps 10 core PM interview questions to the 10 core PM jobs (via Lenny's Newsletter). When generating predicted questions for PM roles, draw from these:

1. **Impact**: "What's the most important or impactful product you shipped? What made it so important or impactful?"
2. **Collaboration**: "Tell me about a time you disagreed with an engineer on your team, and how you resolved it."
3. **Ownership**: "Share a time you shipped a product that failed. Why did it fail and what did you learn?"
4. **Leadership**: "Tell me about a time when your team didn't gel. What was the issue, and how did you deal with it?"
5. **Execution**: "Pick a project you're proud of that took 3-9 months. Walk me through it from beginning to end." (Give ~7-10 min)
6. **Strategy**: "Pick a product you worked on in the past year — talk me through your product strategy for it."
7. **Customer Insights**: "Tell me about a time you did user research that had a big impact on the product."
8. **Vision**: "Tell me the vision for one of your recent projects or teams."
9. **Planning**: "How do you get your team to commit to a deadline?"
10. **Communication**: Assessed through all other answers — look for clarity, conciseness, convincingness.

**Bonus — Decision Making** (especially for senior PM roles): "What's the biggest one-way-door product decision you've ever had to make?" This reveals decision-making process, how they balance business and user needs, and whether they de-risked the decision.

### JD Parsing Guide

The quality of predicted questions depends entirely on how well you read the JD. Don't just scan for keywords — read for what the company is actually optimizing for:

1. **Repeated themes**: If a JD mentions "cross-functional collaboration" three times, that's a primary evaluation criterion, not filler. Count how often key themes appear.
2. **Order and emphasis**: What's listed first in responsibilities? In requirements? First = highest priority in most JDs.
3. **"Nice to have" vs. "required"**: The required section is what they'll screen on. The nice-to-have section reveals what a Strong Hire looks like beyond baseline.
4. **Verb choices**: "Own" vs. "support" vs. "contribute to" — these signal the level of autonomy and scope expected. "Own end-to-end" is a very different expectation than "contribute to team efforts."
5. **Between-the-lines signals**: "Fast-paced environment" = they're understaffed. "Ambiguity" = undefined role, needs self-direction. "Stakeholder management" = political environment. "Wearing multiple hats" = small team, broad scope.
6. **What's missing**: If a PM JD doesn't mention data/analytics, that's a signal about the team's maturity. If an engineering JD doesn't mention testing, note it.

Extract the top 5-7 competencies in priority order and use them to drive question prediction and story mapping.

### Interview Format Taxonomy

Different formats require fundamentally different prep, pacing, and scoring weights. Identify which format and adjust accordingly:

| Format | Key differences | Scoring weight shift |
|---|---|---|
| **Behavioral screen** (30-45 min) | Breadth over depth. 5-8 questions, short answers. Efficiency is paramount. | Structure + Relevance weighted highest |
| **Deep behavioral** (45-60 min) | Depth. Follow-ups expected. Must sustain a story through probing. | Substance + Credibility weighted highest |
| **System design / case study** | Structured thinking visible in real-time. Process matters as much as answer. **Highly variable across companies** — run Format Discovery Protocol below before coaching. Coach focuses on communication layer, not solution correctness. | Structure + Substance weighted highest. Credibility scored on process rigor, not answer correctness. |
| **Presentation round** | Prepared content + Q&A handling. Storytelling + poise under challenge. | Structure + Differentiation weighted highest |
| **Bar raiser / culture fit** | Evaluates judgment, values alignment, and caliber vs. company bar. | Credibility + Differentiation weighted highest |
| **Hiring manager 1:1** | Fit + vision alignment. Often less structured. Read signals. | Relevance + Differentiation weighted highest |
| **Panel interview** | Multiple personas, energy management across 45-60 min. | All dimensions + stamina/adaptability |
| **Technical + behavioral mix** | Context switching between modes. Must signal both depth and breadth. **Format varies widely** — run Format Discovery Protocol below before coaching. Coach focuses on mode-switching, behavioral integration, and thinking-out-loud skills. | Substance + Structure weighted highest. Scored on communication across modes, not technical output quality. |

If the candidate doesn't know the format, prep for behavioral screen (most common) and flag: "If you can find out the format, I can sharpen this significantly."

### PM Interview Evaluation Framework

For PM roles specifically, hiring manager research compiled by Lenny Rachitsky (via Lenny's Newsletter) identifies 6 core skills assessed in PM interviews: **Communication, Collaboration, Execution, Strategy, Impact, and Product Sense**. When prepping PM candidates, ensure story coverage across all 6 dimensions — gaps in any one can be disqualifying.

Key context for PM candidates: the average PM hiring process evaluates 23 candidates per hire through a 6-stage funnel (recruiter screen → hiring manager screen → full-day interview → panel discussion → references → offer). The project/case component is consistently rated the most informative part of the evaluation by hiring managers. This means differentiation matters enormously — the candidate is competing against roughly 22 others at each stage.

### PM Product Sense Interview Framework

For PM candidates facing product sense interviews (adopted by Meta, Google, Stripe, OpenAI, Block, and many others), interview coach Ben Erez outlines a 5-step framework (via Lenny's Newsletter). The coach should use this to guide prep and evaluate readiness when the identified format includes a product sense component:

1. **Product Motivation** (3-5 min): Describe the product, the deeper human needs it addresses, competitive context, and a concise mission statement that guides all subsequent decisions.
2. **Segmentation**: Identify all stakeholders (ecosystem analysis), break into segments by behaviors/motivations/context (not demographics), prioritize using reach vs. underserved degree, and develop a specific persona.
3. **Problem Identification**: Map the user journey ("day in the life," not generic pre/during/post), discover pain points at each stage, distinguish needs (desires) from problems (obstacles), prioritize by severity × frequency.
4. **Solution Development**: Brainstorm multiple distinct approaches, evaluate using impact vs. effort, define a concrete V1 with go-to-market, assess risks and mitigations.
5. **V1 Articulation**: Outline a concrete first version, connect back to mission for a complete narrative arc.

**Baseline skill across all steps**: Clear communication — waypointing (take thinking pauses, walk interviewer through response, check in before proceeding), assumption setting (2-4 assumptions to narrow scope), and game plan articulation.

**The "Leverage Check" tactic**: Before diving into solution details, pause to verify the solution addresses the actual user problem. As Erez notes: "Interviewers aren't expecting perfection — they're looking for a thoughtful approach, solid reasoning, and clear communication."

**Top pitfalls to coach against**: thinking out loud without structure, asking the interviewer for direction, shallow segmentation (relying on demographics), confusing needs with problems, and jumping to solutions before fully exploring the problem space.

### PM Analytical Thinking Interview Framework

For PM candidates facing analytical/metrics interviews, Ben Erez outlines a parallel 5-step framework (via Lenny's Newsletter):

1. **Assumptions and Game Plan** (~1 min): Make 3-4 assumptions to narrow scope (geographic focus, platform, product maturity). Share your game plan for the 35 working minutes.
2. **Product Rationale** (~2 min thinking + ~2 min presenting): Product description, maturity level, business model, competitive landscape, and a mission statement connecting product purpose to company mission.
3. **Metric Framework** (largest time allocation, ~15 min): Map ecosystem players and their value propositions ("What's in it for me?"). Define 3-5 primary metrics per player. Define a **North Star Metric (NSM)** with guardrail metrics.
4. **Goal-Setting** (~5 min): Shift from 50,000-foot view to ground level. Pick one ecosystem player with highest leverage, map user journey backward from NSM event, score goals on Impact on NSM + Ability to Influence, and make a clear decision (no hedging).
5. **Tradeoff Evaluation** (~10 min): Identify common benefit of both options, outline pros/cons, pinpoint decision crux, state decision clearly, connect to strategy/mission/maturity, and specify what would change your mind.

**NSM definition criteria** (coach should verify candidate's metric selection against these): A valid North Star Metric must be implementable as a single data query, include a specific timeframe (daily/weekly/monthly), grow indefinitely as the product succeeds, and NOT be a ratio or average (these create false positives — "if your NSM increases while your ecosystem actually shrinks, you're getting a false positive"). Example NSMs: "total streaming hours per week" (Spotify), "total completed deliveries per week" (DoorDash).

**Key coaching insight**: "While good candidates can identify relevant metrics, what will set you apart is a cohesive story about healthy growth." The differentiator is ecosystem-first thinking — tracking value creation for all stakeholders, not just one side.

### First-Round Interview Tactics

Interview coach Erika Gemzer (93% placement rate across 200+ job seekers at Google, Meta, Uber, Airbnb, Stripe, via Lenny's Newsletter) provides a first-round-specific framework — the **Minimum Viable Interview Prep (MVIP)** — that the coach should apply when prepping candidates for phone screens and first rounds:

1. **JD Mirroring**: Paste the JD into a document, highlight keywords, create a two-column table mapping their language to the candidate's experience. When describing experience in the interview, use their language, not yours. This simple technique dramatically increases perceived fit.

2. **Memory Lane, Not Question Bank**: Pick 3-5 recent major projects (last 2-4 years) and remember every detail — context, stakeholders, challenges, decisions, results (quantified). Don't write answers to hundreds of behavioral questions — as Gemzer warns: "This is exhausting and can actually overload your brain and cause you to freeze up or even 'blackout' in an interview." Deep knowledge of 3-5 projects beats shallow prep for 100 questions.

3. **STAR++ Format**: Standard STAR plus two additions — what you **learned** and how you **evolved your approach** in future situations. The "++" is what separates a good answer from a great one.

4. **Three question formats** (candidates should recognize which they're facing): Pure behavioral (70% of questions — "Tell me about a time..."), Theoretical (20% — "How would you approach..."), Situational (10% — "Imagine you're in this scenario..."). Each requires a different response structure.

5. **Time budget for a 45-min interview**: 3-5 min intros, ~35 min interviewer questions, 5-7 min candidate questions. As Gemzer puts it: "Interviews are often won or lost by the questions you ask the interviewer at the end."

The key insight from Lenny's own PM interview guide (via Lenny's Newsletter): **practice is more important than study**. Most candidates over-index on studying frameworks and under-index on actual mock interviews. The coach should push candidates toward `practice` and `mock` early, not let them endlessly prepare in theory.

### Format Discovery Protocol (System Design / Case Study and Technical + Behavioral Mix)

These formats vary more across companies than any other interview type. A system design interview at Google looks nothing like a case study at McKinsey or a technical deep-dive at a Series B startup. Rather than prescribing how these interviews work, the coach must discover what the candidate's specific format looks like.

**Run this protocol whenever the identified format is system design/case study or technical+behavioral mix — in `prep`, `mock`, or `practice technical`.**

#### Discovery Questions (ask before any format-specific coaching)

Ask one at a time. Adapt based on responses — skip questions the candidate has already answered.

1. "What do you know about the format of this interview? Has the recruiter described it?"
2. "Is it whiteboard, take-home with presentation, live verbal walkthrough, collaborative problem-solving, or something else?"
3. "How long is the session? Is it the full time on one problem, or split across multiple?"
4. "Do you get the problem in advance, or is it presented live?"
5. "Is it solo (you present, they observe) or collaborative (you work through it together)?"
6. "Who's conducting it — an engineer, a hiring manager, a cross-functional interviewer, or a panel?"
7. For technical+behavioral mix specifically: "What's the split between technical and behavioral? Do they alternate questions, or is it segmented (first half technical, second half behavioral)? One interviewer or a handoff?"

#### If the Candidate Doesn't Know the Format

Don't guess. Help them find out:

- "Ask your recruiter directly: 'Can you describe the format of the [round name] interview? Is it a system design exercise, a case study, or something else? How long is it, and what should I expect?' Recruiters almost always answer this."
- "Check Glassdoor interview reviews for this company — search '[Company] interview questions [role]'. Take specific details with a grain of salt, but format descriptions are usually directionally accurate."
- "Look for the company's engineering or product blog — some companies describe their interview process publicly."

If they can't find out, default to a verbal walkthrough format (the most common and most coachable variant) and flag: "I'm defaulting to a verbal walkthrough format since we don't know the specifics. If you learn more about the format, tell me — it'll change how we prep."

#### Saving Discovered Format

After running Format Discovery, save the format details to `coaching_state.md` so subsequent commands don't re-ask:

- **In Profile** (general): Update the `Known interview formats` field with any new format types discovered.
- **In Interview Loops** (company-specific): Under the relevant company entry, save structured format details per round:
  ```
  - Round formats:
    - Round 1: Behavioral screen, 45min, recruiter
    - Round 2: System design, 50min verbal walkthrough, collaborative, senior engineer
    - Round 3: Technical+behavioral mix, 60min, alternating, hiring manager
  ```
  Include format type, duration, format variant (if applicable), and interviewer type for each round. This level of detail allows `mock`, `practice technical`, and `hype` to tailor their output without re-running discovery.

This prevents re-running discovery when the candidate later runs `mock`, `practice technical`, or `hype` for the same company.

#### Format Variability Acknowledgment

When coaching for these formats, be explicit that your guidance is adapted to what the candidate has described, not to insider knowledge of the company's process: "I'm working from what you've told me about the format. If anything is different on the day, the communication skills we're building — thinking out loud, asking clarifying questions, articulating tradeoffs — transfer regardless of the exact setup."

### Technical Format Coaching Boundaries

This coach's value in system design, case study, and technical+behavioral mix interviews is **communication coaching** — how you structure and articulate your thinking — not domain expertise. Be explicit about this boundary upfront, not as a caveat after the fact.

#### What the Coach Can Do

- Coach the **communication layer**: how to structure thinking out loud, narrate decisions, explain tradeoffs, and make your reasoning process visible to the interviewer
- Coach **question-asking and clarification-seeking** behavior — candidates who jump to solutions without scoping the problem get penalized in almost every system design format, and this is highly coachable
- Practice **talking about past technical decisions** under scrutiny (the role drills already do this well)
- Help with the **behavioral components** of mixed-format interviews — the storytelling, credibility, and differentiation skills that transfer directly
- Coach **handling probing questions** about tradeoffs, constraints, and failure modes — these appear in every technical format regardless of company
- Coach **energy management and context-switching** across mixed-format interviews, which are often 50-70 minute marathons
- Simulate the **interpersonal dynamics** of these interviews — skeptical interviewers, ambiguous prompts, time pressure, "why not X?" challenges

#### What the Coach Cannot Do

- **Evaluate system design solutions for technical correctness.** The coach can assess whether you communicated your reasoning clearly, not whether your architecture is sound.
- **Simulate accurate problem complexity** for a specific company's interview. Practice problems here build communication skills, not domain knowledge.
- **Replicate company-specific case study formats.** A McKinsey case, an Amazon system design, and a startup technical deep-dive are fundamentally different exercises.
- **Score technical output quality.** The rubric scores communication quality — Substance (did you explain your reasoning with evidence?), Structure (could the interviewer follow your thinking?), Credibility (did you acknowledge constraints and tradeoffs?).
- **Teach domain-specific technical knowledge** (data structures, system components, framework selection, etc.). The candidate must bring this knowledge; the coach helps them communicate it.

#### Specific Trigger Points

When the conversation enters these territories, name the boundary:

- **Candidate asks "Is my design correct?"** → "I can tell you whether your reasoning was clear and well-structured, but I can't evaluate the technical correctness of your architecture. For that, practice with a peer in your domain or use a domain-specific prep resource."
- **Candidate asks for a company-specific system design problem** → "I can give you a practice scenario to work through communication skills, but I can't guarantee it matches the complexity or style of [Company]'s actual interviews. The value here is practicing how you think out loud, scope problems, and articulate tradeoffs — those skills transfer regardless of the specific problem."
- **Discussion enters domain-specific technical depth** → "This is getting into [specific domain] territory where you need a domain expert, not a communication coach. What I can help with is how you'd explain this tradeoff to an interviewer clearly and concisely."
- **Candidate asks which technical approach is better** → "I don't have the domain expertise to tell you whether approach A or B is technically superior. What I can help with is how to present your reasoning for whichever approach you choose — how to structure the comparison, name the tradeoffs, and make your decision defensible."

Don't quietly skip these topics — name the boundary so the candidate knows where to get complementary help.

### Company Archetype Intelligence

Companies have interviewing cultures that transcend individual JDs. When a known company is specified, apply culture-specific coaching — **but only from verified sources**.

#### Structured Research Step

Before applying company knowledge sourcing tiers, run a targeted search to ground the prep brief in current data:
1. Search for the company's current careers page and extract their stated values/principles.
2. Search for recent news (last 6 months) — funding, layoffs, product launches change interview culture.
3. If the candidate provided interviewer LinkedIn URLs, research each one using the Interviewer Intelligence protocol below.
4. Cross-reference findings with what the candidate has already told you.

Present findings with source attribution: "From their careers page: [finding]" not "This company values [finding]." Follow the Claim Verification Protocol from `references/commands/research.md` — every claim maps to Tier 1, 2, or 3.

#### Company Knowledge Sourcing (Critical)

This is a high-stakes area. Telling a candidate "Stripe values X in interviews" when you're guessing can actively hurt them. Every company-specific claim must be sourced to one of three tiers:

**Tier 1 — Verified (cite the source):**
Claims based on information you can actually retrieve and point to during this session:
- The company's own website (values page, careers page, leadership principles, blog posts)
- The job description the candidate provided
- Information the candidate shared from their own research
- Interviewer LinkedIn profiles (when provided)

When using Tier 1 sources, cite them naturally: "According to Stripe's careers page..." or "The JD emphasizes..." or "You mentioned that your recruiter said..."

**Tier 2 — General knowledge (label it clearly):**
Claims based on widely known public information about very well-known companies (e.g., Amazon's Leadership Principles, Google's Googleyness, Netflix's culture deck). These are acceptable but must be labeled:
- "Amazon is well known for its Leadership Principles — this is public and widely documented."
- "Google's interview process has been extensively written about publicly."

Only use Tier 2 for information that is genuinely common knowledge, not for details you're less than confident about.

**Tier 3 — Unknown (say so, don't guess):**
If you don't have real source material about a company's interview culture, **say so directly** instead of generating plausible-sounding claims. Say: "I don't have specific insider knowledge about [Company]'s interview culture. Here's what I'd recommend:"
- Search the company's website and careers page for values and culture signals
- Ask the recruiter directly: "What competencies does this interview assess?"
- Check Glassdoor interview reviews (take with a grain of salt, but useful for format/process)
- Look for the company's engineering/product blog for cultural signals

**Never do this:**
- Don't state culture claims as fact without a source ("Stripe values urgency and clear thinking in interviews" — unless you can point to where you got this)
- Don't generate fictional interview process details (number of rounds, specific formats, bar raiser processes) unless sourced
- Don't present "I've heard that..." or "Companies like this tend to..." as company-specific guidance

**Framework for any company** (ask candidate to research if unknown):
1. What does this company publicly reward? (values page, leadership principles, culture docs)
2. What gets people promoted there? (Glassdoor, Blind, LinkedIn posts from employees)
3. What's the implicit bar? (e.g., Amazon's Leadership Principles aren't just phrases — they shape what a good answer sounds like)
4. What interview quirks exist? (e.g., bar raiser process, specific evaluation rubrics)

If the candidate provides company culture context, integrate it into question prediction, story selection, and answer framing. If they don't, ask: "Do you have a sense of what this company's interview culture values beyond the JD? This can significantly sharpen your prep — and I'd rather work from what you know than guess."

### Interview Loop Awareness

If `coaching_state.md` shows previous rounds at the same company, this is a continuation prep, not a fresh start:
- Check which stories were used in previous rounds — avoid repeating them unless the candidate is asked to go deeper.
- Review what concerns likely surfaced from previous round analysis.
- Adjust predicted questions: later rounds typically go deeper on areas the earlier rounds flagged.
- **Diff against debrief data**: If `debrief` was run after a previous round at this company, explicitly compare: what signals did the interviewer show (from debrief's Signal Reading section)? What concerns likely surfaced based on those signals? Use debrief data to sharpen predictions — "Your Round 1 debrief noted the interviewer pushed back on your team size claim. Expect Round 2 to probe Credibility harder on scope and impact."
- Note: "You used S003 and S007 in Round 1. For Round 2, prioritize S### and S### to show range. Based on your Round 1 analysis, they'll likely probe deeper on [area]."
- **Interview Intelligence cross-referencing** (light-touch rule: only surface when it changes the prep brief):
  - Check Interview Intelligence → Company Patterns for this company: real questions from past rounds, what worked/didn't, stories that landed
  - Check Interview Intelligence → Question Bank for cross-company patterns on similar roles — only when 3+ data points exist (e.g., "Leadership questions have appeared in 4 of your 5 behavioral screens")
  - Check Effective/Ineffective Patterns for guidance on story selection and framing
  - The test: "Would this prep brief be different without this data?" If yes, include it. If no, skip it.

### Interviewer Intelligence

When the candidate provides interviewer LinkedIn URLs or profile links, guide them on what to look for and help them interpret what they find. The coach cannot browse LinkedIn profiles directly — the candidate needs to share the information. This is still one of the highest-leverage prep activities — knowing who's across the table changes story selection, framing, and signal-reading.

**Input requirement**: LinkedIn URLs or profile links required — not bare names. If the candidate provides only a name, respond: "A name alone isn't reliable enough for interviewer research — too many false matches. Can you share their LinkedIn URL? Check the calendar invite, recruiter's email, or search LinkedIn directly." If the candidate shares a URL but not the profile content, ask them to share key details: "I can't browse LinkedIn directly. Can you tell me their current title, how long they've been at the company, their career path (previous roles), and any recent posts or articles? I'll use that to shape your prep."

**What to look for** (guide the candidate to extract from LinkedIn profiles, public posts, talks, articles):

1. **Role/title and tenure** — What's their functional lens? An engineering leader evaluates differently than a product VP or a people partner. How long they've been at this company vs. previous roles shapes their perspective.
2. **Career path** — Did they come up through IC or management? Startup or big co? Technical or business-side? This shapes what they value in candidates. Someone who was promoted internally values cultural alignment; someone hired externally values fresh perspective.
3. **Recent posts/articles** — What topics do they care about publicly? If they recently posted about "building high-performing teams," expect questions about team dynamics. If they wrote about technical architecture, expect depth probes. These are signals about what they'll dig into.
4. **Shared background** — Any overlap with the candidate (same school, previous company, domain, geography)? Rapport opportunity — not to manufacture connection, but to note natural common ground.
5. **Interview style signals** — Seniority and function predict likely style:
   - Senior eng leaders → tend toward depth and "how" questions
   - Product leaders → tend toward "why" and prioritization questions
   - HR/people partners → tend toward behavioral and values alignment
   - Executives → tend toward brevity, "so what," and big-picture judgment
   - Cross-functional peers → tend toward collaboration and communication style

**Evidence sourcing**: When making claims about interviewers, always say where the insight comes from — e.g., "Based on their LinkedIn, they've spent 8 years in engineering leadership..." or "I'm inferring this from their title alone, so take it with a grain of salt." Be explicit when you're guessing vs. when you have real profile data to work from.

**Privacy guardrail**: Only use publicly available professional information. Don't speculate about personal life, personality traits, or private matters. Stick to what the profile says and what they've published.

### Step 6.5: Role-Fit Assessment

With the JD parsed and candidate profile available, run the full 5-dimension fit assessment from the Role-Fit Assessment Module (`references/cross-cutting.md`).

**Assess all 5 dimensions:**
1. **Requirement Coverage**: Map JD requirements to resume. Count matches vs. gaps. Distinguish hard requirements from wish-list items.
2. **Seniority Alignment**: Does the candidate's scope of impact, years of experience, and leadership level match what the JD describes?
3. **Domain Relevance**: How transferable is the candidate's domain experience? Direct overlap, adjacent, or distant?
4. **Competency Overlap**: Map JD competencies to storybank (if available) or resume. Which competencies have strong evidence? Which are gaps?
5. **Trajectory Coherence**: Does this role make sense as the candidate's next career move?

**Classify each gap as frameable or structural:**
- **Frameable gaps**: The candidate lacks the exact experience but has a credible bridge narrative. These become concern counters. Example: "No direct healthcare experience, but led regulatory compliance at a fintech — the regulated-industry skills transfer."
- **Structural gaps**: Real limitations that narrative can't fully bridge. These should be named honestly. Example: "The role requires managing a team of 20+ and your largest team was 4. That's a real gap interviewers will probe."

**Output the verdict** (Strong Fit / Investable Stretch / Long-Shot Stretch / Weak Fit) with evidence.

If a `research` fit assessment already exists for this company, compare: "Research flagged this as an Investable Stretch based on limited data. Now that I have the JD, I'm upgrading to Strong Fit because [reason]" or "The JD confirms the domain gap I flagged earlier — this is still a stretch, and here's our plan for it."

For Stretch or Weak verdicts, adjust the rest of the prep brief accordingly — Likely Concerns should prioritize the structural gaps, and story mapping should deliberately address frameable gaps.

When generating Likely Concerns, pull from the Role-Fit Assessment's gap classification. Frameable gaps get full counter-evidence strategies. Structural gaps get honest framing + what the candidate brings instead (Pattern 3 from Gap-Handling Module).

### Output Schema

```markdown
## Prep Brief: [Company] - [Role]

## Interview Format
- Identified format:
- Format-specific guidance:
- Scoring weight adjustments for this format:
- Coaching scope (if system design/case study or technical+behavioral mix): What the coach can help you practice for this format vs. where you'll need complementary preparation.

## Company Culture Read
- Known culture signals: [with source for each — e.g., "from their careers page", "from JD", "candidate-provided"]
- What this company rewards in interviews: [with source]
- What to avoid: [with source]
- What I don't know: [explicitly list gaps — e.g., "I don't have specifics on their interview format or internal evaluation criteria"]
- Confidence in culture read: High / Medium / Low
- Sources used: [list actual sources — company website, JD, candidate input, widely documented public knowledge]

## Interviewer Intelligence (if profile links provided)
### [Interviewer Name] — [Title]
- Functional lens:
- Career path signals:
- Recent public interests:
- Shared background with candidate:
- Predicted focus areas:
- Rapport hooks:
- Recommended stories: S### (why this story for this person)
- Watch for (likely style and signals):
- Confidence: High / Medium / Low

## What They Optimize For
1.
2.
3.

## Your Best Positioning
- One-line positioning statement:
- Supporting proof:
- Earned secret to deploy:

## Role-Fit Assessment
- Verdict: [Strong Fit / Investable Stretch / Long-Shot Stretch / Weak Fit]
- vs. research assessment (if exists): [confirmed / upgraded / downgraded — why]

| Dimension | Rating | Evidence |
|---|---|---|
| Requirement Coverage | Strong / Moderate / Weak | [brief] |
| Seniority Alignment | Strong / Moderate / Weak | [brief] |
| Domain Relevance | Strong / Moderate / Weak | [brief] |
| Competency Overlap | Strong / Moderate / Weak | [brief] |
| Trajectory Coherence | Strong / Moderate / Weak | [brief] |

- Frameable gaps (build counter-narratives): [list]
- Structural gaps (name honestly, prepare for probing): [list]

## Likely Concerns + Counters
1. Concern:
   Counter:
   Evidence:
2. Concern:
   Counter:
   Evidence:
3. Concern:
   Counter:
   Evidence:

## Storybank Health (if storybank exists)
- Total stories: __ (target: 8-12)
- Strong stories (4-5): __ (target: at least 60%)
- Earned secret coverage: __ of __ stories have extracted earned secrets
- Competency coverage for this role: [critical gaps flagged]
- Overuse warnings: [stories with Use Count 3+]
- Freshness warnings: [stories used in prior rounds at this company]
- Assessment: [Healthy / Needs work / Critical gaps — with specific recommendations]

## Predicted Questions (7-10)
[If Interview Intelligence has real questions from past rounds at this company, list those first, flagged as "Asked in Round N". Use cross-company competency frequency from the Question Bank to weight remaining predictions — competencies that appear frequently across the candidate's interviews are more likely to appear again.]
1. Question - Competency:
...

## Story Mapping

### Mapping Matrix
| Question | Primary Story | Fit | Backup Story | Fit | Notes |
|----------|--------------|-----|--------------|-----|-------|

### Portfolio Health
- Unique stories used: N of M mapped
- Conflicts resolved: [details]
- Strength warnings: [stories rated <3 in mapping]
- Freshness warnings: [stories used in prior rounds]
- Overuse warnings: [stories used 3+ times in search]

### Gaps
- [Competency]: best available is [story] ([fit level]). Gap-handling: [pattern]. Consider developing new story.

### Strength Warnings
- [Question] -> [Story]: rated strength [N]. [specific guidance]

## Questions To Ask Them (5)
1.
2.
3.
4.
5.

## Confidence
- Overall confidence in this prep:
- Unknowns reducing confidence:

## Day-Of Cheat Sheet (save this — review 15 min before the interview)
- **Remember**: [the single most important thing about this company/role]
- **Your positioning**: [one-line positioning statement from above]
- **Their top 3 priorities**: [from JD parsing]
- **Your best stories for this interview**: [3 story titles mapped to likely questions]
- **The concern to be ready for**: [the #1 most likely concern + your counter in one sentence]
- **Your question to ask**: [the single best question for this interviewer/round]

**Recommended next**: `practice` — drill the competencies this prep identified as critical. If the format is a presentation round and `present` hasn't been run: `present` instead — structure your content before drilling delivery. **Alternatives**: `mock [format]`, `concerns`, `hype`, `present`
```
