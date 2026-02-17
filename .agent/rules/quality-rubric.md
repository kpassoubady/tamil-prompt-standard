# Tamil Prompt Quality Rubric (Scoring Model)
# தமிழ் கட்டளை தரமதிப்பீட்டு அளவுகோல்

> [!IMPORTANT]
> Every prompt must pass **all mandatory categories** to be accepted.
> ஒவ்வொரு கட்டளையும் ஏற்றுக்கொள்ளப்பட **அனைத்து கட்டாய வகைகளிலும்** தேர்ச்சி பெற வேண்டும்.

---

## Scoring Method (மதிப்பீட்டு முறை)

- **Pass/Fail** per check item (✅ / ❌)
- Each category has a **pass threshold** — typically all checks must pass
- Categories are marked **Mandatory** or **Recommended**
- A prompt is **Accepted** only if all **Mandatory** categories pass

---

## Category 1: Taxonomy Completeness (கட்டமைப்பு முழுமை) — MANDATORY

Reference: [taxonomy.md](taxonomy.md)

| Check | Result |
| :--- | :--- |
| L1 — Role is explicitly defined | ✅ / ❌ |
| L2 — Domain is stated and matches the file's folder | ✅ / ❌ |
| L3 — Skill Level / target audience is specified | ✅ / ❌ |
| L4 — Intent uses a standard code (EXPL, SUMM, DRAF, ANAL, TRNS, CREA, PLAN) | ✅ / ❌ |
| L5 — Tone / register is defined | ✅ / ❌ |
| L6 — Output format is specified | ✅ / ❌ |
| L7 — Constraints are stated (or explicitly "none") | ✅ / ❌ |
| L8 — Safety layer is present | ✅ / ❌ |

**Pass threshold:** All 8 checks must pass.

---

## Category 2: Safety Compliance (பாதுகாப்பு இணக்கம்) — MANDATORY

Reference: [safety.md](safety.md)

| Check | Result |
| :--- | :--- |
| Healthcare prompts include medical disclaimer in Tamil | ✅ / ❌ / N/A |
| Legal prompts include legal disclaimer in Tamil | ✅ / ❌ / N/A |
| Finance prompts include finance disclaimer in Tamil | ✅ / ❌ / N/A |
| Prompt includes "do not hallucinate" instruction | ✅ / ❌ |
| No caste, religious, or political bias | ✅ / ❌ |
| No PII collection or exposure | ✅ / ❌ |

**Pass threshold:** All applicable checks must pass. N/A items are skipped.

> [!CAUTION]
> A failure in this category is an **automatic rejection**.
> இந்த வகையில் தோல்வி என்றால் **உடனடி நிராகரிப்பு**.

---

## Category 3: Tamil Language Quality (தமிழ் மொழித் தரம்) — MANDATORY

| Check | Result |
| :--- | :--- |
| Tamil grammar is correct (வாக்கிய அமைப்பு சரி) | ✅ / ❌ |
| No spelling errors in Tamil (எழுத்துப் பிழை இல்லை) | ✅ / ❌ |
| Tone/register is consistent throughout (formal stays formal, casual stays casual) | ✅ / ❌ |
| Reads naturally — not a literal English-to-Tamil translation | ✅ / ❌ |
| Tamil Unicode characters render correctly — no broken encoding | ✅ / ❌ |

**Pass threshold:** All 5 checks must pass.

---

## Category 4: Prompt Clarity (கட்டளை தெளிவு) — MANDATORY

| Check | Result |
| :--- | :--- |
| Instructions are unambiguous — the AI knows exactly what to do | ✅ / ❌ |
| All `{placeholder}` values are self-explanatory or documented | ✅ / ❌ |
| The prompt covers sufficient context for the intended use case | ✅ / ❌ |
| Expected output format is clearly communicated | ✅ / ❌ |

**Pass threshold:** All 4 checks must pass.

---

## Category 5: Cultural Appropriateness (கலாச்சாரப் பொருத்தம்) — MANDATORY

| Check | Result |
| :--- | :--- |
| Respects Tamil cultural values and traditions | ✅ / ❌ |
| Examples are inclusive (gender, region, community) | ✅ / ❌ |
| No stereotyping or offensive content | ✅ / ❌ |
| Appropriate for the stated skill level / audience | ✅ / ❌ |

**Pass threshold:** All 4 checks must pass.

---

## Category 6: Examples & Testability (எடுத்துக்காட்டுகள் & சோதனை) — RECOMMENDED

| Check | Result |
| :--- | :--- |
| At least one example input is provided | ✅ / ❌ |
| At least one example output or usage note is provided | ✅ / ❌ |
| Prompt has been tested with an LLM (Claude, ChatGPT, etc.) | ✅ / ❌ |
| AI output meets expectations for role, skill level, and tone | ✅ / ❌ |

**Pass threshold:** At least 2 of 4 checks should pass.

---

## Category 7: Structure & Naming (அமைப்பு & பெயரிடல்) — RECOMMENDED

Reference: [file-naming.md](file-naming.md)

| Check | Result |
| :--- | :--- |
| Filename follows convention (`ROLE-DOMAIN-SKILL-INTENT-TONE.md` or `collection-{role}.md`) | ✅ / ❌ |
| File is in the correct `prompts/{domain}/` folder | ✅ / ❌ |
| Prompt ID follows the pattern `{DEPT}-{ROLE}-{INTENT}-{NUM}` | ✅ / ❌ |
| Metadata fields (Role, Domain, Intent, etc.) are filled in the header | ✅ / ❌ |

**Pass threshold:** All 4 checks should pass.

---

## Category 8: Reusability (மறுபயன்பாடு) — RECOMMENDED

| Check | Result |
| :--- | :--- |
| Placeholders allow customization for different contexts | ✅ / ❌ |
| Prompt is not a duplicate of an existing one in the collection | ✅ / ❌ |
| Scope is appropriate — neither too broad nor too narrow | ✅ / ❌ |
| Bilingual labels (Tamil + English) for technical terms | ✅ / ❌ |

**Pass threshold:** At least 3 of 4 checks should pass.

---

## Overall Verdict (ஒட்டுமொத்த முடிவு)

| Mandatory Categories (1–5) | Recommended Categories (6–8) | Verdict |
| :--- | :--- | :--- |
| All pass | All pass | **Accepted** (ஏற்றுக்கொள்ளப்படுகிறது) |
| All pass | Some fail | **Accepted with suggestions** (பரிந்துரைகளுடன் ஏற்றுக்கொள்ளப்படுகிறது) |
| Any fail | — | **Rejected** — fix and resubmit (நிராகரிக்கப்படுகிறது — திருத்தி மீண்டும் சமர்ப்பிக்கவும்) |

---

## Scorecard Template (மதிப்பீட்டு அட்டை)

Copy this template when reviewing a prompt:

```markdown
### Quality Rubric — {Prompt Name / File}

| # | Category | Status | Notes |
| :--- | :--- | :--- | :--- |
| 1 | Taxonomy Completeness | ✅ / ❌ | |
| 2 | Safety Compliance | ✅ / ❌ | |
| 3 | Tamil Language Quality | ✅ / ❌ | |
| 4 | Prompt Clarity | ✅ / ❌ | |
| 5 | Cultural Appropriateness | ✅ / ❌ | |
| 6 | Examples & Testability | ✅ / ❌ | |
| 7 | Structure & Naming | ✅ / ❌ | |
| 8 | Reusability | ✅ / ❌ | |

**Verdict:** Accepted / Accepted with suggestions / Rejected
**Reviewer:** {Name / Agent}
**Date:** {YYYY-MM-DD}
```
