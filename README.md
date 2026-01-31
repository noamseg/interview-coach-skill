# Interview Coach - AI-Powered Interview Preparation

A Claude Skill that transforms Claude into a systematic interview coach. Built from research with 30+ tech professionals on how they're using AI to land better jobs faster.

**Featured in:** [Lenny's Newsletter - "You should be using AI to interview (here's how)"](LINK_TBD)

---

## What This Does

Instead of generic interview advice, this skill gives you:

- **Story mining** that extracts interview stories from your experience through conversation (no pre-formatted STAR required)
- **Story surgery** to diagnose and strengthen weak stories (add metrics, sharpen your role, inject conflict)
- **Company-specific prep** with predicted questions, competitive positioning, and strategic counters
- **Transcript analysis** that scores harshly across multiple dimensions (no sycophantic praise)
- **Practice drills**: constraint ladder, adversarial follow-ups, interruption handling, recovery tactics
- **Rejection debriefs** that extract actionable lessons when you don't get the job
- **Weekly reviews** that surface patterns and keep you focused on what matters
- **Differentiation coaching** to escape the "AI-polished middle" where everyone sounds the same

---

## Quick Start (5 minutes)

### Option 1: Claude Pro ($20/month) - Recommended

1. Download the `.skill` file from [Releases](../../releases)
2. In Claude, create a new Project called "Interview Coach"
3. Go to Project Settings → Skills → Upload the `.skill` file
4. Upload your resume to the project
5. Start a conversation: "Help me set up my interview coach"

### Option 2: Claude Free

1. Copy the contents of `SKILL.md` from this repo
2. In Claude, create a new conversation
3. Paste the SKILL.md content at the start
4. Upload your resume
5. Say: "Help me set up my interview coach"

*Note: Free tier won't retain context between conversations. You'll need to re-paste the skill and re-upload your resume each session.*

---

## How to Use

### First Time Setup

Upload your resume and tell Claude your target role. That's it.

**Don't have your stories ready in STAR format?** Most people don't. Say "Help me find stories" and Claude will extract them through conversation, asking questions like "Tell me about a project that almost failed" and building the structure for you.

### Before an Interview

> "I have an interview at Stripe for Senior Product Manager. Here's the job description: [paste JD]"

Claude generates:
- What Stripe optimizes for (based on JD + values)
- Competitive positioning (what the median candidate will say, how to differentiate)
- 7-10 predicted questions with confidence levels and sources
- Concerns about your background + how to counter them
- Non-generic questions to ask them

### After an Interview

> "Here's my interview transcript from today. How did I do?"

Claude analyzes from multiple perspectives:
- Hiring manager (would they advance you?)
- Skeptical specialist (where did you lack depth?)
- Values alignment (which principles did you miss?)
- Calibration (verbosity, hedging, jargon density)

You get a one-page "delta sheet" with exactly what to fix. **Expect harsh scores.** A 3/5 is average. Most answers are 2-3.

### If You Get Rejected

> "I didn't get the job. Here's what happened..."

Claude runs a structured debrief:
- Stage-based diagnosis (where in the funnel did you fail?)
- Pattern recognition (is this a recurring issue?)
- Specific gap identification
- Concrete next actions

### Practice Mode

> "Let's practice."

Options include:
- **Constraint ladder**: Same story at 15s, 45s, 90s, 3min
- **Adversarial follow-ups**: Skeptical challenges to your stories
- **Recovery tactics**: Practice handling questions you can't answer well
- **Interruption drill**: Maintain your thread when cut off mid-answer
- **Role-specific drills**: PM six-lens test, Engineering depth test, etc.

### Strengthen Weak Stories

> "This story feels thin. Help me improve it."

Claude diagnoses what's missing and helps you:
- Add quantification (even rough estimates)
- Sharpen your specific role (what did YOU do?)
- Inject conflict (what resistance did you face?)
- Combine with other experiences
- Find third-party validation

