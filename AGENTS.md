# Codex Instructions for tamil-prompt-standard

This repository already contains the canonical agent guidance under `.agent/`.
Use those files as the source of truth when creating or editing prompts.

## Source of truth

- Workflow: `.agent/workflows/create-new-prompt.md`
- Taxonomy rules: `.agent/rules/taxonomy.md`
- File naming rules: `.agent/rules/file-naming.md`
- Safety rules: `.agent/rules/safety.md`

## Required behavior

When asked to create or revise prompt files:

1. Follow the checklist in `.agent/workflows/create-new-prompt.md`.
2. Enforce taxonomy layers and intent codes from `.agent/rules/taxonomy.md`.
3. Enforce filename format from `.agent/rules/file-naming.md`.
4. Apply mandatory safety disclaimers from `.agent/rules/safety.md`.

## Validation before finishing

- Confirm filename matches `role-domain-skill-intent-tone.md` (kebab-case).
- Confirm prompt structure includes role, domain, skill level, intent, tone, format, constraints, and safety/disclaimer.
- Confirm domain-sensitive safety language is present for health, law, and finance content.
