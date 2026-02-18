# Contributing to Tamil Prompt Standard

We welcome contributions from the community! Whether you are a prompt engineer, developer, linguist, or enthusiast, your help is valuable.

## How to Contribute

### 1. Adding a New Prompt

1. **Check the Taxonomy:** Ensure your prompt fits into the [TAXONOMY.md](TAXONOMY.md).
2. **Use the Template:** Follow the standard template defined in [.agent/rules/taxonomy.md](.agent/rules/taxonomy.md).
3. **Name Correctly:** Use the convention `role-domain-skill-intent-tone.md` (see [.agent/rules/file-naming.md](.agent/rules/file-naming.md)).
4. **Place in Folder:** Save it in the appropriate `prompts/{domain}/` directory.
5. **Safety First:** Add the mandatory Safety Layer (Level 8).

### 2. Improving Existing Prompts

* Fix typos or grammatical errors in Tamil.
* Refine the "Instruction" part for better LLM performance.
* Update Safety disclaimers.

### 3. Reporting Issues

* Use the "Issues" tab to report prompt failures or safety concerns.

---

## Pull Request Process

1. Fork the repository.
2. Create a new branch (`git checkout -b prompt/new-prompt-name`).
3. Commit your changes (`git commit -m "feat: Add new prompt for---"`).
4. Push to the branch (`git push origin prompt/new-prompt-name`).
5. Open a Pull Request.

### PR Checklist

* [ ] Follows the 8-Layer Taxonomy?

* [ ] Includes Safety Disclaimer?
* [ ] Filename is in kebab-case standard format?
* [ ] Tamil content is grammatically correct?

---

## Prompt Review Process

Every prompt PR is reviewed against the project's quality rubric before merging.

### How it works

1. A reviewer follows the [Prompt Review Checklist](.agent/workflows/review-prompt.md) — a 6-step process covering taxonomy, safety, Tamil language quality, content, and testing.
2. The prompt is scored using the [Quality Rubric](.agent/rules/quality-rubric.md) — 8 categories total.
3. **All 5 mandatory categories must pass** for the prompt to be accepted:
   - Taxonomy Completeness
   - Safety Compliance
   - Tamil Language Quality
   - Prompt Clarity
   - Cultural Appropriateness
4. The 3 recommended categories (Examples & Testability, Structure & Naming, Reusability) are encouraged but not blocking.

### Safety is non-negotiable

A failure in Safety Compliance (Category 2) results in **automatic rejection**. Healthcare, legal, and finance prompts must include the appropriate Tamil disclaimer.

---

## License

By contributing, you agree that your contributions will be licensed under the [Creative Commons Attribution-ShareAlike 4.0 International License](LICENSE).
