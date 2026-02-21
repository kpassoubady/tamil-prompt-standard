# Changelog

All notable changes to the Tamil Prompt Standard project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

- **Beginners chapter** (`book/foundations/prompt-lite-beginners.md`) — "Chapter 0: முதன்முறை பயனர்களுக்கான வழிகாட்டி" introducing the 3-step Prompt Lite model (யார்·என்ன·எப்படி) with Tamil examples for students, farmers, elders, and homemakers; includes upgrade path to APE/RACE/8-Layer Taxonomy
- **Hallucination guide** (`book/foundations/tamil-hallucination-guide.md`) — Appendix covering AI reliability in Tamil: 5 hallucination-prone domains, 3 self-correction prompts, Tamil fact-checking resources, and a detection flowchart
- **Mermaid diagrams** (`book/images/diagrams/`) — 8 rendered PNG diagrams (800px, Kindle-optimised): `taxonomy-radial`, `framework-selector`, `prompt-quality-pipeline`, `hallucination-detection`, `lite-to-full-upgrade`, `tamil-ai-timeline` (timeline), `iterative-refinement-loop` (flowchart), `prompt-chaining-flow` (sequenceDiagram)
- **`book/book-introduction.md`**: added Tamil AI Evolution timeline diagram section (தமிழ் AI வளர்ச்சி)
- **`book/foundations/prompt-engineering-techniques.md`**: added Section 3 — மீள்சீரமைப்பு & கட்டளை சங்கிலி (iterative refinement loop + prompt chaining diagrams with explanations)
- **`configs/run-book-builder.sh`**: added mmdc pre-render loop to regenerate all diagrams before each build
- **Refinement roadmap** (`specs/areas-for-refinement.md`) — full roadmap for v2.0 improvements: visual density, beginner onboarding, hallucination handling, master image prompt, and 6 community engagement ideas
- **Hero images** (`book/images/heroes/`) — 12 domain hero PNGs generated and verified: `hero-intro`, `hero-health`, `hero-edu`, `hero-agriculture`, `hero-employment`, `hero-law`, `hero-daily`, `hero-tech`, `hero-biz`, `hero-lit`, `hero-hallucination`, `hero-beginners`

### Changed

- **Hero image refs** inserted into `book/book-introduction.md`, all 10 sampler files, `book/foundations/prompt-lite-beginners.md`, and `book/foundations/tamil-hallucination-guide.md` — each file now embeds its domain hero PNG at the top
- **Show-case config** (`configs/tamil-prompt-engineering-book-show-case.json`): added "Chapter 0: Beginners Guide" before Part I; added "Appendix E: AI Reliability Guide"
- **Full-book config** (`configs/tamil-prompt-engineering-book-full-book.json`): added "Chapter 0: Beginners Guide" before Part I; added "Appendix F: AI Reliability Guide"
- **All 10 sampler files** (`book/samplers/`): added contextual Real Story (`💡 உண்மை கதை`) and Quick-Start (`🚀 இன்றே முயற்சிக்கலாம்`) cards — health, agriculture, education, daily, employment, tech, business, law, literature, social media
- **Beginners chapter** (`book/foundations/prompt-lite-beginners.md`): added Learning Objectives card, Chapter Summary table with பொதுவான தவறுகள், and Knowledge Check (`🧠 அறிவு சோதனை`) section with collapsible `<details>` answers
- **Hallucination guide** (`book/foundations/tamil-hallucination-guide.md`): added Learning Objectives card and Chapter Summary table with நினைவில் கொள்ளவும் titled list
- **Rule file** (`.agent/rules/markdown-formatting.md`): added Chapter Structure skeleton, `[!CAUTION]` admonition, Blockquote Lists, Titled Lists, Knowledge Check pattern, Chapter Summary table template, Images section (mmdc command), `<kbd>` keyboard tags, table alignment conventions; corrected Bilingual Labels section to reflect Tamil-first policy
- **CLAUDE.md Rule 4**: added `[!IMPORTANT]`/`[!CAUTION]`, Blockquote Lists, Titled Lists, `<kbd>` tags, and end-of-chapter (அறிவு சோதனை + அத்தியாய சுருக்கம்) requirement

- Add `.claude/commands/` — three project-specific slash commands: `sync-configs`, `create-feature-pr`, `update-changelog`
- Add `specs/` folder — feature specs and versioned design docs (`image-prompt-v1.0.md`, `image-prompt-v2.0.md`, `prompt-language-display.md`)
- Add `design/` folder — cover image drafts (`front-cover-3` through `front-cover-7`)
- Add `book/foundations/` — moved 6 root-level foundation guides into dedicated subfolder under `book/`
- Add `bookbuilder-output/` to `.gitignore`

### Changed

