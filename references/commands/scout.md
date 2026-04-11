# scout — Job Opportunity Scanner

Automated job search scanner that reads preconfigured search URLs via Chrome, identifies new listings, scores fit against the candidate's profile, and stores results for later review. Designed to run periodically without burning through tokens.

### When to Use Scout vs. Other Commands

| Situation | Use |
|---|---|
| Want to scan for new job listings across multiple sources | `scout` |
| Found a specific JD and want to analyze it deeply | `decode` |
| Want to understand a specific company before applying | `research` |
| Have an interview scheduled and need full prep | `prep` |
| Want to compare 2-5 specific JDs you already have | `decode` (batch triage) |

### Prerequisites

- **Hard dependency**: Must run in a Chrome-enabled environment (Cowork with Claude Chrome Extension). The command reads live job search result pages via the browser.
- **Hard dependency**: `coaching_state.md` must exist with a Profile section (target roles, seniority band). Without a profile, there's nothing to score fit against.
- **Soft dependency**: Resume Analysis improves scoring accuracy (skills matching).
- **Soft dependency**: Storybank improves scoring accuracy (competency coverage).
- **Soft dependency**: Comp Strategy enables comp matching (when listings include salary).

### Priority Check

- If no `kickoff`: Hard gate. "I need your profile to score fit. Run `kickoff` first."
- If no search URLs configured: "No job search URLs configured yet. Let's set those up first." → run URL Configuration flow.
- If all URLs fail to load: Report which URLs failed and why. Suggest the candidate check them manually.

### Sequence

**Step 1: Load Context**
Read `coaching_state.md`. Extract:
- Profile (target roles, seniority band, career transition)
- Resume Analysis (positioning strengths, likely concerns)
- Storybank (skills coverage — Primary Skill and Secondary Skill columns)
- Comp Strategy (target range, if exists)
- Scout Config (search URLs, threshold)
- Scout Opportunities (already-seen jobs — title + company combos)

Also check `opportunities_bad_fit.md` for previously seen below-threshold jobs.

**Step 2: Read Search Pages**
For each URL in the Scout Config:
1. Open the URL in Chrome (or navigate to it).
2. Read the job listings visible on the page. Extract for each listing:
   - Job title
   - Company name
   - Location / remote status
   - Seniority level (if shown)
   - Comp range (if shown)
   - Listing URL (if available)
   - Brief description or key requirements (whatever is visible on the search results page)
3. If the search page requires scrolling to load more results, scroll to load all visible listings.
4. **Two-tier detail retrieval**:
   - **Tier 1 — Search page has enough detail**: If the search results page shows a description, requirements, or enough context to score fit (e.g., LinkedIn, Indeed), score from the search page. Do not click through. This is the fast path.
   - **Tier 2 — Search page is too thin**: If the search results page shows only title + company with no description or requirements (e.g., Built In Chicago, some company career pages), click through to the listing detail page to get the info needed for scoring, then navigate back to the search results. This is slower but necessary — a title alone isn't enough to score fit.
   - **How to decide**: After reading the search page, check whether you have at least a job title, company, AND either a description snippet or a requirements list. If yes → Tier 1. If you only have title + company with no detail → Tier 2.
   - **Tier 2 optimization**: When clicking through, extract only what's needed for scoring (title, company, seniority, requirements, comp if shown). Don't read the entire page in depth — get the facts and move on.

### Token Efficiency Protocol

These rules minimize token usage across scout runs. Follow them on every scan.

**Rule 1: Always use text extraction, not screenshots.**
Use `get_page_text` or `read_page` as the standard extraction method for all job board pages. Job boards render content as HTML text — screenshots are never needed. A single text call replaces 4-6 screenshot + scroll cycles per URL. Fall back to screenshots only if text extraction returns empty or garbled content (rare for any major job board).

**Rule 2: Quick-pass dedup before deep reading.**
On each search page, do a fast title + company scan first. Cross-reference against `opportunities_bad_fit.md` and the Scout Opportunities table in `coaching_state.md` before clicking into or evaluating any listing. Only deep-read (click through, extract full details, evaluate fit) listings that aren't already tracked. Report skip count in the Scan Summary.

