When a new prompt collection or sampler has been added, sync all three places that must stay in agreement: `configs/tamil-prompt-engineering-book-full-book.json`, `configs/tamil-prompt-engineering-book-show-case.json`, and `README.md`.

---

## What syncs where

| What was added | full-book.json | show-case.json | README.md |
|----------------|---------------|----------------|-----------|
| New collection file (`prompts/{domain}/collection-*.md`) | ✅ Add to the correct Part section | ❌ No change (uses samplers only) | ✅ Add a row to the domain table |
| New sampler (`book/samplers/{domain}-sampler.md`) | ❌ No change | ✅ Add to the correct Part section | ❌ No change |
| New domain (entire new folder) | ✅ New Part section + all collections | ✅ New Part section + sampler | ✅ New domain table |

---

## Steps

### 1. Identify what changed

Ask the user (or infer from context):
- What file was added? (`prompts/{domain}/collection-{role}.md` or `book/samplers/{domain}-sampler.md`)
- Which domain does it belong to?

### 2. Update `configs/tamil-prompt-engineering-book-full-book.json`

Find the correct Part section for the domain and append the new collection file path:

```json
{
  "section": "Part N: {Domain} Prompts",
  "files": [
    "prompts/{domain}/README.md",
    "prompts/{domain}/collection-existing.md",
    "prompts/{domain}/collection-new.md"    ← add here
  ]
}
```

**Domain → Part mapping:**

| Domain folder | Part section name |
|---|---|
| `health/` | Part II: Healthcare Prompts |
| `edu/` | Part III: Education Prompts |
| `agriculture/` | Part IV: Agriculture Prompts |
| `employment/` | Part V: Employment Prompts |
| `law/` | Part VI: Law & Governance Prompts |
| `daily/` | Part VII: Daily Life Prompts |
| `tech/` | Part VIII: Technology Prompts |
| `biz/` | Part IX: Business Prompts |
| `lit/` | Part X: Literature & Language Prompts |
| `social/` | Part XI: Social Media Prompts |

### 3. Update `README.md`

Find the domain table and add a new row:

```markdown
| {next #} | [collection-{role}.md](prompts/{domain}/collection-{role}.md) | {Audience in Tamil} ({English}) | {brief description} |
```

Increment the row number sequentially from the last entry in that domain table.

### 4. Verify both configs are valid JSON

```bash
node -e "JSON.parse(require('fs').readFileSync('configs/tamil-prompt-engineering-book-full-book.json','utf8')); console.log('full-book: valid')"
node -e "JSON.parse(require('fs').readFileSync('configs/tamil-prompt-engineering-book-show-case.json','utf8')); console.log('show-case: valid')"
```

### 5. Update `CHANGELOG.md`

Add an entry under `## [Unreleased]` → `### Added`:

```markdown
- Add `collection-{role}.md` to `prompts/{domain}/` — {brief description}
- Sync `full-book.json` and `README.md` for new collection
```

---

## Rules

- See [CLAUDE.md — Book Config Integrity](./../CLAUDE.md) (Critical Priority Rule 1)
- Never reorder existing entries — only append within the correct section
- The `quick-test.json` config is for testing only — update it only when explicitly asked
