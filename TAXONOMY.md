# Tamil Prompt Standard Specification (v0.1)

This document defines the **formal specification** for the Tamil Prompt Standard. All contributions to this repository must adhere to this 8-layer framework.

---

## 1. The 8-Layer Taxonomy

The standard uses a hierarchical model to ensure consistency:

| Layer | Component | Description |
| :--- | :--- | :--- |
| **L1** | **Role** | The persona or authority figure the AI adopts. |
| **L2** | **Domain** | The subject matter or industry context. |
| **L3** | **Skill Level** | The target audience's proficiency. |
| **L4** | **Intent** | The specific action or goal (coded). |
| **L5** | **Tone** | The linguistic register and style (Critical for Tamil). |
| **L6** | **Format** | The output structure. |
| **L7** | **Constraints** | Limits and fences for the response. |
| **L8** | **Safety** | Mandatory ethical and safety guardrails. |

---

## 2. Layer Definitions

### L1: Role (பாத்திரம்)

* **Definition:** Who is speaking?
* **Standard Values:** `Doctor`, `Teacher`, `Developer`, `Farmer`, `Lawyer`, `Poet`, `Storyteller`, `Marketer`.

### L2: Domain (துறை)

* **Definition:** What is the topic?
* **Standard Values:**
  * `health` (Healthcare — சுகாதாரம்)
  * `edu` (Education — கல்வி)
  * `agriculture` (Agriculture — விவசாயம்)
  * `tech` (Technology — தொழில்நுட்பம்)
  * `law` (Legal — சட்டம்)
  * `biz` (Business — வணிகம்)
  * `lit` (Literature — இலக்கியம்)
  * `daily` (Daily Life — தினசரி வாழ்க்கை)
  * `employment` (Employment & Career — வேலைவாய்ப்பு)

### L3: Skill Level (திறன் நிலை)

* **Definition:** Who is listening?
* **Standard Values:**
  * `beg` (Beginner - பாமரர்)
  * `int` (Intermediate - இடைநிலை)
  * `exp` (Expert - நிபுணர்)
  * `child` (Child - சிறுவர்)

### L4: Intent Codes (நோக்கம்)

* **Definition:** What is the task?
* **Standard Codes:**
  * `EXPL` - Explain (விளக்குக)
  * `SUMM` - Summarize (சுருக்குக)
  * `DRAF` - Draft (உருவாக்குக)
  * `ANAL` - Analyze (பகுப்பாய்வு)
  * `TRNS` - Translate (மொழிபெயர்க்க)
  * `CREA` - Creative Writing (படைப்பாக்கம்)

### L5: Tone (தொனி)

* **Definition:** How does it sound?
* **Standard Values:**
  * `Formal` (மரியாதை / அலுவலக நடை)
  * `Casual` (நட்பு நடை)
  * `Academic` (கல்வி சார் நடை)
  * `Poetic` (கவித்துவ நடை)
  * `Pure` (தனித்தமிழ்)

### L6: Format (வடிவம்)

* **Definition:** What shape does the output take?
* **Standard Values:**
  * `Essay` (கட்டுரை)
  * `Table` (அட்டவணை)
  * `Bullet Points` (புள்ளிகள்)
  * `Step-by-Step` (படிப்படியாக)
  * `Dialogue` (உரையாடல்)
  * `Code` (நிரல்)
  * `JSON` / `Markdown`

### L7: Constraints (கட்டுப்பாடுகள்)

* **Definition:** What limits or fences apply?
* **Standard Values:**
  * Word limit (e.g., 200 words max)
  * No English words (தனித்தமிழ் only)
  * Include examples
  * Use simple vocabulary
  * Grade-specific vocabulary
  * Tamil Nadu context only

### L8: Safety (பாதுகாப்பு)

* **Definition:** Mandatory Disclaimers.
* **Requirement:** Every prompt file MUST end with a Safety Block containing:
    1. Domain-specific disclaimer (e.g., "Not medical advice").
    2. Bias check.
    3. Fact-checking instruction.

---

## 3. Dropped / Deferred Features

The following were considered during v0.1 drafting but intentionally excluded from the standard:

| Feature | Layer | Reason |
| :--- | :--- | :--- |
| `COMP` (Compare) | L4 - Intent | Subsumed by `ANAL` (Analyze) |
| `STRU` (Structure) | L4 - Intent | Covered by L6 (Format) layer |
| `EVAL` (Evaluate) | L4 - Intent | Subsumed by `ANAL` (Analyze) |
| `Persuasive` | L5 - Tone | Risk of misuse; `Formal` covers most cases |
| `Government` | L5 - Tone | Merged into `Formal` tone with domain context |

These may be revisited in future versions based on community feedback.

---

## 4. Implementation Guide

For implementation details, see the [.agent/rules/taxonomy.md](.agent/rules/taxonomy.md) rule file.
