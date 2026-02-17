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

Use the blank template:

```markdown
### Prompt ID: {AUTO-GENERATED}

**Role:** ...
**Domain:** ...
**Intent:** ...

**Instruction:**
[Write clear instructions in Tamil/English]

**Constraints:**
[Add constraints]
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
