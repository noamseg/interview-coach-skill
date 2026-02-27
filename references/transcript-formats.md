# Transcript Format Detection and Normalization

## Purpose

Step 0.5 in the transcript processing pipeline. Runs before cleaning (Step 1). Detects the source tool/format of a raw transcript and normalizes it to a standard internal representation.

## Format Detection Protocol

- Examine the first 30-50 lines for format signals
- Check for: VTT headers (`WEBVTT`), timestamp styles (HH:MM:SS vs MM:SS vs inline), speaker label patterns (Name:, Speaker 1:, etc.), topic/chapter headers, paragraph grouping, line numbering, metadata blocks
- Support 8 formats (detailed below)
- When detection is uncertain, default to Manual/generic processing and note: "Format not confidently detected — processing as generic transcript. Results may require manual review."

## Supported Formats

### 1. Otter.ai

**Detection signals**: Speaker names on their own line followed by paragraph-grouped text. Timestamps at paragraph level (not per-line). Often includes "Transcribed by Otter" footer.

**Normalization rules**:

- Merge paragraph-grouped text under the same speaker into a single turn
- Watch for mid-turn misattribution: Otter sometimes reassigns speaker mid-paragraph when background noise triggers speaker detection. If a short (< 10 word) segment attributed to a different speaker appears mid-paragraph, keep it with the surrounding speaker and flag: "[possible misattribution]"
- Strip paragraph-level timestamps
- Preserve any summary sections as `[Summary: ...]` markers

### 2. Grain

**Detection signals**: Topic/chapter headers (often bold or with section markers). Speaker labels with timestamps. Structured sections with headings.

**Normalization rules**:

- Preserve topic headers as `[Topic: ...]` markers — these carry valuable structural information for format-aware parsing
- Don't split Q&A exchanges at topic boundaries — if a question starts in one topic section and the answer continues in the next, keep them together
- Merge consecutive lines from the same speaker

### 3. Google Meet

**Detection signals**: Per-line speaker labels with timestamps. Very aggressive line splitting — same speaker may have 5-10 consecutive short lines. Format: "Speaker Name HH:MM:SS" or similar.

**Normalization rules**:

- Merge aggressive per-line splitting for the same speaker — consecutive lines from the same speaker become one turn
- Strip per-line timestamps
- Reconstruct sentence-level text from fragments

### 4. Zoom VTT (WebVTT format)

**Detection signals**: `WEBVTT` header on first line. Sequential numbered cues. Timestamps in `HH:MM:SS.mmm --> HH:MM:SS.mmm` format. May include positioning metadata (`align:`, `position:`).

**Normalization rules**:

- Strip the WEBVTT header and all metadata lines
- Strip cue numbering and timestamp lines
- Extract speaker labels from text content if present (often formatted as "Speaker Name: text" within the cue)
- Handle positioning metadata by ignoring it entirely
- Merge consecutive cues from the same speaker

### 5. Granola

**Detection signals**: AI-generated meeting notes format with structured sections (Summary, Key Points, Action Items, Transcript). Speaker labels with timestamps. May include AI-generated summaries above the raw transcript.

**Normalization rules**:

- Locate the raw transcript section (often after AI-generated notes)
- Strip AI-generated summary/notes sections but note their existence: "[AI notes section detected — using raw transcript below]"
- Merge same-speaker consecutive lines
- Preserve action items as `[Action Item: ...]` markers if they appear inline

### 6. Microsoft Teams

**Detection signals**: Speaker labels on separate lines from text content. Timestamps in their own column or line. May include echo artifacts (same text appearing twice). Format often resembles a table or structured block.

**Normalization rules**:

- Combine separate speaker-label lines with their associated text blocks
- Handle echo artifacts: if the same text appears twice within 2 lines attributed to the same speaker, deduplicate
- Strip timestamp columns/lines
- Merge consecutive turns from the same speaker

### 7. Tactiq

**Detection signals**: Line numbers (1, 2, 3...) at the start of lines. Timestamps alongside speaker labels. Clean formatting with consistent structure.

**Normalization rules**:

- Strip line numbers from the start of each line
- Strip timestamps
- Merge consecutive same-speaker lines

### 8. Manual/Generic

**Detection signals**: None of the above patterns match, OR the format is ambiguous. Includes manually typed transcripts, notes, or unstructured text.

**Normalization rules**:

- Infer speakers from context clues: Q:/A: labels, quotation marks, paragraph breaks, "Interviewer:"/"Candidate:" labels, indentation patterns
- If no speaker labels can be inferred, ask the candidate: "I can't identify speaker turns in this transcript. Can you indicate which parts are your answers and which are the interviewer's questions?"
- Preserve paragraph structure as turn boundaries when no other signals exist

## Disambiguation Rules

When format signals overlap:

- **Otter vs. Google Meet**: Otter groups text into paragraphs under a speaker; Google Meet has one short line per timestamp per speaker. If average line length > 50 words, likely Otter. If < 15 words, likely Google Meet.
- **Grain vs. Otter**: Grain has explicit topic/chapter headers that structure the transcript. If topic headers exist, treat as Grain. If only speaker labels and paragraphs, treat as Otter.
- **Teams vs. Otter**: Teams separates speaker labels from text blocks (label on one line, text on the next). Otter puts the speaker label inline or at the top of a paragraph group. If speaker labels are consistently isolated on their own lines, treat as Teams.

## Internal Representation (Normalization Target)

All formats normalize to:

```
[Speaker Label]: [text of what they said]

[Speaker Label]: [text of what they said]
```

Rules:

- One speaker turn per block
- Blank line between turns
- Timestamps stripped entirely
- Speaker labels standardized (consistent naming throughout)
- Topic/chapter headers preserved as `[Topic: ...]` markers between turns
- Fidelity markers preserved: `[inaudible]`, `[crosstalk]`, `[pause]`, `[laughter]`
- Duplicate lines and empty turns removed
- No line breaks within a single turn (flowing text)

## Multi-Speaker Handling

- **2 speakers**: Map to Interviewer/Candidate roles. If names are available, use them but also tag roles: "Sarah Chen (Interviewer): ..."
- **3+ speakers**: Flag as potential panel interview. Preserve distinct interviewer labels — do NOT merge all interviewers into a single "Interviewer" label. Each person gets their own label. Carry this signal forward to Step 2 for format-aware parsing (panel interview path).
- **1 speaker detected**: Likely a transcription issue or a monologue section. Flag: "Only one speaker detected — this may be a partial transcript or a transcription error. Proceeding with available data."

## Quality Signals for Step 1.5

After normalization, report these quality signals to the Quality Gate:

- **Speaker label coverage**: What percentage of text blocks have identified speakers? (100% = high, <80% = flag)
- **Normalization confidence**: How confident is the format detection? (High = clear format match, Medium = some ambiguity, Low = defaulted to generic)
- **Multi-speaker detection**: Number of distinct speakers detected and whether roles could be assigned
- **Content preservation**: Estimated percentage of original content preserved through normalization (fidelity markers, topic headers, etc.)
- **Artifacts detected**: Any echo artifacts, misattributions, or garbled sections identified during normalization