### Weekly Review

> "Run my weekly review"

Claude surfaces:
- Score trends across dimensions
- Recurring failure modes
- Overused vs. underused stories
- This week's focus area and specific drill assignment

### Pre-Interview Boost

> "I have an interview in 30 minutes."

Claude provides:
- 60-second "hype reel" of your wins (read aloud for confidence)
- 3x3 sheet (3 likely concerns + counters, 3 questions to ask)
- Energy calibration check

---

## What's Included

```
interview-coach/
├── SKILL.md                     # Core coaching instructions
└── references/
    ├── rubrics-detailed.md      # Full 1-5 scoring scales
    ├── role-drills.md           # PM, Eng, Design, Data Science, Research, Ops, Marketing drills
    ├── differentiation.md       # Earned secrets, spiky POV, clarity under pressure
    ├── transcript-processing.md # How to clean, parse, and analyze transcripts
    └── storybank-guide.md       # Building and maintaining your story index
```

---

## Two Tracks: Quick Prep vs Full System

**Quick Prep** (~30 min per interview)
- Company prep brief
- Basic transcript scoring
- Key improvements to focus on

**Full System** (~2-3 hours initially, then compounds)
- Story mining and surgery
- Storybank with gap analysis
- Multi-lens scoring from 4 perspectives
- Rejection debriefs
- Recovery tactics practice
- Weekly reviews with pattern recognition
- Differentiation coaching

Choose your track during setup. You can upgrade later.

---

## Tips for Best Results

1. **Upload your actual resume** - The more context Claude has, the better the coaching

2. **Share real transcripts** - Use [Granola](https://granola.ai), [Otter](https://otter.ai), or [Tactiq](https://tactiq.io) to capture interviews

3. **Expect harsh feedback** - The skill defaults to critical. If everything sounds great, you're not learning.

4. **Run weekly reviews** - During active job search, this surfaces patterns you won't notice yourself

5. **Practice recovery tactics** - Everyone gets stumped. The skill helps you handle it gracefully.

6. **Debrief every rejection** - Most people skip this because it's painful. Don't.

---

## Frequently Asked Questions

**Q: Does this work for non-tech roles?**
A: The core coaching (prep briefs, transcript analysis, story mining, recovery tactics) works for any role. The role-specific drills currently cover PM, Engineering, Design, Data Science, Research, Operations, and Marketing.

**Q: Can I use this with ChatGPT or Gemini?**
A: The skill is designed for Claude, but you can adapt the prompts. Copy relevant sections from SKILL.md and reference files into your preferred AI.

**Q: How is this different from just asking ChatGPT for interview help?**
A: Four ways: (1) It's a system, not one-off prompts—context persists across sessions; (2) It scores harshly against explicit rubrics, not vibes; (3) It extracts stories through conversation instead of expecting them pre-formatted; (4) It tracks patterns over time and holds you accountable.

**Q: Why is the feedback so harsh?**
A: Because sycophantic praise doesn't help you improve. The candidates who landed jobs in our research explicitly asked AI to be adversarial. The skill defaults to that mode.

**Q: Is it ethical to use AI for interview prep?**
A: Using AI to prepare is no different than using books, coaches, or mock interviews. The skill helps you articulate your real experiences better—it doesn't fabricate credentials. See the ethics section in the [full article](LINK_TBD) for nuanced discussion.

---

## Contributing

Found a bug? Have a suggestion? Open an issue or PR.

Ideas for future versions:
- Industry-specific prep (healthcare, fintech, etc.)
- More role-specific drills
- Integration with calendar for interview reminders
- Export to Notion/spreadsheet templates

---

## Credits

Created by [Noam Segal](https://www.linkedin.com/in/noamsegal/) based on research with 30+ tech professionals for [Lenny's Newsletter](https://www.lennysnewsletter.com/).

---

## License

MIT License - Use freely, attribution appreciated.
