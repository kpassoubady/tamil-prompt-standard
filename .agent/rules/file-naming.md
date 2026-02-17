# File Naming Convention
# கோப்பு பெயரிடும் முறை

To keep the repository organized, all prompt files must follow this strict naming standard.
களஞ்சியத்தை சீராக பராமரிக்க, அனைத்து கட்டளை கோப்புகளும் இந்த பெயரிடும் முறையை கண்டிப்பாக பின்பற்ற வேண்டும்.

## Standard Format (பொதுவான வடிவம்)

```
ROLE-DOMAIN-SKILL-INTENT-TONE.md
```

All elements should be in **kebab-case** (lowercase with hyphens).
அனைத்து சொற்களும் சிறிய எழுத்துக்களில் (lowercase) மற்றும் சிறுகோடுகளுடன் (hyphens) இருக்க வேண்டும்.

---

## Component Breakdown (கூறு விளக்கம்)

### 1. ROLE (பாத்திரம்)
*   `doctor`
*   `teacher`
*   `student`
*   `farmer`
*   `dev` (Developer)

### 2. DOMAIN (துறை)
*   `health` (Healthcare)
*   `edu` (Education)
*   `agri` (Agriculture)
*   `tech` (Technology)
*   `law`
*   `biz` (Business)

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

Currently, all prompts are located in standard directories. In the future, they may be grouped by **Domain**.
தற்போது, அனைத்தும் பொதுவான கோப்புறைகளில் உள்ளன. எதிர்காலத்தில் அவை **துறை (Domain)** வாரியாக பிரிக்கப்படலாம்.

```
/prompts/
  ├── health/
  │     └── doctor-health-exp-draf-formal.md
  ├── edu/
  │     └── student-edu-g6-expl-simple.md
  └── ...
```
