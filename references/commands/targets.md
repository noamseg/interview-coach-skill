# targets — Build the Target Ecosystem

Translate the candidate's compass into a concrete target ecosystem: tiered companies, communities and scenes, and the segment they're actually targeting. The output is what `mapping`, `brand`, and `content` build on.

Read `references/opportunity-system.md` (Section: Target Ecosystem Model) and `references/commands/research.md` (research workflow is reused per company).

---

## Priority Check

- If no `compass` exists: Hard gate — "I need a compass to build a target ecosystem against. Let's run `compass` first. Otherwise we'll build a target list optimized for opportunities you don't actually want."
- If `compass` exists at low confidence: Soft gate — "Your compass confidence is low. I can build a target ecosystem, but treat it as a hypothesis we'll revise. Want to proceed, or run `projects` first to test compass?"
- If user already has a long target list in mind: Useful — we'll bring rigor to it, not build from scratch.

---

## Required Inputs

- Compass output (from coaching_state.md).
- The candidate's current notion of where they want to look — even if vague.

## Optional Inputs

- Depth: Quick (1 session, 30-50 companies surfaced, 10 prioritized) / Standard (2 sessions, ecosystem + communities, default) / Deep (3 sessions, ecosystem + communities + segment hypothesis testing).
- Existing target list (will be evaluated against compass).
- Geographic constraints, time-zone constraints.
- Recent rejection patterns (these inform anti-targets).

---

## Logic / Sequence

### Step 1: Compass-to-Targets Translation

Pull the aligned-opportunity sentence from the Compass section. Decompose it into:
- **Sector / industry** signals.
- **Company stage** signals (size, funding stage, age).
- **Role/scope** signals.
- **Cultural** signals.
- **Anti-criteria** (these become target filters).

Surface candidate companies. The candidate's own list is the starting set; supplement with research:
- Industry and segment maps (use web research per `research.md` Quick Scan).
- "Companies similar to X" via product-similarity, hiring-pattern similarity, leadership-tree similarity.
- Communities and Slack/Discord/Substack lists where target operators congregate (these are leading indicators of new companies).

### Step 2: Tier Assignment

Each company gets a tier:

- **Tier 1 — Core fit.** Compass-aligned with no significant bridge required. Cap at ~10. If >10, force prioritization.
- **Tier 2 — Adjacent.** Strong alignment with one bridge required (domain shift, stage shift, role shift). Cap at ~10.
- **Tier 3 — Stretch.** Aligned in some dimension but requires significant bridges. ≤10.
- **Tier 4 — Watch-only.** Interesting signals (recent funding, new product line, hire of someone the candidate respects) but not currently pursuing. Logged so the candidate can watch passively.

If the user wants to add a 21st company to active tiers, force a swap: which one comes off?

### Step 3: Watch Signals

For each Tier 1-2 company, identify the **watch signal** — what specific signal would trigger active outreach? Examples:
- Hiring announcement for a role matching compass.
- Public post by a target person inviting collaboration.
- Public funding round in a segment fit for the candidate.
- Product launch indicating a domain shift toward candidate fit.

Watch signals turn passive monitoring into active triggers. Without them, the target list is decorative.

### Step 4: Communities & Scenes

Where do the people doing the work the candidate wants to do actually congregate? Map:

- **Conferences** — top 3-5 the candidate would benefit from attending or speaking at.
- **Online communities** — Slacks, Discords, subreddits, Substacks with active comment communities.
- **Open source / publication** — repos, projects, publications where target operators are visible.
- **Podcasts** — both as listener (where to learn the discourse) and as guest (where to be discovered).
- **Meetups / dinners** — local or curated communities.

For each, note: what's the cost of entry (paid? referral-only? open?) and what's the cadence (every conference once a year? Slack daily?).

### Step 5: Segment Statement

The candidate writes a single sentence: "I am targeting [narrow segment]." Phyl Terry's spear, not a net.

A weak segment: "AI/ML companies."
A stronger segment: "Companies building applied AI for clinical workflows in mid-size hospital systems."

The segment must:
- Be narrow enough that 5-30 specific companies and 2-5 specific communities fit.
- Be authentic to the compass (not chosen because it's trendy).
- Be a place where the candidate's brand can plausibly land.

### Step 6: Anti-Targets

What the candidate is explicitly *not* pursuing, even when interesting. This prevents drift. Examples:
- "Series B+ companies with no founder still in product-leadership role."
- "Marketing-heavy roles dressed up as product roles."
- "Companies whose primary moat is regulatory capture I disagree with."

Anti-targets are a discipline. Without them, every interesting opportunity competes for attention.

---

## Output Schema

Write to coaching_state.md under `## Target Ecosystem`:

```markdown
## Target Ecosystem

### Companies
| Tier | Company | Why fit | Watch signal | Status |

### Communities & Scenes
| Name | Type | Where my people are doing what | Engagement plan |

### Segments
- Primary segment: [single sentence]
- Adjacent segments: [list]
- Disqualified segments: [list with reason]

### Anti-Targets
- [Pattern]: [reason]
```

In-session output also includes:
- The segment statement (highlighted).
- The 5 most important Tier 1 companies and why (the "regret list").
- The top 3 communities by leverage.
- The top 3 anti-targets with reasoning.

---

## Failure Modes

- **The wish list.** 100 companies the user finds interesting but couldn't realistically pursue. Force pruning.
- **The trendy segment.** Picking a segment because it's hot, not because the compass points there. Test against compass — does the segment actually serve the work-shape paragraph?
- **The fragmented ecosystem.** Companies in 5 unrelated segments. Either compass is unfocused (back to compass) or the user has multiple compasses (force one).
- **No anti-targets.** A target ecosystem with no anti-targets has no edges; it'll absorb every opportunity that comes in.

---

## Recommended Next

**Recommended next**: `mapping` — figure out who you already know inside this ecosystem and where the gaps are. **Alternatives**: `brand` (if mapping reveals strong existing ties and the bottleneck is positioning, not access), `research [Tier-1 company]` (if you want to deep-dive a specific top target).
