# தமிழ் AI கட்டளை தரநிலை — 8-அடுக்கு வகைபாடு கட்டமைப்பு (v0.1)

# Tamil Prompt Standard — 8-Layer Taxonomy Framework (v0.1)

இந்த அத்தியாயம் தமிழ் AI கட்டளை தரநிலையின் **முறைப்படுத்தப்பட்ட விவரக்கோவை**யை வழங்குகிறது. இந்தக் களஞ்சியத்தில் உள்ள அனைத்து கட்டளை மாதிரிகளும் இந்த 8-அடுக்கு கட்டமைப்பை அடிப்படையாகக்கொண்டு உருவாக்கப்பட்டுள்ளன.

This chapter presents the formal specification of the Tamil Prompt Standard. Every prompt template in this book is built on this 8-layer framework.

---

## 1. அடிப்படை கட்டமைப்பு (Core Structural Model)

இந்த கட்டமைப்பு அனைத்து தமிழ் கட்டளைகளிலும் சீரான தன்மை, தரம் மற்றும் பாதுகாப்பை உறுதி செய்கிறது.

This framework ensures consistency, quality, and safety across all Tamil prompts.

| அடுக்கு (Layer) | கூறு (Component) | தமிழ் விளக்கம்                          | எடுத்துக்காட்டு (Example)          |
| :-------------- | :--------------- | :-------------------------------------- | :--------------------------------- |
| **L1**          | **Role**         | பாத்திரம் — யார் பேசுகிறார்?            | Doctor, Teacher, Farmer            |
| **L2**          | **Domain**       | துறை — எந்தத் துறை?                     | Healthcare, Education, Agriculture |
| **L3**          | **Skill Level**  | திறன் நிலை — யாருக்காக?                 | Beginner, Expert, Grade 6          |
| **L4**          | **Intent**       | நோக்கம் — என்ன செய்ய?                   | Explain, Draft, Analyze            |
| **L5**          | **Tone**         | தொனி — எப்படிப் பேசுவது?                | Formal, Friendly, Poetic           |
| **L6**          | **Format**       | வடிவம் — எந்த வடிவில் வெளியீடு?         | Essay, Table, Code                 |
| **L7**          | **Constraints**  | கட்டுப்பாடுகள் — என்ன வரம்புகள்?        | Word limit, No English             |
| **L8**          | **Safety**       | பாதுகாப்பு கவசம் — என்ன கட்டுப்பாடுகள்? | No medical advice, Neutral         |

---

## 2. அடுக்கு விளக்கங்கள் (Layer Definitions)

### L1 — Role (பாத்திரம்)

**Definition:** The persona the AI should adopt.
**விளக்கம்:** AI ஏற்க வேண்டிய பாத்திரம். இது பதிலின் அதிகாரத்தன்மையை தீர்மானிக்கிறது.

| Standard Values | Tamil                |
| :-------------- | :------------------- |
| Doctor          | மருத்துவர்           |
| Teacher         | ஆசிரியர்             |
| Farmer          | விவசாயி              |
| Developer       | மென்பொருள் பொறியாளர் |
| Poet            | கவிஞர்               |
| Lawyer          | வழக்கறிஞர்           |
| Marketer        | சந்தையாளர்           |

---

### L2 — Domain (துறை)

**Definition:** The subject matter context.
**விளக்கம்:** கேள்வி அல்லது பணி சார்ந்த துறை.

| Code          | Domain      | Tamil           |
| :------------ | :---------- | :-------------- |
| `health`      | Healthcare  | சுகாதாரம்       |
| `edu`         | Education   | கல்வி           |
| `agriculture` | Agriculture | விவசாயம்        |
| `tech`        | Technology  | தொழில்நுட்பம்   |
| `law`         | Law         | சட்டம்          |
| `biz`         | Business    | வணிகம்          |
| `lit`         | Literature  | இலக்கியம்       |
| `daily`       | Daily Life  | தினசரி வாழ்க்கை |
| `employment`  | Employment  | வேலைவாய்ப்பு    |

---

### L3 — Skill Level (திறன் நிலை)

**Definition:** The complexity level of the response — who is the audience?
**விளக்கம்:** பதிலை யாருக்காக உருவாக்குகிறோம்? அவர்களின் புரிதல் திறனுக்கேற்ப பதில் அமைய வேண்டும்.

