# Tamil Prompt Taxonomy Framework (Bilingual)
# தமிழ் AI கட்டளை வடிவமைப்பு கட்டமைப்பு

> [!IMPORTANT]
> All prompts in this repository MUST follow this 8-layer taxonomy structure.
> இந்த களஞ்சியத்தில் உள்ள அனைத்து கட்டளைகளும் இந்த 8-அடுக்கு கட்டமைப்பை பின்பற்ற வேண்டும்.

## 1. Core Structural Model (அடிப்படை கட்டமைப்பு)

This framework ensures consistency, quality, and safety across all Tamil prompts.
இந்த கட்டமைப்பு அனைத்து தமிழ் கட்டளைகளிலும் சீரான தன்மை, தரம் மற்றும் பாதுகாப்பை உறுதி செய்கிறது.

| Level | Component | Tamil Explanation | Example |
| :--- | :--- | :--- | :--- |
| **L1** | **Role** | பாத்திரம் (யார்?) | Doctor, Teacher, Farmer |
| **L2** | **Domain** | துறை (எது?) | Healthcare, Education, Agriculture |
| **L3** | **Skill Level** | திறன் நிலை (யாருக்காக?) | Beginner, Expert, Grade 6 |
| **L4** | **Intent** | நோக்கம் (என்ன செய்ய?) | Explain, Draft, Analyze |
| **L5** | **Tone** | தொனி (எப்படி?) | Formal, Friendly, Poetic |
| **L6** | **Format** | வடிவம் (வெளியீடு) | Essay, Table, Code |
| **L7** | **Constraints** | கட்டுப்பாடுகள் | Word limit, No English |
| **L8** | **Safety** | பாதுகாப்பு (கவசம்) | No medical advice, Neutral |

---

## 2. Layer Definitions (அடுக்கு விளக்கங்கள்)

### Level 1: Role (பாத்திரம்)
**Definition:** The persona the AI should adopt.
**விளக்கம்:** AI ஏற்க வேண்டிய பாத்திரம். இது பதிலின் அதிகாரத்தன்மையை (authority) தீர்மானிக்கிறது.

*   `Doctor` (மருத்துவர்)
*   `Teacher` (ஆசிரியர்)
*   `Farmer` (விவசாயி)
*   `Developer` (மென்பொருள் பொறியாளர்)
*   `Poet` (கவிஞர்)

### Level 2: Domain (துறை)
**Definition:** The subject matter context.
**விளக்கம்:** கேள்வி அல்லது பணி சார்ந்த துறை.

*   `Technology` (தொழில்நுட்பம்)
*   `Healthcare` (சுகாதாரம்)
*   `Agriculture` (விவசாயம்)
*   `Law` (சட்டம்)
*   `Literature` (இலக்கியம்)

### Level 3: Skill Level (திறன் நிலை)
**Definition:** The complexity level of the response.
**விளக்கம்:** பதிலை யாருக்காக உருவாக்குகிறோம்? அவர்களின் புரிதல் திறனுக்கேற்ப பதில் அமைய வேண்டும்.

*   `Beginner` (தொடக்க நிலை / பாமரர்)
*   `Intermediate` (இடைநிலை)
*   `Advanced` (மேம்பட்ட நிலை)
*   `Expert` (நிபுணர் நிலை)
*   `Grade 1-5` (தொடக்கப் பள்ளி)
*   `Grade 6-12` (மேல்நிலைப் பள்ளி)

### Level 4: Intent (நோக்கம்)
**Definition:** What the user wants the AI to do. (Standard Codes)
**விளக்கம்:** பயனர் எதிர்பார்ப்பது என்ன? இதற்கான தரப்படுத்தப்பட்ட குறியீடுகள் (Standard Codes):

