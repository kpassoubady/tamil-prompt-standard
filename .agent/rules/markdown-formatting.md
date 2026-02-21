# Markdown Formatting Rules

## Purpose

The bookbuilder renders markdown to PDF and epub. Some constructs render differently across GitHub, PDF, and epub. This guide defines the correct formatting choices for this project.

---

## Chapter Structure

Every chapter/collection file should follow this skeleton:

```markdown
# Chapter Title

Brief introductory paragraph — what this chapter covers and why it matters.

---

## Section Heading

Content...

### Sub-section

Content...

---

## அத்தியாய சுருக்கம்

| முக்கிய கருத்துகள் | முக்கிய நினைவுகள் |
|:-------------------|:------------------|
| கருத்து அ          | நினைவு அ          |
| கருத்து ஆ          | நினைவு ஆ          |

**பொதுவான தவறுகள்:**
- ...
```

- One `#` H1 per file — becomes the running header on every page
- `##` for main sections, `###` for sub-sections, `####` sparingly
- End each chapter with an **அத்தியாய சுருக்கம்** (chapter summary) table plus a **பொதுவான தவறுகள்** titled list
- End learning chapters with a **அறிவு சோதனை** (knowledge check) section before the summary

---

## Admonitions (Callout Boxes)

Use GitHub Flavored Markdown (GFM) admonition syntax. The bookbuilder handles these via `admonitionHandling`.

### Standard Types

```markdown
> [!NOTE]
> Informational content, metadata headers, domain notes.

> [!TIP]
> Helpful suggestions, shortcuts, best practices.

> [!IMPORTANT]
> Critical requirements that must not be missed.

> [!WARNING]
> Safety disclaimers, important cautions, legal/medical/financial notices.

> [!CAUTION]
> An action that may have destructive or irreversible consequences.
```

### Custom Type — PROMPT

```markdown
> [!PROMPT]
> நீ ஒரு மருத்துவர். {patient_context}க்கு
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
- `[!WARNING]` and `[!CAUTION]` are reserved for safety disclaimers and destructive action warnings

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

| உள்ளடக்கம் | குறிச்சொல் |
|------------|-----------|
| Prompt templates | `` ```prompt `` |
| Shell commands | `` ```bash `` |
| Markdown examples | `` ```markdown `` |
| JSON | `` ```json `` |
| Python | `` ```python `` |
| Plain text / output | `` ```text `` |

Never use a bare ` ``` ` as an opening fence — the bookbuilder needs the language tag for correct rendering.

---

## Blockquote Lists (Styled Key-Point Cards)

A blockquote that opens with a **bold title line** followed by bullet items renders as a styled card with a left accent border. Use this for named key-point cards.

```markdown
> **🎯 கற்றல் நோக்கங்கள்**
>
> - AI கட்டளை வடிவமைப்பின் அடிப்படை புரிந்துகொள்க
> - APE, RACE, TRACE கட்டமைப்புகளை பயன்படுத்துக
> - பொதுவான தவறுகளை கண்டறிந்து திருத்துக

> **💡 முக்கிய கருத்துகள்**
> - தெளிவு, சூழல், வடிவம் — மூன்றும் சேர வேண்டும்
> - தமிழில் கட்டளை கொடுக்கும்போது மரியாதை நிலை குறிப்பிடவும்

> **📋 தேவையான அடிப்படை அறிவு**
> - தமிழ் படிக்க மற்றும் எழுத தெரிந்திருக்க வேண்டும்
> - ChatGPT அல்லது Claude பயன்படுத்தியிருக்க வேண்டும்
```

Good card titles: **கற்றல் நோக்கங்கள்**, **முக்கிய கருத்துகள்**, **தேவையான அடிப்படை அறிவு**, **சுருக்கம்**, **விரைவு குறிப்பு**

**Rules:**
- Blockquote must start with a **bold line** — that becomes the card title
- Follow immediately with a blank `>` line, then bullet items
- Handled by `blockquoteListHandling` in the bookbuilder config
- Do not mix paragraphs and bullets inside the same card — keep it to bullets only

---

## Titled Lists (Named List Sections)

A **bold paragraph** immediately followed by a bullet list (no blank line between them) renders as a styled titled-list block. Use for named requirement or pitfall lists.

```markdown
**பொதுவான தவறுகள்:**
- AI பதிலை சரிபார்க்காமல் நம்புவது
- கட்டளையில் சூழல் (context) கொடுக்காமல் விடுவது
- ஒரே நேரத்தில் பல கேள்விகள் கேட்பது

**தேவையான கருவிகள்:**
- ChatGPT (chat.openai.com) அல்லது Claude (claude.ai) கணக்கு
- தமிழ் keyboard (Google Indic அல்லது Keyman)
```