| Code    | Level        | Tamil                |
| :------ | :----------- | :------------------- |
| `beg`   | Beginner     | தொடக்க நிலை / பாமரர் |
| `int`   | Intermediate | இடைநிலை              |
| `adv`   | Advanced     | மேம்பட்ட நிலை        |
| `exp`   | Expert       | நிபுணர் நிலை         |
| `child` | Child        | குழந்தை              |
| G1–G5   | Grade 1–5    | தொடக்கப் பள்ளி       |
| G6–G12  | Grade 6–12   | மேல்நிலைப் பள்ளி     |

---

### L4 — Intent (நோக்கம்)

**Definition:** What the user wants the AI to do. Uses standard codes for consistency.
**விளக்கம்:** பயனர் எதிர்பார்ப்பது என்ன? இதற்கான தரப்படுத்தப்பட்ட குறியீடுகள்:

| Code     | Intent    | Tamil Meaning                               |
| :------- | :-------- | :------------------------------------------ |
| **EXPL** | Explain   | விளக்குக — கருத்து விளக்கம்                 |
| **SUMM** | Summarize | சுருக்குக — சுருக்கம்                       |
| **DRAF** | Draft     | உருவாக்குக — கடிதம், நிரல், அறிக்கை         |
| **ANAL** | Analyze   | பகுப்பாய்வு செய்க — மதிப்பாய்வு, தணிக்கை    |
| **TRNS** | Translate | மொழிபெயர்க்க — ஆங்கிலம் ↔ தமிழ்             |
| **CREA** | Creative  | படைப்பாக்கம் — கதை, கவிதை                   |
| **PLAN** | Plan      | திட்டம் — படிப்புத் திட்டம், வணிகத் திட்டம் |

---

### L5 — Tone & Register (தொனி மற்றும் நடை)

**Definition:** The linguistic style of the Tamil output.
**விளக்கம்:** தமிழில் மொழி நடை மிக முக்கியம். எந்த நடையில் பதில் இருக்க வேண்டும்?

| Tone            | Tamil Label              | Example                           |
| :-------------- | :----------------------- | :-------------------------------- |
| Formal          | மரியாதை நடை / அலுவலக நடை | "நீங்கள் வாருங்கள்"               |
| Casual/Friendly | நட்பு நடை                | "நீ வா"                           |
| Academic        | கல்வி சார் நடை           | "விளக்கவுரை"                      |
| Poetic          | கவித்துவ நடை             | "செய்யுள் வடிவம்"                 |
| Professional    | தொழில்முறை               | வணிகப் பேச்சு                     |
| Pure Tamil      | தனித்தமிழ்               | வடமொழி / ஆங்கிலம் கலக்காதது       |
| Tanglish        | தமிங்கிலம்               | வழக்கு மொழி கலவை — "Romba thanks" |

> [!NOTE]
> Pure Tamil (தனித்தமிழ்) தொனி தேர்ந்தெடுக்கும்போது, Sanskrit மற்றும் ஆங்கிலக் கடன் சொற்களை தவிர்க்க வேண்டும். Tanglish (தமிங்கிலம்) தொனி வழக்கு மொழி பேச்சுக்கு ஏற்றது — இலக்கண சீர்திருத்தம் தேவையில்லாத சூழல்களில் பயன்படுத்தவும்.

---

### L6 — Output Format (வெளியீட்டு வடிவம்)

**Definition:** The structure of the AI's response.
**விளக்கம்:** பதில் எந்த வடிவில் இருக்க வேண்டும்?

| Format        | Tamil       | Use Case               |
| :------------ | :---------- | :--------------------- |
| Essay         | கட்டுரை     | விவரண விளக்கங்கள்      |
| Table         | அட்டவணை     | ஒப்பீட்டு தகவல்        |
| Bullet Points | குறிப்புகள் | விரைவு பட்டியல்        |
| Step-by-Step  | படிநிலையாக  | செயல்முறை விளக்கம்     |
| Code Block    | நிரல்       | தொழில்நுட்ப வெளியீடு   |
| Dialogue      | உரையாடல்    | கதை, நேர்காணல் பயிற்சி |

---

### L7 — Constraints (கட்டுப்பாடுகள்)

**Definition:** Limitations applied to the prompt response.
**விளக்கம்:** AI-க்கு இடப்படும் வேலிகள் — பதிலை கட்டுப்படுத்தும் வரம்புகள்.

| Constraint Type | Example                                       |
| :-------------- | :-------------------------------------------- |
| மொழி வரம்பு     | No English Words — ஆங்கிலம் கலக்கக்கூடாது     |
| சொல் எண்ணிக்கை  | Word Count < 100 — 100 சொற்களுக்குள்          |
| நடை தேவை        | Use Metaphors — உவமைகளைப் பயன்படுத்துக        |
| மூல குறிப்பு    | Cite Sources — மூலங்களைக் குறிப்பிடுக         |
| சூழல் நோக்கம்   | Context Scope — குறிப்பிட்ட சூழலுக்கு மட்டுமே |

