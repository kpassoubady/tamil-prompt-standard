# Tamil Prompt Standard — Claude Code Instructions

# தமிழ் AI கட்டளை தரநிலை — Claude வழிகாட்டுதல்கள்

This repository maintains a standardized framework for creating high-quality Tamil prompts for AI systems, published as a book via a custom bookbuilder.

---

## 6 Critical Priority Rules

These rules override all other guidance. Check them first before making any change.

### 1. Book Config Integrity

`configs/tamil-prompt-engineering-book.json` is the **single source of truth** for the full book.
`configs/tamil-prompt-engineering-book-2-chaps.json` is the testing/preview config.

- **Never reorder, rename, or remove** entries from either config without explicit instruction
- When adding a new prompt collection, add it to **both** configs in the correct section
- Full rules: see [.agent/rules/book-order-update.md](.agent/rules/book-order-update.md)

### 2. Prompt Block Protection

Two types of prompt blocks exist — **never accidentally alter them**:

- `> [!PROMPT]` admonition blocks — contain formatted markdown (bold, lists, tables)
- `` ```prompt `` fenced blocks — contain plain-text prompts

Never: convert `[!PROMPT]` to a regular `> blockquote`, change `` ```prompt `` to a bare ` ``` `, or strip the `[!PROMPT]` type label.
Full rules: see [.agent/rules/content-protection.md](.agent/rules/content-protection.md)

### 3. Safety Layer Is Non-Negotiable

Every prompt **MUST** carry an L8 Safety disclaimer. Healthcare, legal, and finance prompts require the specific Tamil-language disclaimers. Never remove or weaken a safety block.
Full rules: see [.agent/rules/safety.md](.agent/rules/safety.md)

### 4. Markdown Formatting for Multi-Format Rendering

The bookbuilder renders markdown to PDF and epub. Use the correct constructs:

- Admonitions: `> [!NOTE]`, `> [!TIP]`, `> [!WARNING]`, `> [!PROMPT]`
- Collapsible answers: `<details><summary>---</summary>---</details>`
- Plain fences with a language tag (never bare ` ``` ` — use `` ```prompt ``, `` ```bash ``, `` ```markdown ``, etc.)

Full rules: see [.agent/rules/markdown-formatting.md](.agent/rules/markdown-formatting.md)

### 5. Prompt Collection Structure Standards

Each prompt collection file **must** contain these sections in order:

1. **Header** — title (H1) + `[!NOTE]` metadata block (domain, standard, safety layer)
2. **Introduction** — 1–2 sentences describing the collection's audience and purpose
3. **Table of Contents** — `##` section with links to each prompt group
4. **Prompts** — grouped under `###` headings, each with a `[!PROMPT]` or `` ```prompt `` block
5. **Usage Note / Safety Footer** — domain-appropriate disclaimer

### 6. Changelog Maintenance

Update [CHANGELOG.md](CHANGELOG.md) for every significant content change:

- New prompt collections added
- Prompt blocks converted or restructured
- Config changes that affect book output
- Rule or workflow additions

Format: `## [Unreleased]` → `### Added / Changed / Fixed`

---

## Project Overview

**Purpose:** Community-driven standard for Tamil prompt engineering ensuring:

- Consistency across all Tamil prompts
- Cultural and linguistic appropriateness
- Safety and ethical guidelines
- Accessibility for all skill levels

**Output:** Published as PDF and epub via a custom bookbuilder configured in `/configs/`.

**Key Documents:**

- [TAXONOMY.md](TAXONOMY.md) — 8-layer taxonomy framework specification
- [CONTRIBUTING.md](CONTRIBUTING.md) — Contribution guidelines
- [README.md](README.md) — Project introduction
- [CHANGELOG.md](CHANGELOG.md) — Version history

---

## Core Framework — 8-Layer Taxonomy

All prompts **MUST** follow the **8-Layer Taxonomy**:

| Layer | Component | Examples |
|-------|-----------|---------|
| L1 | **Role** (பாத்திரம்) | Doctor, Teacher, Student, Farmer, Developer |
| L2 | **Domain** (துறை) | Healthcare, Education, Agriculture, Technology, Law |
| L3 | **Skill Level** (திறன் நிலை) | Beginner, Intermediate, Advanced, Expert, G6–G12 |
| L4 | **Intent** (நோக்கம்) | EXPL, SUMM, DRAF, ANAL, TRNS, CREA, PLAN |
| L5 | **Tone** (தொனி) | Formal, Casual, Academic, Poetic, Pure Tamil, Tanglish |
| L6 | **Format** (வடிவம்) | Essay, Table, Bullet Points, Step-by-Step, Code |
| L7 | **Constraints** (கட்டுப்பாடுகள்) | Word limits, language rules, style requirements |
| L8 | **Safety** (பாதுகாப்பு) | Disclaimers, ethical guidelines, bias prevention |