**Rules:**
- **Bold text** and bullet list must be adjacent — no blank line between them
- Handled by `titledListHandling` in the bookbuilder config
- Use for: **பொதுவான தவறுகள்:**, **தேவையான கருவிகள்:**, **நினைவில் கொள்ளவும்:**, **அடுத்த படிகள்:**

---

## Collapsible Sections (Quiz Answers)

Use `<details>/<summary>` for knowledge check answers and exercises. The bookbuilder handles these via `detailsTagHandling`.

```markdown
**கேள்வி:** Prompt Engineering என்றால் என்ன?

<details>
<summary>விடை பார்க்க</summary>

AI மாதிரிகளிடம் சரியான பதில்களை பெறுவதற்காக கட்டளைகளை
திட்டமிட்டு வடிவமைக்கும் கலை.

</details>
```

**Rules:**
- `<summary>` text should be Tamil: `விடை பார்க்க` or `விடைகள் பார்க்க`
- Always include a blank line before the closing `</details>`
- In static PDF/epub output, the bookbuilder renders the summary and content visibly (no collapse)

---

## Knowledge Check Section

End every learning chapter with a **அறிவு சோதனை** section using a mix of question types:

```markdown
## 🧠 அறிவு சோதனை

1. **பல தேர்வு:** APE கட்டமைப்பில் "P" என்பது எதைக் குறிக்கிறது?
   - [ ] Pattern
   - [ ] Purpose
   - [ ] Prompt

2. **சரி/தவறு:** `[!PROMPT]` block-ல் bold மற்றும் bullet list பயன்படுத்தலாம்.
   - [ ] சரி
   - [ ] தவறு

3. **நிரப்புக:** Plain text prompt-க்கு `________` fenced block பயன்படுத்தவும்.

<details>
<summary>விடைகள் பார்க்க</summary>

1. **Purpose (நோக்கம்)** — APE = Action · Purpose · Expectation
2. **சரி** — admonitions fully support nested Markdown
3. **` ```prompt `**

</details>
```

---

## Chapter Summary Table

End every chapter with a two-column summary table followed by a **பொதுவான தவறுகள்** titled list:

```markdown
## 📋 அத்தியாய சுருக்கம்

| முக்கிய கருத்துகள்               | முக்கிய நினைவுகள்                     |
|:---------------------------------|:---------------------------------------|
| `[!PROMPT]` — வடிவமைக்கப்பட்ட கட்டளை | Bold/list உள்ளே இருந்தால் `[!PROMPT]` |
| `` ```prompt `` — plain text கட்டளை | உள்ளடக்கத்திற்கு ஏற்ற pattern தேர்வு |
| Blockquote List — key-point card | Bold தலைப்பு + bullets = styled card  |

**பொதுவான தவறுகள்:**
- plain text prompt-க்கு `[!PROMPT]` பயன்படுத்துவது
- admonition-க்கு முன்பும் பின்பும் blank line விடாதது
- ஒரு file-ல் ஒன்றுக்கு மேல் H1 பயன்படுத்துவது
```

---

## Tables

Use standard GFM pipe tables. Always include a header row and alignment row.

**Column alignment conventions:**
- `:---` — left-align (text columns, descriptions)
- `:---:` — centre-align (status icons, short codes)
- `---:` — right-align (numbers, amounts)

```markdown
| கட்டமைப்பு | நோக்கம்         | எடுத்துக்காட்டு |
|:-----------|:----------------|:----------------|
| APE        | எளிய கோரிக்கை  | கட்டுரை எழுது  |
| RACE       | சூழல் தேவை     | மருத்துவ ஆலோசனை |
```

**Rules:**
- Keep table font size in mind — tables use `8.5pt` (smaller than body)
- Limit to 3–4 columns on 6in × 9in pages; avoid very wide tables
- Prefer column-aligned pipes for source readability

---

## Images

```markdown
![8-அடுக்கு Taxonomy radial diagram](../images/diagrams/taxonomy-radial.png)
```

**Rules:**
- Alt text should be descriptive Tamil — screen readers and PDF accessibility benefit from this
- Keep images in `book/images/` or `book/images/diagrams/` relative to the project root
- Use relative paths from the project root (not the file location)
- Bookbuilder auto-converts to JPEG at 75% quality, max 800px wide — keep source images ≤ 1200px
- Mermaid diagrams: source in `book/images/diagrams/*.mmd`, rendered to `*.png` via `mmdc -w 800 -b white --theme neutral`

---

## Headings