**Rule 3: Early termination when no new listings found.**
If the first 10-15 listings on a search page are all already tracked (present in bad_fit or Scout Opportunities), stop scrolling that URL. Job boards sort by recency — if the top results are all known, deeper results will be too. Exception: if the search URL uses a non-date sort order (e.g., relevance), scroll fully.

**Rule 4: Batch assessment.**
Collect all new (unseen) listings across all URLs first, then do one consolidated scoring pass against the candidate's profile. Profile context is loaded once in Step 1 — don't re-read `coaching_state.md` per listing.

**Step 3: Deduplication**
For each extracted listing, check whether `title + company` (case-insensitive) already exists in:
- `coaching_state.md` Scout Opportunities table (above-threshold)
- `opportunities_bad_fit.md` (below-threshold)

Skip any already-seen listings. Report the skip count at the end.

**Step 4: Profile-Match Scoring**
For each new listing, score fit on a 1-5 scale using these factors:

| Factor | Weight | How to Assess |
|---|---|---|
| **Role match** | High | Does the title/function align with the candidate's target role(s)? Exact match = high score. Adjacent function = moderate. Unrelated = low. |
| **Seniority match** | High | Does the listed level match the candidate's seniority band? Match = high. One level off = moderate. Two+ levels off = low. |
| **Skills/requirements match** | Medium | Do the visible requirements overlap with the candidate's Resume Analysis strengths and Storybank skills? Strong overlap = high. Partial = moderate. Minimal = low. |
| **Transition alignment** | Low (only if Career transition ≠ "none") | Does this role align with the candidate's transition direction? Supports transition = boost. Contradicts = penalty. |
| **Comp match** | Medium (only when both listing comp AND Comp Strategy target range exist) | Is the listed comp within or above the candidate's target range? Within/above = neutral (no penalty). 10-20% below = slight penalty. 20%+ below = significant penalty. |

**Scoring scale:**

| Score | Label | Meaning |
|---|---|---|
| 5 | Strong Fit | Nearly all factors align. Candidate checks most boxes. |
| 4 | Good Fit | Solid match with 1-2 minor gaps that are easily frameable. |
| 3 | Moderate Fit | Real gaps exist but are potentially narratable. Worth a closer look. |
| 2 | Weak Fit | Significant gaps. Uphill battle unless there's a specific angle. |
| 1 | Poor Fit | Fundamental misalignment on role, seniority, or domain. |

**For each listing, also write a one-line rationale** explaining the score. Examples:
- "Strong role + seniority match. Skills overlap on AI strategy and engineering leadership." (5)
- "Right level, adjacent function (VP Product vs VP Eng). Domain match is strong." (4)
- "Good role match but comp range is 25% below target." (3)
- "Two levels junior. Would be a significant step down." (2)
- "Unrelated function (marketing). Skip." (1)

**Step 5: Store Results**
Split results by the candidate's configured threshold:

**Above threshold** → Add to `coaching_state.md` Scout Opportunities table:
```
| Date | Company | Title | Score | Rationale | URL | Status |
```
- Status starts as "New"
- URL is the listing URL if available, otherwise blank

**Below threshold** → Add to `opportunities_bad_fit.md`:
```
| Date | Company | Title | Score | Rationale |
```
- No URL needed — this is just a dedup record
- No Status column — these aren't tracked further

**Step 6: Report to User**
Show only above-threshold results, sorted by score (highest first).

### URL Configuration Flow

When the candidate first runs `scout` (or when no URLs are configured), walk them through setup:

1. "What job search sites are you using? (LinkedIn, Indeed, Glassdoor, etc.)"
2. "For each site, set up a search with your criteria (role, location, experience level, etc.) and give me the URL of the search results page."
3. "What fit threshold should I use? Jobs scoring at or above this number will be surfaced to you. I recommend starting with 3 (Moderate Fit and above)." Accept 1-5.
4. Store URLs and threshold in coaching_state.md Scout Config section.

**Important**: The candidate configures their own search criteria on each job site. Scout doesn't try to construct searches — it reads whatever results the candidate's preconfigured searches return.