**Detailed specifications:** [.agent/rules/taxonomy.md](.agent/rules/taxonomy.md)

---

## File Naming Convention

```
ROLE-DOMAIN-SKILL-INTENT-TONE.md          (individual prompt)
collection-{role}.md                       (grouped collection ~20 prompts)
```

**Examples:**
- `student-edu-g6-expl-simple.md` — Grade 6 student explanation in simple Tamil
- `doctor-health-exp-draf-formal.md` — Doctor drafting patient notes formally
- `collection-doctors.md` — Full collection for medical practitioners

**Full specification:** [.agent/rules/file-naming.md](.agent/rules/file-naming.md)

---

## Safety Requirements (Non-Negotiable)

### Healthcare

```
இவை தகவல் மற்றும் கல்வி நோக்கிற்கானவை மட்டுமே.
மருத்துவ சிகிச்சைக்காக தகுதிவாய்ந்த மருத்துவரை அணுகவும்.
```

### Legal

```
இது சட்ட ஆலோசனை அல்ல. சட்டங்கள் இடத்திற்கு இடம் மாறுபடும்.
சட்ட ரீதியான நடவடிக்கைகளுக்கு வழக்கறிஞரை அணுகவும்.
```

### Finance

```
இது நிதி ஆலோசனை அல்ல. உங்கள் சொந்த ஆராய்ச்சியின்
அடிப்படையில் முடிவெடுக்கவும்.
```

**Full safety guidelines:** [.agent/rules/safety.md](.agent/rules/safety.md)

---

## Build System

### Configs

| File | Purpose |
|------|---------|
| `configs/tamil-prompt-engineering-book.json` | Full book — all chapters |
| `configs/tamil-prompt-engineering-book-2-chaps.json` | 2-chapter preview for testing |

Both configs use identical `styleSettings`, `contentProcessing`, and `pageSettings`.
Changes to visual style or handlers should be made in **both**.

### Content Processing Handlers

| Handler | Trigger | Purpose |
|---------|---------|---------|
| `promptHandling` | `` ```prompt `` | Plain-text prompt blocks |
| `admonitionHandling` + `customTypes.PROMPT` | `> [!PROMPT]` | Formatted prompt blocks |
| `admonitionHandling` | `> [!NOTE/TIP/WARNING]` | Standard callout boxes |
| `detailsTagHandling` | `<details>` | Collapsible answer sections |
| `blockquoteListHandling` | `> - item` | Blockquote-wrapped lists |

### Page Size & Style

- Page: 6in × 9in (trade paperback)
- Body: 9.5pt, line-height 1.5
- H1: 13pt — H2: 11.5pt — H3: 10.5pt — H4: 10pt
- Code/table: 8.5pt
- Header: `{title}` left | `{page} of {pages}` right
- Footer: `{date}` left | `Kangs | Kavin School` right

---

## Content Structure Standards

### Prompt Collection File

```markdown
# {emoji} {Role Name in Tamil} ({Role in English})

> [!NOTE]
> **துறை (Domain):** {domain} (`{code}`)
> **தரநிலை (Standard):** [தமிழ் AI கட்டளை தரநிலை](.agent/rules/taxonomy.md)
> **பாதுகாப்பு (Safety):** L8 அடுக்கு — {domain-specific safety note}

{1–2 sentence intro describing the audience and scope of this collection.}

---

## 📑 {Role} கட்டளைகள் ({Role} Prompts)

### 1. {Prompt Topic}

> [!PROMPT]
> {prompt content with {placeholders}}

**பயன்பாடு:** {brief description of when/how to use this prompt}

---

> [!WARNING]
> {Domain-appropriate safety disclaimer in Tamil}
```

### Knowledge Check (for educational sections)

Use `<details>` for quiz/knowledge check answers:

```markdown
**கேள்வி (Question):** {question text}

<details>
<summary>விடை பார்க்க (See Answer)</summary>

{answer content}

</details>
```

---

## Common Tasks

### Adding a New Prompt Collection

1. Read an existing collection in the same domain as a reference
2. Create file at `prompts/{domain}/collection-{role}.md`
3. Follow the Content Structure Standards above
4. Add L8 safety footer appropriate to the domain
5. Add the file path to **both** book configs in the correct section
   — see [.agent/rules/book-order-update.md](.agent/rules/book-order-update.md)
6. Test all `[!PROMPT]` and `` ```prompt `` blocks render correctly
7. Update [CHANGELOG.md](CHANGELOG.md)

