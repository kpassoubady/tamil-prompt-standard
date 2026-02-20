# Content Protection Rules

## Purpose

Prevent accidental removal or corruption of critical content blocks during editing, refactoring, or conversion tasks.

---

## Protected Elements

### 1. `[!PROMPT]` Admonition Blocks

```markdown
> [!PROMPT]
> Prompt content here---
```

**Rules:**
- Never convert `[!PROMPT]` to a plain `> blockquote`
- Never remove the `[!PROMPT]` type label, leaving just `>`
- Never change `[!PROMPT]` to any other admonition type (`[!NOTE]`, `[!TIP]`, etc.)
- When merging or splitting collections, carry the full block intact

### 2. `` ```prompt `` Fenced Code Blocks

````markdown
```prompt
Plain text prompt content here---
```
````

**Rules:**
- Never change `` ```prompt `` to a bare ` ``` ` (bare fences get no special styling in the bookbuilder)
- Never change `` ```prompt `` to `` ```markdown `` or any other language tag
- Closing ` ``` ` fences must remain as bare ` ``` ` — do not tag them
- Preserve all `{placeholder}` patterns inside prompt blocks exactly as written

### 3. Safety Disclaimer Blocks (L8)

Every prompt collection ends with a safety footer. Example:

```markdown
> [!WARNING]
> இவை தகவல் மற்றும் கல்வி நோக்கிற்கானவை மட்டுமே.
> மருத்துவ சிகிச்சைக்காக தகுதிவாய்ந்த மருத்துவரை அணுகவும்.
```

**Rules:**
- Never remove safety disclaimer blocks, even during refactoring
- Never shorten or paraphrase Tamil disclaimer text
- If a collection is split into multiple files, the disclaimer must appear in each file
- Domain mapping: healthcare → medical disclaimer, law → legal disclaimer, finance → finance disclaimer

### 4. Metadata `[!NOTE]` Headers

Each collection file starts with:

```markdown
> [!NOTE]
> **துறை (Domain):** ---
> **தரநிலை (Standard):** ---
> **பாதுகாப்பு (Safety):** ---
```

**Rules:**
- Never remove this block
- Never convert it to a plain heading or table
- When creating a new collection, always include all three metadata fields

### 5. `{Placeholder}` Patterns

Prompt templates use `{curly brace placeholders}` for user-supplied variables:

```
{நோய் / மருத்துவ நிலை}
{domain name}
{UG Year 1-3 / PG / PhD}
```

**Rules:**
- Preserve placeholder text exactly — do not translate, paraphrase, or remove
- Do not convert `{placeholder}` to `[placeholder]` or `<placeholder>`
- When editing surrounding text, leave placeholders untouched

---

## Verification Checklist

Before committing any refactoring or conversion task, confirm:

- [ ] All `> [!PROMPT]` blocks are intact (count before and after matches)
- [ ] All `` ```prompt `` opening fences are still tagged (no bare ` ``` ` openings)
- [ ] All L8 safety disclaimers are present in each collection file
- [ ] All `[!NOTE]` metadata headers are present at the top of each collection file
- [ ] All `{placeholder}` patterns are unchanged
- [ ] No `[!PROMPT]` was accidentally converted to `[!NOTE]` or plain blockquote

---

## Common Dangerous Operations

| Operation | Risk | Safe Alternative |
|-----------|------|-----------------|
| "Clean up blockquotes" | Strips `[!PROMPT]` type | Only edit content inside `>` lines |
| "Remove duplicate blank lines" | May collapse `>` continuation lines | Use targeted line-by-line inspection |
| "Convert all code blocks" | Changes `` ```prompt `` language tag | Only convert blocks explicitly listed |
| "Remove labels/headings" | May remove metadata `[!NOTE]` block | Read file before editing |
| "Simplify markdown" | Strips admonition type markers | Never simplify admonitions |
