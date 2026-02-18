# Changelog

All notable changes to the Tamil Prompt Standard project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

- Initial setup of `.github/workflows/` for automated markdown linting
- Project documentation structure with `.agent/` folder for rules and workflows

### Changed

- Organized taxonomy framework in `.agent/rules/taxonomy.md`
- Established file naming conventions in `.agent/rules/file-naming.md`

### Security

- Added safety guidelines for healthcare, legal, and financial domains in `.agent/rules/safety.md`

---

## [1.1.0] - 2026-02-17

### Added

- **New Domains**: Added comprehensive prompt collections for:
  - Agriculture & Rural Development (`/prompts/agriculture/`)
  - Daily Life (`/prompts/daily/`)
  - Employment & Career (`/prompts/employment/`)
  - Law & Governance (`/prompts/law/`)
- **Expanded Domains**: Added additional role collections to existing domains:
  - Health & Wellness (`/prompts/health/`) — nurses, counsellors, AYUSH
  - Education & Learning (`/prompts/edu/`) — middle/high school, competitive exams, educators
- **Documentation**: 
  - Updated root `README.md` with detailed sections for all 9 domains.
  - Added individual `README.md` files for each new domain subdirectory.
- **CI/CD**: Fixed GitHub Actions workflow permissions for automated linting fixes.

### Changed

- Expanded `README.md` "Quick Stats" to reflect 38+ files and 700+ prompts.
- Reorganized `README.md` structure to better categorize prompt collections.

---

## [1.0.0] - 2026-02-17

### Added

- **Initial Release** of Tamil Prompt Standard framework
- 8-layer taxonomy for prompt engineering (Role, Domain, Skill Level, Intent, Tone, Format, Constraints, Safety)
- Comprehensive prompt collection organized by domain:
  - Business (`/prompts/biz/`)
  - Education (`/prompts/edu/`)
  - Health (`/prompts/health/`)
  - Literature (`/prompts/lit/`)
  - Technology (`/prompts/tech/`)
- Detailed documentation:
  - README with project overview
  - TAXONOMY.md with framework specifications
  - CONTRIBUTING.md with contribution guidelines
  - Multiple guidebooks (cheatsheet, handbook, engineering framework)
- Community resources and internal drafts
- License: CC-BY-SA-4.0 International

### Documentation

- Tamil Prompt Engineering Framework complete
- Contribution workflow guidelines for new prompts
- Safety and ethics guidelines for domain-sensitive content

---

## Guidelines for Future Changes

### When to Update CHANGELOG

- **Added**: New features, prompt collections, or documentation
- **Changed**: Modifications to taxonomy, frameworks, or guidelines
- **Fixed**: Bug fixes in prompt structure or documentation errors
- **Deprecated**: Features or prompts no longer recommended
- **Removed**: Removal of prompts or framework elements
- **Security**: Important security fixes or policy updates

### Version Numbering

- **MAJOR** (X.0.0): Breaking changes to taxonomy or framework structure
- **MINOR** (0.X.0): New features or non-breaking additions
- **PATCH** (0.0.X): Bug fixes and documentation updates

### Example Entry

```markdown
## [X.Y.Z] - YYYY-MM-DD

### Added
- New prompt collection for domain X
- Guideline update for L5 (Tone)

### Changed
- Updated taxonomy rules for clarity

### Fixed
- Corrected safety disclaimers for healthcare domain
```

---

**Last Updated:** 2026-02-17
