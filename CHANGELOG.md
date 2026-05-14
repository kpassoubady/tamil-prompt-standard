# Changelog

All notable changes to the Tamil Prompt Standard project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

- **AI glossary terms** (`docs/glossary/AI-tamil-glossary.md`): added 9 modern AI terms — Autonomous Agents, Context Window, Embeddings, Few-shot prompting, Fine-tuning, Model Weights, Reinforcement Learning, Retrieval-Augmented Generation (RAG), Zero-shot prompting
- **AI glossary — book terms** (`docs/glossary/AI-tamil-glossary.md`): added Agent (மாற்றும் முகவர்), Transformer (மாற்றுநர்), Chain of Thought (படிநிலைச் சிந்தனை), Deep Learning (ஆழ்திறன் கற்றல்), Prompt (கட்டளை / தூண்டுவினா), Critical Thinking Question (திறன்நோக்குவினா), Iterative Refinement, Learning Objective, Algorithm, Debugging, Code, Documentation, Programming Language, Social Media, Testing; added third column **எப்படி வந்தது? / விளக்கம்** with etymology/definitions
- **AI glossary — modern AI concepts** (`docs/glossary/AI-tamil-glossary.md`): added Attention (கவனம்), Self-Attention (தன்-கவனம்), Temperature (கற்பனை அளவு / சீரின்மை அளவு / புதுமைத்திறன் அளவு / பல்வகைமை அளவு), Multimodal (பன்முகமாதிரி), Foundation Model (அடிப்படை மாதிரி), Knowledge Cutoff (அறிவு வரம்பு), Prompt Injection (தூண்டுவினா ஊடுருவல்), System Prompt (அமைப்புத் தூண்டல்), User Prompt (பயனர் தூண்டல்) — each with Tamil description in column 3

