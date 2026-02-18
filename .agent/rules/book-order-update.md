# Book Order Update Rules

## Purpose

`configs/tamil-prompt-engineering-book.json` is the **single source of truth** for the book's chapter order and structure. `configs/tamil-prompt-engineering-book-2-chaps.json` is the preview/testing config. Both must be kept in sync for any structural changes.

---

## When to Update

Update **both** config files when:

- Adding a new prompt collection file to any domain
- Removing or archiving a prompt collection
- Renaming a prompt collection file
- Adding a new domain section
- Adding or reordering appendix entries
- Moving files between sections

---

## Config File Structure

```json
{
  "chapters": [
    {
      "section": "Section Name",
      "files": [
        "relative/path/to/file.md"
      ]
    }
  ]
}
```

- `section` — display name shown in the PDF/epub TOC
- `files` — ordered list of relative paths from the repo root
- Order within `files` matters — files render in sequence

---

## Section Mapping

| Section | Domain Folder | Notes |
|---------|--------------|-------|
| Introduction | root | `README.md` only |
| Part I: Framework Foundations | root | Taxonomy, handbook, cheatsheet, framework |
| Part II: Healthcare Prompts | `prompts/health/` | README first, then collections |
| Part III: Education Prompts | `prompts/edu/` | README first, then collections |
| Part IV: Agriculture Prompts | `prompts/agriculture/` | README first, then collections |
| Part V: Employment Prompts | `prompts/employment/` | README first, then collections |
| Part VI: Law & Governance Prompts | `prompts/law/` | README first, then collections |
| Part VII: Daily Life Prompts | `prompts/daily/` | README first, then collections |
| Part VIII: Technology Prompts | `prompts/tech/` | README first, then collections |
| Part IX: Business Prompts | `prompts/biz/` | README first, then collections |
| Part X: Literature & Language Prompts | `prompts/lit/` | README first, then collections |
| Appendix A: Framework Rules | `.agent/rules/` | taxonomy, safety, file-naming, quality-rubric |
| Appendix B: Workflows | `.agent/workflows/` | create-new-prompt, review-prompt |

---

## Core Rules

1. **README.md always first** — every domain section starts with its `README.md`
2. **Relative paths from repo root** — e.g. `prompts/health/collection-doctors.md`
3. **No absolute paths** — never use `/Users/...` or `~/...`
4. **Both configs must be updated** — never update only one
5. **2-chaps config** — only update its `chapters` array if the change affects the Introduction or Part I/II sections it covers; leave other sections unchanged
6. **Verify files exist** — confirm the file path exists on disk before adding to config
7. **Section names are English only** — Tamil was removed to fix bookbuilder rendering issues

---

## Adding a New Collection File

### Step 1 — Identify the correct section

Find the matching `"section"` entry in `tamil-prompt-engineering-book.json` for the domain.

### Step 2 — Add to full book config

```json
{
  "section": "Part II: Healthcare Prompts",
  "files": [
    "prompts/health/README.md",
    "prompts/health/collection-doctors.md",
    "prompts/health/collection-nurses.md",
    "prompts/health/collection-new-role.md"   ← add here
  ]
}
```

### Step 3 — Add to 2-chaps config (if applicable)

Only add to `tamil-prompt-engineering-book-2-chaps.json` if the file belongs to a section that config already includes (Introduction, Part I, Part II, or Part III).

### Step 4 — Verify

```bash
# Confirm file exists
ls prompts/{domain}/collection-{role}.md

# Validate JSON
python3 -c "import json; json.load(open('configs/tamil-prompt-engineering-book.json'))"
python3 -c "import json; json.load(open('configs/tamil-prompt-engineering-book-2-chaps.json'))"
```

---

## Adding a New Domain Section

If a completely new domain is introduced (e.g. `prompts/science/`):

1. Create the domain folder: `prompts/science/`
2. Create `prompts/science/README.md` with the standard metadata header
3. Add a new section entry in **both** configs between the appropriate Parts
4. Update the section numbering in section names if needed
5. Update [CHANGELOG.md](../../CHANGELOG.md)

---

## Pre-Completion Checklist

- [ ] File added to correct section in `tamil-prompt-engineering-book.json`
- [ ] Same change applied to `tamil-prompt-engineering-book-2-chaps.json` (if applicable)
- [ ] File path is relative from repo root
- [ ] File actually exists on disk
- [ ] JSON is valid (no trailing commas, matched braces)
- [ ] README.md remains first in its domain section
- [ ] CHANGELOG.md updated
