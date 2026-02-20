Update `CHANGELOG.md` after making significant changes to the Tamil Prompt Standard project.

Follow the [Keep a Changelog](https://keepachangelog.com) format.

## Steps

1. **Identify what changed** — review `git diff` or `git log` to note the specific changes.

2. **Open `CHANGELOG.md`** and add entries under the `[Unreleased]` section using the appropriate category:

| Category | Use for |
|---|---|
| `### Added` | New features |
| `### Changed` | Changes in existing functionality |
| `### Deprecated` | Soon-to-be removed features |
| `### Removed` | Removed features |
| `### Fixed` | Bug fixes |
| `### Security` | Vulnerability fixes |

## Entry guidelines

- One line per change, present tense ("Add", "Fix", "Update")
- Reference the specific module or function when helpful
- Replace `N/A` placeholder with real entries; remove empty categories

## Example

```markdown
## [Unreleased]

### Added
- Add `collection-seniors.md` to `prompts/daily/` — daily life prompts for older adults
- Add `book/samplers/social-sampler.md` — social media sampler for showcase config

### Changed
- Move foundation files from repo root to `book/foundations/`
- Update all three configs and README.md to reflect new paths

### Fixed
- Safety disclaimer missing in `collection-ayush.md`
```

## When to update

- After adding a new prompt collection (`prompts/{domain}/collection-*.md`)
- After adding or updating a sampler (`book/samplers/`)
- After adding a new domain folder under `prompts/`
- After restructuring files or folders (e.g. moving files, renaming)
- After updating book configs (`full-book.json`, `show-case.json`)
- After adding or modifying `.agent/rules/` or `.agent/workflows/`
- After fixing prompt quality issues or safety disclaimers