- **AI glossary — Agent terminology refinement** (`docs/glossary/ai-tamil-glossary.md`): linguistic correction — replaced "முகவர்" (human-agent suffix; means representative) with "செயற்பாட்டாலி" (non-human/machine agent; -ஆலி suffix as in செயலி, கணினி) across all AI-agent entries since AI agents are software, not human representatives. Updated Agent (செயற்பாட்டாலி primary), Agent Orchestration (செயற்பாட்டாலி ஒருங்கிணைப்பு), AI Agents → "AI Agent / AI Agents" (செய்யறிவுச் செயற்பாட்டாலி(கள்)), Autonomous Agents (தன்னாட்சிச் செயற்பாட்டாலிகள்), and Reinforcement Learning description for consistency. Kept old "முகவர்" forms as alternatives for backward recognition.
- **AI glossary — advanced reasoning, optimization, and DeepSeek-era terms** (`docs/glossary/ai-tamil-glossary.md`): added 23 new AI terms — Abstraction (புறவயமாக்கம்), DeepFake (ஆழ்பொய்), DeepSeek/company (ஆழ்தேடி), DeepThink (ஆழ்சிந்தனை), Distillation (சுரக்காய்வு), Emergence (தோன்றுமியல்பு), Explainability (விளக்கத்தகவு), GraphRAG (வரைபட RAG), Hallucination Rate (மதிமயக்க வீதம்), Inference Scaling (முடிவுருவாக்க நீட்சி), Jailbreak (விதிவிலக்கு ஊடுருவல்), Mixture of Depths/MoD (ஆழக் கலவை), MoE Routing (வல்லுநர் வழிப்படுத்தல்), Prompt Chaining (தூண்டல் சங்கிலி), Pruning (வெட்டித்திருத்தம்), Reasoning Chain (ஏரணச் சங்கிலி), RL from AI Feedback/RLAIF (AI பின்னூட்ட வலுவூட்டல் கற்றல்), Robustness (வலுவுறுதி), Scalar (தன்மதிப்பு), Self-Consistency (தன்முறை ஒருமை), Tensor (பன்மதிப்புக் கணம்), Test-Time Compute (சோதனைநேரக் கணிப்பு), Tree of Thoughts/ToT (சிந்தனை மரம்); updated Fairness primary to நேர்மை (was நீதிமை which means justice), updated Quantization primary to கணிய அளவாக்கம் (more precise); skipped Context Length (already an alternative in Context Window entry). Glossary now ~247 entries.
- **AI glossary — recommendation-doc additions** (`docs/glossary/ai-tamil-glossary.md`): added 28 modern AI/LLM ecosystem terms with Tamil explanations from `docs/glossary/missing-terms.csv` — Agent Orchestration, AI Copilot, AI Sandbox, Autonomous Workflow, Beam Width, Dense Model, Deterministic Output, Diffusion Model, Federated Learning, Image Generation, Knowledge Base, Knowledge Graph, KV Cache, MCP (Model Context Protocol), Neural Search, OCR (Optical Character Recognition), On-device AI, Reasoning Model, Sampling Strategy, Semantic Kernel, Speculative Decoding, Speech Recognition, Speech-to-Text (STT), Stable Diffusion, Text-to-Speech (TTS), Token Limit, Toolformer, Vector Embeddings. Skipped 4 duplicates already in glossary (Edge AI, MoE, Sparse Model, Synthetic Data). Glossary now ~224 entries.
- **AI glossary Version 2** (`docs/glossary/ai-tamil-glossary-ver2.md`): created standardized v2 from author's cleaned-up CSV (`docs/glossary/AI-Tamil-Glossary-Terms.csv`) — 195 entries with consistent sandhi (புணர்ச்சி) rules, split merged concepts (Agentic AI / AI Agents separated), all entries have definitions, Tamil-first notes, standardized `Full Name (ACRONYM)` format. 4-column structure: English | Primary Tamil Word | Alternative Tamil Words | Notes. Added Probabilistic Reasoning (நிகழ்தகவு ஏரணம்) as separate entry, restoring the pair with Deterministic Reasoning that was lost in the v→v2 transition. Also synced Probabilistic Reasoning into the v1 glossary.
- **AI glossary — inference & long context** (`docs/glossary/AI-tamil-glossary.md`): added 2 terms — Inference (அனுமானம் / முடிவுருவாக்கம்), Long Context (நீண்ட சூழல்) — both with Tamil explanations
- **AI glossary — core ML vocabulary** (`docs/glossary/AI-tamil-glossary.md`): added 40 core ML/AI terms with Tamil explanations — Activation Function, Adapter, API, Autoencoder, Autoregressive Model, Batch Size, Beam Search, Classification, Clustering, Cross-Entropy, Decoder, Dense Layer, Distribution Shift, Dropout, Encoder, Fairness, Feature Extraction, Fine-Grained, Gradient, Grounding, Hyperparameter, Instruction Tuning, Interpretability, Latency, Layer, Learning Rate, LoRA, Machine Translation, Model Compression, Overparameterization, Parameter, Precision, Pretraining, Recall, Sequence-to-Sequence, Softmax, Sparse Model, Validation Set, Weight Decay, Zero-shot Learning
- **AI glossary — vibe coding & schema** (`docs/glossary/AI-tamil-glossary.md`): added 3 new AI terms with Tamil explanations — Vibe Coding (உள்ளுணர்வு நிரலாக்கம் / உரைவழி நிரலாக்கம்), Vibe Deploying (உடனடி மென்பொருள் வெளியீடு), Logical Schema (ஏரண வரைவு / ஏரண மாதிரி) — Logical Schema kept separate from Ontology entry since definitions differ (Logical Schema = data/rule structure; Ontology = real-world entity relationships)
- **AI glossary — ML fundamentals, safety, and modern AI** (`docs/glossary/AI-tamil-glossary.md`): added 21 new AI terms with Tamil explanations — Agentic AI / AI Agents (செயலூக்க செய்யறிவு), AI Safety (செய்யறிவுப் பாதுகாப்பு), Benchmark (அளவுகோல்), Constitutional AI (அரசியல் சட்ட செய்யறிவு), Contextual Embedding (சூழல் பொதிவு), Data Augmentation (தரவு விரிவாக்கம்), Edge AI (ஓரத்து செய்யறிவு), Emergent Abilities (தோன்றும் திறன்கள்), Epoch (சுழற்சி / யுகம்), Ethics in AI (செய்யறிவு நெறிமுறை), Evaluation (மதிப்பீடு), Gradient Descent (சரிவு இறக்கம்), Hallucination Mitigation (மதிமயக்கத் தடுப்பு), Leaderboard (முன்னிலைப் பட்டியல்), Loss Function (இழப்புச் சார்பு), Machine Learning (இயந்திரக் கற்றல்), Parameter-Efficient Fine-Tuning/PEFT (எடை-சிக்கன நுண்திருத்தம்), Red Teaming (சிவப்பு அணி சோதனை), Supervised Learning (மேற்பார்வையிட்ட கற்றல்), Transfer Learning (பரவல் கற்றல்), Unsupervised Learning (மேற்பார்வையற்ற கற்றல்); updated 6 existing entries — Agent (+ செயல்முகவர்), Alignment (replaced with நெறிசீரமைப்பு / மதிப்புச் சீரமைப்பு), Cloud Computing (+ முகில் கணினியியல்), Mixture of Experts/MoE (+ வல்லுநர் கலவை), RLHF (+ மனித வெகுமதி வலுவூட்டல் கற்றல்), Transformer (+ மாற்றி)
- **AI glossary — reasoning & ontology terms** (`docs/glossary/AI-tamil-glossary.md`): added 7 reasoning/prompting terms with Tamil explanations — Abductive Reasoning (ஊக ஏரணம்), Deductive Reasoning (பகுப்பு ஏரணம்), Deterministic vs. Probabilistic Reasoning (திட்டவட்ட ஏரணம் / நிகழ்தகவு ஏரணம்), Emotional Prompting (உணர்வுத் தூண்டுதல்), Inductive Reasoning (தொகுப்பு ஏரணம்), Logical Reasoning (ஏரணப் பகுத்தறிதல்), Ontology (பொருள் உறவுமுறை அமைப்பு); Logical Schema intentionally skipped (logic terms already exist in `docs/glossary/computing-glossary.md`)
- **AI glossary — NLP & RAG terms** (`docs/glossary/AI-tamil-glossary.md`): added 7 new NLP/retrieval terms with Tamil explanations — Chunking (உரைத்துண்டாக்கம்), Coreference Resolution (பரிமாற்றுச் சுட்டுத்தீர்வு / சுட்டுப்பெயர் இணைப்பு), Part-of-Speech (POS) Tagging (இலக்கணக் குறியிடுதல்), Relation Extraction (தொடர்பு பிரித்தெடுத்தல்), Semantic Textual Similarity (பொருள்சார் உரை ஒப்புமை), Synthetic Data (செயற்கைத் தரவு / புனைவுத் தரவு), Vector Search (திசையன் தேடல் / பொருள்சார் தேடல்); expanded Fine-tuning with new Tamil alternatives (நுண்-சீராக்கம் / சிறப்புப் பயிற்சி) and explanation; expanded Retrieval-Augmented Generation (RAG) with alternative (மீட்டெடுப்பு சார்ந்த உரை உருவாக்கம்) and explanation; removed redundant **NLP Tasks** entry (covered by Natural Language Processing + specific task entries)
- **AI glossary — affective AI & emotion terms** (`docs/glossary/AI-tamil-glossary.md`): added 15 AI terms sourced from author's Tholkappiyam research article — Affective AI (உணர்வுசார் செய்யறிவு), Affective Computing (உணர்வுசார் கணினியியல்), Anomaly Detection (இயல்பு விலகல் கண்டறிதல்), Annotation Schema (தரவு குறியீட்டு வரைவு), Bias (சாய்வு / பாரபட்சம்), Culturally-aware AI (பண்பாட்டுச் சார்பு செய்யறிவு), Data Modeling (தரவு மாதிரியாக்கம்), Data Points (தரவுப்புள்ளிகள்), Emotion Classification (உணர்வு வகைப்பாடு), Emotion Detection (உணர்வுக் கண்டறிதல்), Explainable AI/XAI (விளக்கமளிக்கத் தக்க செய்யறிவு), Facial Action Coding System/FACS (முகச்செயல் குறியீட்டு முறைமை), Facial Expression Recognition (முகபாவ அங்கீகாரம்), Finite State Machine/FSM (நிலை இயந்திரம்), Sentiment Analysis (உணர்வுப் பகுப்பாய்வு)
- **AI glossary — training & sampling terms** (`docs/glossary/AI-tamil-glossary.md`): added 17 more AI terms with Tamil explanations — Alignment (நெறிமுறைச் சீரமைப்பு), Artificial General Intelligence/AGI (செய்சாலறிவு), Artificial Super Intelligence/ASI (செய்வியனறிவு), Blockchain (கட்டச்சங்கிலி), Direct Preference Optimization/DPO (நேரடி விருப்ப உகப்பாக்கம்), Guardrails (பாதுகாப்பு வேலிகள்), Internet of Things/IoT (பொருள்களின் பிணையம்), Meta Prompt (முதன்மைக் கட்டளை), Overfitting (மிகைப்பொருத்தம்), Perplexity (திகைப்பளவு), Quantization (அளவாக்கம்), Reinforcement Learning from Human Feedback/RLHF (மனிதக் கருத்துப்பொதிந்த வலுவூட்டல் கற்றல்), Reward Model (வெகுமதி மாதிரி), Top-K Sampling (உயர்-K மாதிரி எடுத்தல்), Top-P/Nucleus Sampling (அணுகுத் தொகுதி மாதிரி எடுத்தல்), Vector Database (திசையன் தரவுத்தளம்); expanded Context Window entry with additional Tamil alternatives (சூழல் நீளம் / உள்ளீட்டு வரம்பு) and explanation

### Changed

- **AI glossary capitalization** (`docs/glossary/AI-tamil-glossary.md`): capitalized first letter of all English terms for consistency (e.g., `token` → `Token`, `prompt engineering` → `Prompt Engineering`, `synchronous` → `Synchronous`)

### Removed

- **AI glossary — non-AI personal-development terms** (`docs/glossary/AI-tamil-glossary.md`): removed 27 Self-* terms (Self-development, Self-respect, Self-esteem, etc.) — these are personal-development vocabulary, not AI terms. Kept only Self-Attention (an AI architecture term). Recommend moving the personal-development cluster to a separate glossary if used in book chapters
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