### Threshold Adjustment

If the candidate asks to change their threshold: update Scout Config and re-evaluate any stored opportunities that cross the new boundary. Move newly-qualifying opportunities from `opportunities_bad_fit.md` to `coaching_state.md` (with Status: "New"), and vice versa.

### Output Schema

```markdown
## Scout Report — [date]

### New Opportunities ([count] found, [count] skipped as already seen)

| # | Company | Title | Score | Rationale |
|---|---------|-------|-------|-----------|
| 1 | [company] | [title] | 5 | [one-line rationale] |
| 2 | [company] | [title] | 4 | [one-line rationale] |
| ... | | | | |

### Below Threshold ([count] new listings scored below [threshold])
[Not shown in detail — stored in opportunities_bad_fit.md for dedup.]

### Scan Summary
- URLs scanned: [count]
- Total listings read: [count]
- Already seen (skipped): [count]
- New above threshold: [count]
- New below threshold: [count]

**Recommended next**: `decode [top-scored company JD]` — get a full JD analysis for the strongest new match. **Alternatives**: `research [company]`, `scout` (run again later for new listings)
```

### Edge Cases

**No new listings found**: "No new listings across [N] search URLs. Either nothing new has been posted, or I've already seen everything. Try again in a few days, or check that your search URLs are still returning current results."

**Search page format not readable**: Some job sites may render listings in ways that are hard to parse. If a URL's listings can't be reliably extracted: "I couldn't reliably read listings from [URL]. The page format may not be compatible. You might need to use a different search URL for this site, or we can skip it."

**Mixed results across URLs**: Report per-URL success/failure so the candidate knows which sources are working.

**Comp data availability**: Most search result pages don't show comp. Only factor comp into scoring when it's explicitly visible. Never guess comp ranges.

**Duplicate listings across sources**: The same job may appear on LinkedIn and Indeed. Dedup by title + company catches this — the second occurrence is skipped.

### Coaching State Integration

Save to `coaching_state.md`:

```markdown
## Scout Config
- Search URLs:
  1. [URL — label, e.g., "LinkedIn — CTO roles"]
  2. [URL — label]
  3. [URL — label]
- Fit threshold: [1-5, default 3]
- Last scan: [date]

## Scout Opportunities
| Date | Company | Title | Score | Rationale | URL | Status |
|------|---------|-------|-------|-----------|-----|--------|
[rows — Status: New / Reviewed / Pursuing / Passed / Archived]
```

Save to `opportunities_bad_fit.md`:

```markdown
# Below-Threshold Opportunities
Last updated: [date]

| Date | Company | Title | Score | Rationale |
|------|---------|-------|-------|-----------|
[rows — append-only, used for dedup]
```

### Status Lifecycle

Scout Opportunities Status values:
- **New** — Just discovered by scout. Not yet reviewed by the candidate.
- **Reviewed** — Candidate has seen it (set when candidate asks to view opportunities or when shown in scout report).
- **Pursuing** — Candidate decided to pursue. Typically set when `decode`, `research`, or `prep` is run for this company+role.
- **Passed** — Candidate decided not to pursue.
- **Archived** — No longer relevant (role filled, expired, etc.).

When other commands create Interview Loop entries for a company+role that exists in Scout Opportunities, update the Status to "Pursuing" automatically.

### Schema Migration

When reading an existing `coaching_state.md` that doesn't have Scout Config or Scout Opportunities sections: these are created on first `scout` run via the URL Configuration Flow. No migration needed — absence is normal until scout is first used.

### Archival

When Scout Opportunities exceeds 50 rows:
- Archive all "Passed" and "Archived" entries older than 30 days — move to a `### Historical Scout Summary` subsection preserving only: date range, count by score, count by status.
- Keep all "New", "Reviewed", and "Pursuing" entries regardless of age.

`opportunities_bad_fit.md` has no archival threshold — it grows unbounded. The file serves only as a dedup index (simple table, 5 short columns per row). Archiving old entries would cause the system to re-score previously seen listings, wasting tokens. Even at 1,000+ rows the file is small.
