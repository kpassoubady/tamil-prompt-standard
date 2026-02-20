Create a feature branch, commit changes, push, and open a Pull Request following the project's Gitflow conventions.

## Steps

### 1. Confirm starting point
```bash
git branch --show-current   # should be master
git status                  # check for uncommitted changes
```

### 2. Ask the user for
- **Feature name** — short slug for the branch (e.g. `add-config-system`)
- **Brief description** — used in commit message and PR body

### 3. Create feature branch (if not already on one)
```bash
git checkout -b feature/<feature-name>
```

### 4. Run markdown lint before committing
```bash
npx markdownlint-cli2 "**/*.md" --config .markdownlint.json
```
Fix any lint errors before proceeding.

### 5. Stage and commit
Review `git diff` first, then stage specific files (avoid `git add .` which may include temp/build artifacts).

Use Conventional Commits format:
```
<type>: <short description>

<bullet list of changes>

Co-Authored-By: Claude Sonnet 4.6 <noreply@anthropic.com>
```

Types: `feat`, `fix`, `docs`, `refactor`, `test`, `chore`

### 6. Push
```bash
git push -u origin feature/<feature-name>
```

### 7. Create PR
```bash
gh pr create \
  --title "<concise title under 70 chars>" \
  --body "$(cat <<'EOF'
## Summary
- <bullet 1>
- <bullet 2>

## Test plan
- [ ] Markdown lint passes (`npx markdownlint-cli2`)
- [ ] Configs are valid JSON
- [ ] README.md links are correct

🤖 Generated with [Claude Code](https://claude.com/claude-code)
EOF
)" \
  --base master
```

### 8. Return summary
Show branch name, commit hash, and PR URL as a plain table (no bold around the URL — it breaks clickable links).

## Notes
- Never commit directly to `master`
- Always run markdown lint before creating the PR
- `temp/`, `bookbuilder-output/`, and `.DS_Store` files are gitignored — don't force-add them
- Link related GitHub issues in the PR body if applicable
