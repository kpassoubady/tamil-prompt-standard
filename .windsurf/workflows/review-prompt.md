# Workflow: Review Prompt
# பணிமுறை: கட்டளை மதிப்பாய்வு

Follow this checklist to review any prompt file before merging or publishing.
கட்டளைக் கோப்பை ஒன்றிணைக்கும் அல்லது வெளியிடும் முன் இந்த சரிபார்ப்புப் பட்டியலைப் பயன்படுத்தவும்.

---

## Full Review Checklist

See the canonical review workflow at [.agent/workflows/review-prompt.md](../../.agent/workflows/review-prompt.md) for the complete 6-step checklist:

1. **Taxonomy Compliance** — All 8 layers present and valid
2. **File & Structure** — Filename convention and metadata fields
3. **Safety Review** — Domain-specific disclaimers, no PII, no bias
4. **Tamil Language Quality** — Grammar, spelling, tone consistency
5. **Content Quality** — Clarity, completeness, examples, no duplication
6. **Testing** — Tested with at least one LLM

---

## Quality Rubric

Score every prompt using the quality rubric at [.agent/rules/quality-rubric.md](../../.agent/rules/quality-rubric.md).

- **8 categories** — 5 mandatory, 3 recommended
- **All mandatory categories must pass** for a prompt to be accepted
- Use the copy-paste scorecard template from the rubric for PR reviews

---

## Review Outcome

| Result | Action |
| :--- | :--- |
| **All checks pass** | Approve for merge |
| **Minor issues** (formatting, typos) | Request fixes, re-review |
| **Safety failure** | **Reject** — must be fixed before re-submission |
| **Missing taxonomy layers** | Return to author with specific gaps identified |