---

### L8 — Safety Layer (பாதுகாப்பு கவசம்)

**Definition:** Mandatory ethical and safety guardrails for community standards.
**விளக்கம்:** இது ஒரு சமூகத் திட்டம் என்பதால், பாதுகாப்பு மிக முக்கியம். ஒவ்வொரு கட்டளை மாதிரியிலும் தொடர்புடைய மறுப்பு அறிக்கை (disclaimer) இருக்க வேண்டும்.

| Domain     | Mandatory Disclaimer                                                                                            |
| :--------- | :-------------------------------------------------------------------------------------------------------------- |
| Healthcare | "இவை தகவல் மற்றும் கல்வி நோக்கிற்கானவை மட்டுமே. மருத்துவ சிகிச்சைக்காக தகுதிவாய்ந்த மருத்துவரை அணுகவும்."       |
| Legal      | "இது சட்ட ஆலோசனை அல்ல. சட்டங்கள் இடத்திற்கு இடம் மாறுபடும். சட்ட ரீதியான நடவடிக்கைகளுக்கு வழக்கறிஞரை அணுகவும்." |
| Finance    | "இது நிதி ஆலோசனை அல்ல. உங்கள் சொந்த ஆராய்ச்சியின் அடிப்படையில் முடிவெடுக்கவும்."                                |
| General    | சார்புத் தன்மை (bias) தவிர்க்கவும். கலாச்சார உணர்வுகளை மதிக்கவும்.                                              |

---

## 3. மாதிரி கட்டளை வடிவம் (Standard Prompt Template)

All prompt files in this book follow this structure:

```markdown
### Prompt ID: {DEPT}-{ROLE}-{INTENT}-{NUM}

**Role:** {Role Name}
**Domain:** {Domain Name}
**Skill Level:** {Target Audience}
**Intent:** {Intent Code} ({Intent Name})
**Tone:** {Tone Style}
**Format:** {Output Format}

**Constraints:**
- {Constraint 1}
- {Constraint 2}

**Safety/Disclaimer:**
{Safety Note}
```

**பயன்படுத்தும் முறை:** `{அடைப்புக்குறி}` பகுதிகளை உங்கள் தேவைக்கு ஏற்ப மாற்றி AI மாதிரியிடம் வழங்கவும். முதல் பதிலை வரைவாகக்கொண்டு மீள்சீரமைப்பு (Iterative Refinement) செய்யுங்கள்.

---

## 4. கோப்பு பெயரிடல் மரபு (File Naming Convention)

```
ROLE-DOMAIN-SKILL-INTENT-TONE.md          (individual prompt)
collection-{role}.md                       (grouped collection)
```

**எடுத்துக்காட்டுகள்:**

| File Name                          | Meaning                                          |
| :--------------------------------- | :----------------------------------------------- |
| `student-edu-g6-expl-simple.md`    | Grade 6 student — explanation in simple Tamil    |
| `doctor-health-exp-draf-formal.md` | Doctor — drafting patient notes formally         |
| `collection-doctors.md`            | Full prompt collection for medical practitioners |

---

## 5. விலக்கி வைக்கப்பட்ட அம்சங்கள் (Dropped / Deferred Features — v0.1)

The following were considered during v0.1 drafting but intentionally excluded. They may be revisited in future versions based on community feedback.

| Feature            | Layer       | Reason for Exclusion                          |
| :----------------- | :---------- | :-------------------------------------------- |
| `COMP` (Compare)   | L4 — Intent | Subsumed by `ANAL` (Analyze)                  |
| `STRU` (Structure) | L4 — Intent | Covered by L6 (Format) layer                  |
| `EVAL` (Evaluate)  | L4 — Intent | Subsumed by `ANAL` (Analyze)                  |
| `Persuasive`       | L5 — Tone   | Risk of misuse; `Formal` covers most cases    |
| `Government`       | L5 — Tone   | Merged into `Formal` tone with domain context |

---

> [!NOTE]
> இந்த தரநிலை திறந்த மூல (Open Source) சமூக முயற்சியாக உருவாக்கப்பட்டது. பங்களிக்க விரும்புவோர் [CONTRIBUTING.md](https://github.com/kpassoubady/tamil-prompt-standard/blob/master/CONTRIBUTING.md) காண்க. இந்த விவரக்கோவையின் தற்போதைய பதிப்பு: **v0.1**.
