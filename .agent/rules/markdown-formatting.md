# Markdown Formatting Rules

## Purpose

The bookbuilder renders markdown to PDF and epub. Some constructs render differently across GitHub, PDF, and epub. This guide defines the correct formatting choices for this project.

---

## Admonitions (Callout Boxes)

Use GitHub Flavored Markdown (GFM) admonition syntax. The bookbuilder handles these via `admonitionHandling`.

### Standard Types

```markdown
> [!NOTE]
> Informational content, metadata headers, domain notes.

> [!TIP]
> Helpful suggestions, shortcuts, best practices.

> [!WARNING]
> Safety disclaimers, important cautions, legal/medical/financial notices.

> [!IMPORTANT]
> Critical requirements that must not be missed.
```

### Custom Type — PROMPT

```markdown
> [!PROMPT]
> நீ ஒரு மருத்துவர். {patient_context}க்கு---
>
> 1. **முதல் கட்டம்:** ---
> 2. **இரண்டாம் கட்டம்:** ---
```

Use `[!PROMPT]` when the prompt contains **formatted markdown** (bold, numbered lists, tables).
Use `` ```prompt `` when the prompt is **plain text only**.

### Rules

- Always include a blank line before and after an admonition block
- Continuation lines inside the block use `>` prefix with a space (including blank separator lines: `>`)
- Never nest admonitions inside each other
- `[!NOTE]` is for metadata headers and informational callouts — not for prompts
- `[!WARNING]` is reserved for safety disclaimers

---

## Prompt Code Blocks

Use `` ```prompt `` for plain-text prompts (no internal markdown formatting needed).

````markdown
```prompt
நீ ஒரு அனுபவமிக்க வேளாண்மை நிபுணர்.
என் நிலத்திற்கு என்ன பயிர் சாகுபடி செய்யலாம்?

- மாவட்டம்: {உங்கள் மாவட்டம்}
- மண் வகை: {சிவப்பு மண் / கருப்பு மண்}
```
````

**Rules:**
- Opening fence: `` ```prompt `` (with language tag)
- Closing fence: ` ``` ` (bare — no tag)
- Never use bare ` ``` ``` ` for prompts — the bookbuilder uses the `prompt` tag for special styling

---

## Other Code Blocks

Always tag code fences with a language identifier:

| Content | Tag |
|---------|-----|
| Prompt templates | `` ```prompt `` |
| Shell commands | `` ```bash `` |
| Markdown examples | `` ```markdown `` |
| JSON | `` ```json `` |
| Python | `` ```python `` |
| Plain text / output | `` ```text `` |

Never use a bare ` ``` ` as an opening fence — the bookbuilder needs the language tag for correct rendering.

---

## Collapsible Sections (Quiz Answers)

Use `<details>/<summary>` for knowledge check answers and exercises. The bookbuilder handles these via `detailsTagHandling`.

```markdown
**கேள்வி (Question):** Prompt Engineering என்றால் என்ன?

<details>
<summary>விடை பார்க்க (See Answer)</summary>

AI மாதிரிகளிடம் சரியான பதில்களை பெறுவதற்காக கட்டளைகளை
திட்டமிட்டு வடிவமைக்கும் கலை.

</details>
```

**Rules:**
- `<summary>` text should be bilingual: `Tamil (English)`
- Always include a blank line before the closing `</details>`
- In static PDF/epub output, the bookbuilder renders the summary and content visibly (no collapse)

---

## Tables

Use standard GFM pipe tables. Always include a header row and alignment row:

```markdown
| தலைப்பு (Header) | விளக்கம் (Description) |
|------------------|------------------------|
| Row 1 value      | Row 1 description      |
| Row 2 value      | Row 2 description      |
```

**Rules:**
- Use bilingual column headers: `Tamil (English)`
- Keep table font size in mind — tables use `8.5pt` in the bookbuilder (smaller than body)
- Avoid very wide tables on 6in × 9in pages; limit to 3–4 columns
- Prefer column-aligned pipes for readability in source

---

## Headings

| Level | Use | Notes |
|-------|-----|-------|
| `#` H1 | File/collection title only | One per file |
| `##` H2 | Major sections (TOC, main groups) | e.g. `## 📑 Prompts` |
| `###` H3 | Individual prompt topics | e.g. `### 1. பயிர் பரிந்துரை` |
| `####` H4 | Sub-sections within a prompt | e.g. `#### வடிவம் (Format)` |

**Rules:**
- H1 font is 13pt — keep H1 titles short enough to fit 1–2 lines on 6in page
- Use emoji prefixes on H1 and major H2 section headings for visual identity
- Do not skip heading levels (no H1 → H3 without H2)

---

## Bilingual Labels

Use the pattern `Tamil (English)` consistently throughout:

```markdown
**கட்டளை (Prompt):**
**பயன்பாடு (Usage):**
**துறை (Domain):**
**பாதுகாப்பு (Safety):**
```

**Rules:**
- Tamil always comes first
- English translation in parentheses
- Bold both together: `**Tamil (English):**`
- Apply to: headings, metadata fields, table column headers, section labels

---

## Placeholders

Use `{curly braces}` for all user-customisable variables:

```markdown
{நோய் / மருத்துவ நிலை}
{UG Year 1-3 / PG / PhD}
{domain name}
```

**Rules:**
- Always in `{curly braces}` — not `[square]` or `<angle>`
- Provide example values separated by ` / ` when helpful: `{சிவப்பு மண் / கருப்பு மண்}`
- Tamil placeholders for Tamil content, English placeholders for technical/code context

---

## Horizontal Rules

Use `---` to separate major sections within a file:

```markdown
### 3. Topic Name

> [!PROMPT]
> Content---

**பயன்பாடு:** ---

---

### 4. Next Topic
```

---

## Compatibility Matrix

| Element | GitHub | PDF | epub | Notes |
|---------|--------|-----|------|-------|
| `[!NOTE/TIP/WARNING]` | ✅ | ✅ | ✅ | Via `admonitionHandling` |
| `[!PROMPT]` | ⚠️ | ✅ | ✅ | Renders as plain blockquote on GitHub |
| `` ```prompt `` | ⚠️ | ✅ | ✅ | Renders as code block on GitHub |
| `<details>` | ✅ | ✅ | ✅ | PDF/epub: static via `detailsTagHandling` |
| Pipe tables | ✅ | ✅ | ✅ | |
| Bare ` ``` ` | ✅ | ⚠️ | ⚠️ | No special styling in bookbuilder |
| Tamil Unicode | ✅ | ✅ | ✅ | Requires Noto Sans Tamil in font stack |