| நிலை | பயன்பாடு | குறிப்புகள் |
|------|----------|------------|
| `#` H1 | File/collection title only | One per file |
| `##` H2 | Major sections (TOC, main groups) | e.g. `## 📑 Prompts` |
| `###` H3 | Individual prompt topics | e.g. `### 1. பயிர் பரிந்துரை` |
| `####` H4 | Sub-sections within a prompt | e.g. `#### வடிவம்` — use sparingly |

**Rules:**
- H1 font is 13pt — keep H1 titles short enough to fit 1–2 lines on a 6in page
- Use emoji prefixes on H1 and major H2 section headings for visual identity
- Do not skip heading levels (no H1 → H3 without H2)

---

## Keyboard Shortcuts

Use `<kbd>` tags for keyboard keys. They render with a styled key-cap appearance in PDF.

```markdown
<kbd>Cmd</kbd>+<kbd>S</kbd> to save (macOS) or <kbd>Ctrl</kbd>+<kbd>S</kbd> on Windows.
```

In a table:

```markdown
| செயல்       | macOS                            | Windows/Linux                    |
|:-----------|:---------------------------------|:---------------------------------|
| சேமி       | <kbd>Cmd</kbd>+<kbd>S</kbd>      | <kbd>Ctrl</kbd>+<kbd>S</kbd>     |
| செயல் மறு  | <kbd>Cmd</kbd>+<kbd>Z</kbd>      | <kbd>Ctrl</kbd>+<kbd>Z</kbd>     |
```

---

## Bilingual Labels

> [!IMPORTANT]
> This project uses **Tamil-first** labelling. The generic authoring guide's "always use Tamil (English)" rule does NOT apply here. Follow these project-specific rules instead.

**Common Tamil words — Tamil only, no English parenthetical:**

These words are clear to any Tamil reader and do not need translation:

```markdown
## உள்ளடக்க அட்டவணை          ✅   (NOT: உள்ளடக்க அட்டவணை (Table of Contents))
**பயன்பாடு:**                 ✅   (NOT: **பயன்பாடு (Usage):**)
### YouTube வீடியோ ஸ்கிரிப்ட் ✅   (NOT: YouTube Video Script (YouTube வீடியோ ஸ்கிரிப்ட்))
```

Common words that stand alone: `கட்டுரை சுருக்கம்`, `நீங்களும் முயற்சிக்கவும்`, `உள்ளடக்க அட்டவணை`, `அறிவு சோதனை`, `கற்றல் நோக்கங்கள்`, `பொதுவான தவறுகள்`, `பயன்பாடு`, `நேரம்`, `விடை`, `கேள்வி`, `சுருக்கம்`

**Domain-specific technical terms — keep English in parentheses:**

These are terms Tamil readers may not recognise from Tamil alone:

```markdown
SOAP வடிவம் (Subjective, Objective, Assessment, Plan)
இயந்திரக் கற்றல் (Machine Learning)
பெரிய மொழி மாதிரி (LLM)
CBT (Cognitive Behavioural Therapy)
```

**`[!NOTE]` metadata keys — always bilingual (template design requirement):**

```markdown
> **துறை (Domain):** சுகாதாரம்
> **தரநிலை (Standard):** ...
> **பாதுகாப்பு (Safety):** L8
> **வகை (Type):** ...
> **பயனர்கள் (Audience):** ...
```

These are kept bilingual because they are shared template keys used across multiple languages in the standard.

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
> Content

**பயன்பாடு:**

---

### 4. Next Topic
```

---

## Compatibility Matrix

| Element | GitHub | PDF | epub | குறிப்புகள் |
|---------|:------:|:---:|:----:|------------|
| `[!NOTE/TIP/WARNING/IMPORTANT/CAUTION]` | ✅ | ✅ | ✅ | Via `admonitionHandling` |
| `[!PROMPT]` | ⚠️ | ✅ | ✅ | Renders as plain blockquote on GitHub |
| `` ```prompt `` | ⚠️ | ✅ | ✅ | Renders as code block on GitHub |
| `<details>` | ✅ | ✅ | ✅ | PDF/epub: static via `detailsTagHandling` |
| Blockquote List (`> **Bold**` + bullets) | ✅ | ✅ | ✅ | Via `blockquoteListHandling` |
| Titled List (`**Bold:**` + bullets) | ✅ | ✅ | ✅ | Via `titledListHandling` |
| `<kbd>` tags | ✅ | ✅ | ✅ | Key-cap styled rendering |
| Pipe tables | ✅ | ✅ | ✅ | |
| Images (PNG/JPEG) | ✅ | ✅ | ✅ | Auto-converted to JPEG 75%, max 800px |
| Bare ` ``` ` | ✅ | ⚠️ | ⚠️ | No special styling in bookbuilder |
| Tamil Unicode | ✅ | ✅ | ✅ | Requires Noto Sans Tamil in font stack |