- Move `docs/image-prompt-v1.0.md`, `docs/image-prompt-v2.0.md`, `docs/prompt-language-display.md` → `specs/`
- Move `docs/front-cover-3..7.png` → `design/`
- Move `prompt-engineering-basics.md`, `prompt-engineering-frameworks.md`, `prompt-engineering-techniques.md`, `tamil-cheatsheet-prompt-engineering.md`, `tamil-framework-prompt-engineering.md`, `tamil-handbook-prompt-engineering.md` from repo root → `book/foundations/`
- Update all path references in `configs/tamil-prompt-engineering-book-full-book.json`, `configs/tamil-prompt-engineering-book-show-case.json`, `configs/tamil-prompt-engineering-book-quick-test.json`, and `README.md` to reflect new `book/foundations/` paths
- Rename `tamil-prompt-engineering-book.json` → `tamil-prompt-engineering-book-full-book.json` and `tamil-prompt-engineering-book-2-chaps.json` → `tamil-prompt-engineering-book-quick-test.json` for clarity
- Update `CLAUDE.md` project structure to document `book/foundations/`, `design/`, `specs/`, `docs/`, `scripts/` folders
- Update `.agent/workflows/create-new-prompt.md` — modernise prompt template to `[!PROMPT]` block format; add Step 7 (sync configs + README) and Step 8 (update changelog)

### Removed

- Remove `configs/tamil-prompt-engineering-book-default.json` — redundant config
- Remove `configs/tamil-prompt-engineering-book-show-case-toc-tamil-not-works.json` — debugging artefact

### Added

- **AI Glossary appendix** added to showcase config (`configs/tamil-prompt-engineering-book-show-case.json`) as "இணைப்பு ஈ: செய்யறிவுக் கலைச்சொற்கள்" — sourced from `docs/AI glossary_ செய்யறிவுக் கலைச்சொற்கள்.md`

### Changed

- **Showcase config** (`configs/tamil-prompt-engineering-book-show-case.json`): renamed from `short`; all section names converted to Tamil (`முன் அட்டை`, `பகுதி ஒன்று`…`பகுதி பதினொன்று`, `இணைப்பு அ/ஆ/இ/ஈ`, `ஆசிரியர் பற்றி`, `பின் அட்டை`); TOC subtitle changed to `உள்ளடக்க அட்டவணை`; answers label changed to `விடைகள்:`; book title set to `தமிழில் செய்யறிவைக் கட்டளையிடும் கலை`
- **All 9 sampler files** (`book/samplers/`): removed ~100 redundant English parenthetical translations from section headings and prompt body text. Kept English only for genuine technical terms (SOAP, EMR, ICD, ATS, STAR, SWOT, USP, GPA, API, Bloom's Taxonomy, JSON, JWT, OAuth) and `[!NOTE]` metadata keys

### Added (continued)

- **New Domain: Social Media (`prompts/social/`)** — 8 prompt collections, 155+ prompts covering:
  - `collection-whatsapp.md` — 20 prompts: personal messages, broadcast, group management, WhatsApp Business, status
  - `collection-youtube.md` — 20 prompts: SEO titles, descriptions, Shorts scripts, thumbnails, community posts, channel growth
  - `collection-instagram.md` — 20 prompts: captions, Reels, Stories, Carousel, Shopping, bio, hashtags
  - `collection-shortform-video.md` — 20 prompts: cross-platform Reels/Shorts/TikTok/Moj hooks, scripts, CTA
  - `collection-facebook.md` — 20 prompts: personal posts, pages, groups, events, Marketplace, Live
  - `collection-linkedin.md` — 20 prompts: thought leadership, job posts, DMs, recommendations, profile optimization
  - `collection-regional-platforms.md` — 20 prompts: Koo, ShareChat, Moj, Telegram, Pinterest, Twitter/X
  - `collection-community-management.md` — 20 prompts: comment replies, crisis communication, troll handling, UGC
- Added `Part XI: Social Media Prompts` to both book configs
- Disabled MD051 in `.markdownlint.json` — Tamil heading anchors are valid in pandoc but incorrectly flagged by markdownlint's anchor algorithm

- Initial setup of `.github/workflows/` for automated markdown linting
- Project documentation structure with `.agent/` folder for rules and workflows
- `book/taxonomy-framework.md` — dedicated book chapter combining formal spec from `TAXONOMY.md` and bilingual detail from `.agent/rules/taxonomy.md`, with all agent-internal references removed

### Changed

- Organized taxonomy framework in `.agent/rules/taxonomy.md`
- Established file naming conventions in `.agent/rules/file-naming.md`
- Full book config (`configs/tamil-prompt-engineering-book.json`): Appendix D now uses `book/taxonomy-framework.md` instead of `TAXONOMY.md`; removed `.agent/rules/taxonomy.md` from Appendix A (agent-internal file, not intended for book readers)
- Short/showcase book config (`configs/tamil-prompt-engineering-book-short.json`): removed Appendix A (all `.agent/rules/` files) and Appendix B (workflows); consolidated to 3 appendices: Cheatsheet (A), Taxonomy Framework (B), Handbook (C)
- Book introduction: updated Appendix D description to reflect new chapter content

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