### Adding a Prompt to an Existing Collection

1. Read the collection file first to understand its style and tone
2. Follow existing prompt numbering (next sequential emoji number)
3. Use `> [!PROMPT]` if the prompt contains formatted markdown (lists, bold, tables)
4. Use `` ```prompt `` if the prompt is plain text only
5. Include `**பயன்பாடு:**` note after each prompt
6. Ensure placeholders use `{curly brace}` format consistently

### Converting / Refactoring Prompts

- `> **கட்டளை:**` blockquotes → `> [!PROMPT]` (strip opening/closing quotes from content)
- Bare `` ``` `` opening fences → `` ```prompt `` (closing fences stay as ` ``` `)
- Never do these in reverse

### Reviewing a Prompt

Follow [.agent/workflows/review-prompt.md](.agent/workflows/review-prompt.md).
Apply the scoring rubric from [.agent/rules/quality-rubric.md](.agent/rules/quality-rubric.md).

---

## Instructions for Claude Code

### General

1. **Always read the file first** before editing — never modify unseen code
2. **Reference the taxonomy** — all prompts must follow the 8-layer structure
3. **Safety first** — never skip L8; healthcare/legal/finance need Tamil disclaimers
4. **Respect Tamil linguistic nuances:**
   - Formal vs Casual register differs significantly
   - Pure Tamil (தனித்தமிழ்) vs Tanglish (தமிங்கிலம்) affects audience reach
5. **Bilingual labels — use selectively, not by default:**
   - **Common Tamil words** that any Tamil reader understands need NO English translation in parentheses. Examples of words that stand alone:
     - Section headings: கட்டுரை சுருக்கம், நீங்களும் முயற்சிக்கவும், குழு விவாதம், உள்ளடக்க அட்டவணை, அறிவு சோதனை, கற்றல் நோக்கங்கள், பொதுவான தவறுகள், காட்சி, வெற்றி அளவுகோல்
     - Body labels: பயன்பாடு, நேரம், விடை, கேள்வி, நினைவில் கொள்ளவும், முக்கிய கருத்துகள்
   - **Domain-specific technical terms** that Tamil readers may not recognise DO need English in parentheses:
     - Medical: SOAP வடிவம் (Subjective, Objective, Assessment, Plan), SBAR, CBT
     - Tech/AI: இயந்திரக் கற்றல் (Machine Learning), பெரிய மொழி மாதிரி (LLM), Temperature
     - Legal / Finance jargon, clinical acronyms, scientific terminology
   - **Structured metadata fields** inside `[!NOTE]` blocks keep `{Tamil} ({English})` as they are template keys shared across languages: `**துறை (Domain):**`, `**பாதுகாப்பு (Safety):**`
6. **Cultural sensitivity** — avoid caste, religious, or political bias
7. **Score prompts** using [.agent/rules/quality-rubric.md](.agent/rules/quality-rubric.md)

### When editing prompt files

- Check Critical Priority Rule 2 (Prompt Block Protection) before any refactoring
- Check Critical Priority Rule 3 (Safety) before removing any disclaimer text
- Preserve all `{placeholder}` patterns — they are intentional

### When editing configs

- Apply changes to **both** config files unless told otherwise
- Check Critical Priority Rule 1 (Book Config Integrity)
- Validate JSON is valid after editing

### Project structure

```
/prompts/           - All prompt files organised by domain
  /health/          - Healthcare prompts
  /edu/             - Education prompts
  /agriculture/     - Agriculture prompts
  /tech/            - Technology prompts
  /law/             - Law & governance prompts
  /biz/             - Business prompts
  /lit/             - Literature & language prompts
  /daily/           - Daily life prompts
  /employment/      - Employment prompts
/configs/           - Book builder config files
/resources/         - Supporting materials and specs
/temp/              - Working notes (not committed)
/.agent/rules/      - Core framework rules
/.agent/workflows/  - Process guidelines
```

---

## Git Workflow

- Main branch: `master`
- Feature work: `feature/short-description` branches → PR to master
- Commit messages: Conventional Commits style (`feat:`, `fix:`, `docs:`, `chore:`)
- Test prompts with at least one LLM before submitting a PR
- Full workflow: [.agent/workflows/push-feature-pr.md](.agent/workflows/push-feature-pr.md)

---

**For questions or clarifications:**

- [CONTRIBUTING.md](CONTRIBUTING.md) — contribution process
- [TAXONOMY.md](TAXONOMY.md) — framework specifications
- `.agent/rules/` — detailed rule sets
