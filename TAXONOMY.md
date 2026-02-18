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

## 2. Layer Summary

| Layer | Question | Standard Values |
| :--- | :--- | :--- |
| **L1 Role** (பாத்திரம்) | Who is speaking? | Doctor, Teacher, Developer, Farmer, Lawyer, Poet, Storyteller, Marketer |
| **L2 Domain** (துறை) | What is the topic? | `health`, `edu`, `agriculture`, `tech`, `law`, `biz`, `lit`, `daily`, `employment` |
| **L3 Skill** (திறன் நிலை) | Who is listening? | `beg`, `int`, `exp`, `child` |
| **L4 Intent** (நோக்கம்) | What is the task? | `EXPL`, `SUMM`, `DRAF`, `ANAL`, `TRNS`, `CREA` |
| **L5 Tone** (தொனி) | How does it sound? | Formal, Casual, Academic, Poetic, Pure |
| **L6 Format** (வடிவம்) | What shape is the output? | Essay, Table, Bullet Points, Step-by-Step, Dialogue, Code, JSON/Markdown |
| **L7 Constraints** (கட்டுப்பாடுகள்) | What limits apply? | Word limit, language restrictions, vocabulary level, context scope |
| **L8 Safety** (பாதுகாப்பு) | Mandatory disclaimers | Domain-specific disclaimer + bias check + fact-checking instruction |

For detailed definitions and examples of each layer, see [.agent/rules/taxonomy.md](.agent/rules/taxonomy.md).

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