| Code | Intent | Tamil Meaning |
| :--- | :--- | :--- |
| **EXPL** | Explain | விளக்குக (Concept explanation) |
| **SUMM** | Summarize | சுருக்குக (Summary) |
| **DRAF** | Draft | உருவாக்குக (Email, Letter, Code) |
| **ANAL** | Analyze | பகுப்பாய்வு செய்க (Review, Audit) |
| **TRNS** | Translate | மொழிபெயர்க்க (English ↔ Tamil) |
| **CREA** | Creative | படைப்பாக்கம் (Story, Poem) |
| **PLAN** | Plan | திட்டம் (Study plan, Business plan) |

### Level 5: Tone & Register (தொனி & நடை)
**Definition:** The linguistic style of the Tamil output.
**விளக்கம்:** தமிழின் மிக முக்கியமான பகுதி. எந்த நடையில் பதில் இருக்க வேண்டும்?

*   `Formal` (மரியாதை நடை / அலுவலக நடை) - "நீங்கள் வாருங்கள்"
*   `Casual/Friendly` (நட்பு நடை) - "நீ வா"
*   `Academic` (கல்வி சார் நடை) - "விளக்கவுரை"
*   `Poetic` (கவித்துவ நடை) - "செய்யுள் வடிவம்"
*   `Professional` (தொழில்முறை) - "வணிகப் பேச்சு"
*   `Pure Tamil` (தனித்தமிழ்) - Avoid Sanskrit/English loan words.
*   `Tanglish` (தமிங்கிலம்) - Colloquial mix (e.g., "Romba thanks").

### Level 6: Output Format (வெளியீட்டு வடிவம்)
**Definition:** The structure of the AI's response.
**விளக்கம்:** பதில் எந்த வடிவில் இருக்க வேண்டும்?

*   `Essay` (கட்டுரை)
*   `Table` (அட்டவணை)
*   `Bullet Points` (குறிப்புகள்)
*   `Step-by-Step` (படிநிலையாக)
*   `Code Block` (நிரல்)
*   `Dialogue` (உரையாடல்)

### Level 7: Constraints (கட்டுப்பாடுகள்)
**Definition:** Limitations applied to the prompt.
**விளக்கம்:** AI-க்கு இடப்படும் வேலிகள்.

*   `No English Words` (ஆங்கிலம் கலக்கக்கூடாது)
*   `Word Count < 100` (100 சொற்களுக்குள்)
*   `Use Metaphors` (உவமைகளைப் பயன்படுத்துக)
*   `Cite Sources` (மூலங்களைக் குறிப்பிடுக)

### Level 8: Safety Layer (பாதுகாப்பு கவசம்)
**Definition:** Must-have safety instructions for community standards.
**விளக்கம்:** இது ஒரு சமூகத் திட்டம் என்பதால், பாதுகாப்பு மிக முக்கியம்.

*   `No Medical Diagnosis` (மருத்துவ ஆலோசனை வழங்காதே - "தகவல் கல்விக்காக மட்டுமே" என்று குறிப்பிடுக)
*   `No Legal Advice` (சட்ட ஆலோசனை வழங்காதே - "வழக்கறிஞரை அணுகவும்" என்று குறிப்பிடுக)
*   `Biased Content` (சார்புத் தன்மை தவிர்க்கவும்)
*   `Respect Cultural Sensitivities` (கலாச்சார உணர்வுகளை மதிக்கவும்)

---

## 3. Standard Prompt Template (மாதிரி வடிவம்)

Use this template for all `.md` prompt files:

```markdown
### Prompt ID: {DEPT}-{ROLE}-{INTENT}-{NUM}

**Role:** {Role Name}
**Domain:** {Domain Name}
**Skill Level:** {Target Audience}
**Intent:** {Intent Code} ({Intent Name})
**Tone:** {Tone Style}
**Format:** {Output Format}

**Context/Instruction:**
{Detailed instruction in Tamil/English}

**Constraints:**
- {Constraint 1}
- {Constraint 2}

**Safety/Disclaimer:**
{Safety Note}

**Example Input:**
"{User Question}"

**Example Output:**
"{AI Response}"
```
