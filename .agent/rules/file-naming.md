# File Naming Convention
# கோப்பு பெயரிடும் முறை

To keep the repository organized, all prompt files must follow this strict naming standard.
களஞ்சியத்தை சீராக பராமரிக்க, அனைத்து கட்டளை கோப்புகளும் இந்த பெயரிடும் முறையை கண்டிப்பாக பின்பற்ற வேண்டும்.

## File Types (கோப்பு வகைகள்)

This repository uses two naming patterns depending on the file type:

### 1. Collection Files (தொகுப்புக் கோப்புகள்) — Primary pattern

Most prompt files in this repository are **collections** that group ~20 prompts for a single role. These follow:

```
collection-{role}.md
```

**Examples:**

| File | Description |
| :--- | :--- |
| `collection-doctors.md` | 20 prompts for doctors |
| `collection-farmers.md` | 20 prompts for farmers |
| `collection-primary-students.md` | 20 prompts for primary school students |
| `collection-poets.md` | 20 prompts for poets |

**Rules:**
- Prefix is always `collection-`
- Role name is in **kebab-case** (lowercase with hyphens)
- Placed inside the appropriate `prompts/{domain}/` folder

### 2. Individual Prompt Files (தனிப்பட்ட கட்டளைக் கோப்புகள்)

For standalone single-prompt files, use the full taxonomy-based pattern:

```
ROLE-DOMAIN-SKILL-INTENT-TONE.md
```

All elements should be in **kebab-case** (lowercase with hyphens).
அனைத்து சொற்களும் சிறிய எழுத்துக்களில் (lowercase) மற்றும் சிறுகோடுகளுடன் (hyphens) இருக்க வேண்டும்.

---

## Component Breakdown — Individual Files (கூறு விளக்கம்)

### 1. ROLE (பாத்திரம்)
*   `doctor`
*   `teacher`
*   `student`
*   `farmer`
*   `dev` (Developer)

### 2. DOMAIN (துறை)
*   `health` (Healthcare)
*   `edu` (Education)
*   `agriculture` (Agriculture)
*   `tech` (Technology)
*   `law`
*   `biz` (Business)
*   `lit` (Literature)
*   `daily` (Daily Life)
*   `employment` (Employment & Career)

### 3. SKILL (திறன் நிலை)
*   `beg` (Beginner)
*   `int` (Intermediate)
*   `adv` (Advanced)
*   `exp` (Expert)
*   `g6` (Grade 6)
*   `ug` (Undergraduate)

### 4. INTENT (நோக்கம்)
Use the 4-letter standard codes from [taxonomy.md](taxonomy.md):
*   `expl` (Explain)
*   `summ` (Summarize)
*   `draf` (Draft)
*   `anal` (Analyze)
*   `crea` (Creative)
*   `trns` (Translate)

### 5. TONE (தொனி)
*   `formal`
*   `casual`
*   `simple`
*   `poet` (Poetic)

---

## Examples (எடுத்துக்காட்டுகள்)

| User Goal | File Name |
| :--- | :--- |
| **Grade 6 Student** asking for **Science Explanation** in **Simple Tamil** | `student-edu-g6-expl-simple.md` |
| **Doctor** writing a **Patient Node** in **Formal Tamil** | `doctor-health-exp-draf-formal.md` |
| **Farmer** needing **Crop Advice** in **Conversational Tamil** | `farmer-agri-beg-expl-casual.md` |
| **Developer** wanting **Code Explanation** in **Tech Tamil** | `dev-tech-int-expl-tech.md` |

---

## Folder Structure (கோப்புறை அமைப்பு)

All prompts are organized by **Domain** under the `/prompts/` directory.
அனைத்து கட்டளைகளும் `/prompts/` கோப்புறையில் **துறை (Domain)** வாரியாக பிரிக்கப்பட்டுள்ளன.

```
/prompts/
  ├── health/
  │     ├── README.md
  │     ├── collection-doctors.md
  │     ├── collection-nurses.md
  │     └── ---
  ├── edu/
  │     ├── README.md
  │     ├── collection-primary-students.md
  │     └── ---
  ├── law/
  ├── tech/
  ├── biz/
  ├── lit/
  ├── agriculture/
  ├── employment/
  └── daily/
```
