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
*   **Definition:** Who is speaking?
*   **Standard Values:** `Doctor`, `Teacher`, `Developer`, `Farmer`, `Lawyer`, `Poet`, `Storyteller`, `Marketer`.

### L2: Domain (துறை)
*   **Definition:** What is the topic?
*   **Standard Values:**
    *   `tech` (Technology)
    *   `health` (Healthcare)
    *   `edu` (Education)
    *   `agri` (Agriculture)
    *   `law` (Legal)
    *   `lit` (Literature)
    *   `biz` (Business)

### L3: Skill Level (திறன் நிலை)
*   **Definition:** Who is listening?
*   **Standard Values:**
    *   `beg` (Beginner - பாமரர்)
    *   `int` (Intermediate - இடைநிலை)
    *   `exp` (Expert - நிபுணர்)
    *   `child` (Child - சிறுவர்)

### L4: Intent Codes (நோக்கம்)
*   **Definition:** What is the task?
*   **Standard Codes:**
    *   `EXPL` - Explain (விளக்குக)
    *   `SUMM` - Summarize (சுருக்குக)
    *   `DRAF` - Draft (உருவாக்குக)
    *   `ANAL` - Analyze (பகுப்பாய்வு)
    *   `TRNS` - Translate (மொழிபெயர்க்க)
    *   `CREA` - Creative Writing (படைப்பாக்கம்)

### L5: Tone (தொனி)
*   **Definition:** How does it sound?
*   **Standard Values:**
    *   `Formal` (மரியாதை / அலுவலக நடை)
    *   `Casual` (நட்பு நடை)
    *   `Academic` (கல்வி சார் நடை)
    *   `Poetic` (கவித்துவ நடை)
    *   `Pure` (தனித்தமிழ்)

### L8: Safety (பாதுகாப்பு)
*   **Definition:** Mandatory Disclaimers.
*   **Requirement:** Every prompt file MUST end with a Safety Block containing:
    1.  Domain-specific disclaimer (e.g., "Not medical advice").
    2.  Bias check.
    3.  Fact-checking instruction.

---

## 3. Implementation Guide

For implementation details, seeing the [.agent/rules/taxonomy.md](.agent/rules/taxonomy.md) rule file.
