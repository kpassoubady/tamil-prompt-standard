# Workflow: Review Prompt Checklist
# பணிமுறை: கட்டளை மதிப்பாய்வு சரிபார்ப்புப் பட்டியல்

Use this checklist to review any prompt file before merging or publishing.
கட்டளைக் கோப்பை ஒன்றிணைக்கும் அல்லது வெளியிடும் முன் இந்த சரிபார்ப்புப் பட்டியலைப் பயன்படுத்தவும்.

---

## Step 1: Taxonomy Compliance (கட்டமைப்பு இணக்கம்)

Reference: [../rules/taxonomy.md](../rules/taxonomy.md)

Verify all 8 layers are present and valid:

- [ ] **L1 — Role** (பாத்திரம்): Is a clear role defined? Does it match a standard role (Doctor, Teacher, Farmer, etc.)?
- [ ] **L2 — Domain** (துறை): Is the domain explicitly stated and matches the folder it lives in (`health/`, `edu/`, `law/`, etc.)?
- [ ] **L3 — Skill Level** (திறன் நிலை): Is the target audience defined? Is the complexity appropriate for that level?
- [ ] **L4 — Intent** (நோக்கம்): Is a standard intent code used (EXPL, SUMM, DRAF, ANAL, TRNS, CREA, PLAN)?
- [ ] **L5 — Tone** (தொனி): Is the Tamil register appropriate? Is the choice between Formal / Casual / Pure Tamil / Tanglish consistent throughout?
- [ ] **L6 — Format** (வடிவம்): Is the expected output format specified (Essay, Table, Bullet Points, Step-by-Step, Code, Dialogue)?
- [ ] **L7 — Constraints** (கட்டுப்பாடுகள்): Are word limits, language restrictions, or style requirements stated where needed?
- [ ] **L8 — Safety** (பாதுகாப்பு): Is the safety layer present? (See Step 3 for details.)

## Step 2: File & Structure (கோப்பு & அமைப்பு)

Reference: [../rules/file-naming.md](../rules/file-naming.md)

- [ ] **Filename** follows the convention: `ROLE-DOMAIN-SKILL-INTENT-TONE.md` (individual) or `collection-{role}.md` (collection)
- [ ] **File location** is correct under `prompts/{domain}/`
- [ ] **Prompt ID** follows the pattern: `{DEPT}-{ROLE}-{INTENT}-{NUM}`
- [ ] **Metadata fields** (Role, Domain, Skill Level, Intent, Tone, Format) are filled in the prompt header
- [ ] **Placeholders** use `{curly braces}` for user-customizable values

## Step 3: Safety Review (பாதுகாப்பு மதிப்பாய்வு)

Reference: [../rules/safety.md](../rules/safety.md)

> [!CAUTION]
> Safety is non-negotiable. Reject any prompt that fails this section.
> பாதுகாப்பு விஷயத்தில் சமரசம் கிடையாது.

- [ ] **Healthcare prompts** include disclaimer: *"இவை தகவல் மற்றும் கல்வி நோக்கிற்கானவை மட்டுமே. மருத்துவ சிகிச்சைக்காக தகுதிவாய்ந்த மருத்துவரை அணுகவும்."*
- [ ] **Legal prompts** include disclaimer: *"இது சட்ட ஆலோசனை அல்ல. சட்டங்கள் இடத்திற்கு இடம் மாறுபடும். சட்ட ரீதியான நடவடிக்கைகளுக்கு வழக்கறிஞரை அணுகவும்."*
- [ ] **Finance prompts** include disclaimer: *"இது நிதி ஆலோசனை அல்ல. உங்கள் சொந்த ஆராய்ச்சியின் அடிப்படையில் முடிவெடுக்கவும்."*
- [ ] **No hallucination instruction**: Prompt includes guidance to not fabricate facts
- [ ] **Cultural sensitivity**: No caste, religious, or political bias; examples are inclusive
- [ ] **No PII**: Prompt does not contain or encourage collection of personal identifiable information

## Step 4: Tamil Language Quality (தமிழ் மொழித் தரம்)

- [ ] **Grammar**: Tamil text is grammatically correct (வாக்கிய அமைப்பு சரி)
- [ ] **Spelling**: No spelling errors in Tamil content (எழுத்துப் பிழை இல்லை)
- [ ] **Tone consistency**: The register (formal/casual/academic) is uniform throughout the prompt
- [ ] **Natural flow**: Reads naturally to a Tamil speaker; not a literal translation from English
- [ ] **Bilingual labels**: Technical terms have English equivalents in parentheses where helpful
- [ ] **Script correctness**: All Tamil Unicode characters render correctly; no broken encoding

## Step 5: Content Quality (உள்ளடக்கத் தரம்)

- [ ] **Clarity**: Instructions are unambiguous — the AI knows exactly what to do
- [ ] **Completeness**: The prompt covers all necessary context for the intended use case
- [ ] **Examples**: At least one example input/output is provided (or usage note)
- [ ] **Placeholders are clear**: All `{placeholder}` values are self-explanatory or documented
- [ ] **No duplication**: This prompt does not duplicate an existing prompt in the same collection
- [ ] **Appropriate scope**: The prompt is neither too broad nor too narrow for its stated intent

## Step 6: Testing (சோதனை)

- [ ] **LLM tested**: The prompt has been tested with at least one AI model (Claude, ChatGPT, etc.)
- [ ] **Output quality**: The AI output meets expectations for the stated role, skill level, and tone
- [ ] **Edge cases**: Tested with varied inputs to ensure the prompt handles different scenarios
- [ ] **Safety in output**: The AI response includes the required disclaimers and does not produce harmful content

---

## Review Outcome (மதிப்பாய்வு முடிவு)

| Result | Action |
| :--- | :--- |
| **All checks pass** | Approve for merge |
| **Minor issues** (formatting, typos) | Request fixes, re-review |
| **Safety failure** | **Reject** — must be fixed before re-submission |
| **Missing taxonomy layers** | Return to author with specific gaps identified |

---

## Quick Reference: Common Rejection Reasons (அடிக்கடி நிராகரிக்கப்படும் காரணங்கள்)

1. Missing safety disclaimer in healthcare/legal/finance prompts
2. Tone inconsistency (mixing formal and casual registers)
3. No example input/output provided
4. Filename does not follow the naming convention
5. Prompt duplicates existing content in the collection
6. Tamil text contains grammatical errors or unnatural phrasing
