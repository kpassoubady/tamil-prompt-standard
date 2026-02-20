# Workflow: Create New Prompt
# பணிமுறை: புதிய கட்டளையை உருவாக்குதல்

Follow this checklist to add a new prompt to the library.
புதிய கட்டளையை சேர்க்க, இந்த சரிபார்ப்பு பட்டியலை பின்பற்றவும்.

---

## Step 1: Define the Objective (நோக்கத்தை வரையறு)

- [ ] **Who** is the user? (Role: e.g., Doctor, Student)
- [ ] **What** is the topic? (Domain: e.g., Health, Math)
- [ ] **Why** do they need it? (Intent: e.g., Explain, Draft)

## Step 2: Consult the Taxonomy (கட்டமைப்பை பார்)

Reference: [../rules/taxonomy.md](../rules/taxonomy.md)

- [ ] Select **Role** (L1)
- [ ] Select **Domain** (L2)
- [ ] Select **Skill Level** (L3)
- [ ] Select **Intent Code** (L4) - *Use standard codes like EXPL, DRAF*
- [ ] Select **Tone** (L5) - *Critical for Tamil context*

## Step 3: Draft the Prompt (வரைவு செய்தல்)

Use `> [!PROMPT]` for prompts with formatted content (lists, bold, tables); use `` ```prompt `` for plain-text prompts.

```markdown
### {N}. {Prompt Topic in Tamil}

> [!PROMPT]
> நீங்கள் ஒரு {role}. {clear instruction in Tamil with {placeholders}}.

**பயன்பாடு:** {brief description of when/how to use this prompt}
```

## Step 4: Apply Safety Layer (பாதுகாப்பு சோதனை)

Reference: [../rules/safety.md](../rules/safety.md)

- [ ] Is this medical/legal? Add disclaimer.
- [ ] Is the tone appropriate?

## Step 5: Name and Save (பெயரிட்டு சேமி)

Reference: [../rules/file-naming.md](../rules/file-naming.md)

- [ ] Construct filename: `ROLE-DOMAIN-SKILL-INTENT-TONE.md`
- [ ] Save in appropriate folder (e.g., `prompts/health/`)

## Step 6: Verify (சரிபார்)

- [ ] Read it once as a human. Does it sound natural in Tamil?
- [ ] Test it in an LLM (ChatGPT/Claude).
- [ ] All `[!PROMPT]` blocks and `` ```prompt `` blocks render correctly.
- [ ] Safety footer is present and appropriate for the domain.

## Step 7: Sync Configs and README (கட்டமைப்பை இணக்கப்படுத்து)

Reference: [book-order-update.md](../rules/book-order-update.md)

- [ ] Add file path to **`configs/tamil-prompt-engineering-book-full-book.json`** in the correct Part section.
- [ ] Add a row to **`README.md`** in the correct domain table (increment the `#` counter).
- [ ] Verify both JSON files remain valid.

> The `show-case.json` uses samplers only — do **not** add individual collection files there.

## Step 8: Update Changelog (மாற்ற பதிவை புதுப்பி)

- [ ] Add an entry to `CHANGELOG.md` under `## [Unreleased]` → `### Added`.
