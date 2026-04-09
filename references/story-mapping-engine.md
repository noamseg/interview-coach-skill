# Narrative Mapping Engine

Consolidates narrative mapping logic into a single protocol. Referenced by `prep` (narrative-to-document mapping), `narratives` (gap analysis), and `progress` (narrative bank health).

---

## Purpose

When the Narrative Bank exists, narratives must be mapped to specific document sections before drafting begins. The goal is portfolio optimization: maximum fit across all documents, minimum repetition, zero generic sections.

---

## 4-Level Fit Scoring

Each narrative-to-section pairing gets one of 4 fit levels:

| Level | Description | Action |
|-------|-------------|--------|
| **Strong Fit** | This narrative directly supports this section's goal. The connection to this program and professor is specific and substantive. | Use as primary narrative for this section. |
| **Workable** | This narrative is relevant but needs adaptation — different framing, different emphasis, or connecting language. | Use with explicit adaptation plan. |
| **Stretch** | This narrative is adjacent — it can be used but only with significant reframing, and a stronger option is preferable. | Use only if no better option exists. Flag for narrative bank development. |
| **Gap** | No narrative in the bank adequately supports this section. | Add a new narrative before drafting this section. |

---

## Mapping Protocol

### Step 1: Document Structure Map

For each document being drafted, list the sections requiring narrative support:

**Standard SoP sections**:
- P1 (Opening hook): Requires a Turning Point or Field Connection narrative
- P2 (Research experience 1): Requires Research Experience or Challenge-Growth narrative
- P3 (Research experience 2): Requires second Research Experience narrative (ideally different method/domain)
- P5 (Intellectual agenda): Requires the Intellectual Insight from the strongest narrative
- P6 (Program fit): Custom — not from narrative bank; requires `fit [program]`
- P7 (Goals): Custom — forward-looking; draws on Meaning from narratives

**Motivation Letter sections**:
- Opening: Requires Turning Point or Field Connection (more personal register)
- Body: 1-2 research narratives adapted for MotLetter format (shorter, more personal)
- Closing: Custom — forward-looking

### Step 2: Narrative Evaluation Per Section

For each section, evaluate all narratives in the bank:
1. Pull all narratives of the relevant type first
2. Score each on 4-level fit for this specific program (not generic fit)
3. Select the highest-fit narrative; note the adaptation needed
4. Flag if the best available narrative is only Workable or Stretch

### Step 3: Portfolio Check

After mapping all sections across all active programs:

**Repetition check**: Is the same narrative appearing in P2 for every program? If identical, flag — each must be adapted even if the underlying experience is the same.

**Coverage check**: Are any sections at Gap level? These are blocking issues — the narrative must be developed before the document can be drafted.

**Overuse check**: Is any narrative used in 3+ program documents in identical or near-identical form? Flag for differentiation.

**Freshness check**: Are the narratives deployed reflecting the applicant's most recent and strongest work? Or are older, weaker narratives being used because they're more developed?

---

## Conflict Resolution

When two strong narratives both compete for the same section:

1. **Program specificity wins**: The narrative with the stronger connection to this program's research focus takes priority
2. **If tie on specificity**: The higher-strength narrative wins
3. **If still tied**: Deploy the less-used narrative (check "Used In" column) — portfolio breadth matters
4. **Exception**: If one narrative has a stronger Intellectual Insight relevant to this program's research direction, use it regardless of overall strength rating

---

## Narrative Map Output Format

```
### Narrative Map — [Program] SoP

| Section | Narrative | Fit Level | Adaptation Needed |
|---------|-----------|-----------|------------------|
| P1 (Opening) | N003 — Turning Point | Strong | Adjust opening line for this program's research domain |
| P2 (Research 1) | N001 — EEG Pipeline | Strong | None — directly relevant |
| P3 (Research 2) | N004 — Survey Design | Workable | Reframe to emphasize methods over findings |
| P5 (Intellectual agenda) | N001 insight | Strong | Pull insight, not narrative |
| P6 (Program fit) | Custom | N/A | Run `fit [program]` first |
| P7 (Goals) | Custom | N/A | Draw on Meaning from N001, N003 |

**Gaps**: None
**Overuse risk**: None
**Conflicts resolved**: N001 and N002 both Strong Fit for P2; N001 selected (stronger Intellectual Insight for this program's ML focus)
```

---

## Portfolio-Level Optimization

When applying to 5+ programs, treat the narrative bank as a portfolio — not a single set of documents but a system of related applications that together tell a coherent story.

**Portfolio principles**:
1. Each program's SoP should feel purpose-built for that program — not a mass-produced document
2. The core intellectual identity should be consistent across programs; only the program-fit section and emphasis should shift
3. The same experience can appear in multiple SoPs, but the framing should be calibrated to what each program values

**Tracking across the portfolio**:
- A narrative used in 2 programs = normal
- A narrative used in 4+ programs without adaptation = risky (committees sometimes share notes; field is small)
- A narrative used in every program's opening = definite red flag — vary the approach

---

## Integration with `prep` and `narratives`

`prep [program]` runs this engine at Step 6 to produce the narrative map before drafting begins. The map is saved in Coaching Notes (not Application Loop).

`narratives find gaps` runs Step 3 (portfolio check) to surface any document sections without Strong Fit or Workable narratives.

`progress` runs the freshness and overuse checks during the narrative bank health review.
