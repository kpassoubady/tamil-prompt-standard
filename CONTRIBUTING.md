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
3. Commit your changes (`git commit -m "feat: Add new prompt for..."`).
4. Push to the branch (`git push origin prompt/new-prompt-name`).
5. Open a Pull Request.

### PR Checklist

* [ ] Follows the 8-Layer Taxonomy?

* [ ] Includes Safety Disclaimer?
* [ ] Filename is in kebab-case standard format?
* [ ] Tamil content is grammatically correct?

---

## License

By contributing, you agree that your contributions will be licensed under the [Creative Commons Attribution-ShareAlike 4.0 International License](LICENSE).
