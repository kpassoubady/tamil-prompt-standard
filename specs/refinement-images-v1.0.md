# தமிழ் AI புத்தகம் — Domain Hero Image Spec v1.0

> **நிலை:** Ready for Image Generation
> **பதிப்பு:** v1.0 — 2026-02-20
> **நோக்கம்:** 13 hero illustrations for the showcase book — generation prompts, file names, storage paths, and insertion points

---

## உள்ளடக்க அட்டவணை

1. [Storage & Path Structure](#storage--path-structure)
2. [Technical Specs](#technical-specs)
3. [Image File Table](#image-file-table)
4. [Insertion Points](#insertion-points)
5. [Master Prompt Template](#master-prompt-template)
6. [Per-Domain Generation Prompts](#per-domain-generation-prompts)

---

## Storage & Path Structure

```
book/
  images/
    heroes/           ← CREATE this folder
      hero-intro.jpg
      hero-beginners.jpg
      hero-hallucination.jpg
      hero-health.jpg
      hero-edu.jpg
      hero-agriculture.jpg
      hero-employment.jpg
      hero-law.jpg
      hero-daily.jpg
      hero-tech.jpg
      hero-biz.jpg
      hero-lit.jpg
      hero-social.jpg
```

---

## Technical Specs

| Parameter | Value | Reason |
|-----------|-------|--------|
| **Width** | 1024px | Bookbuilder resizes to max 800px wide |
| **Height** | 768px (4:3) or 1024px (square) | Good chapter header proportion |
| **Aspect ratio** | 4:3 landscape preferred | Fits chapter header without excessive vertical space |
| **Format** | PNG or JPEG | Bookbuilder auto-converts to JPEG at 75% quality |
| **Colour mode** | sRGB | Required for screen + print |
| **Min resolution** | 96dpi | Bookbuilder handles downscaling |

> [!NOTE]
> The bookbuilder will automatically convert to JPEG at 75% quality and resize to max 800×1000px. Generate at 1024×768px — no need for 300dpi print resolution.

---

## Image File Table

| # | File Name | Used In | Markdown Reference |
|---|-----------|---------|-------------------|
| 1 | `hero-intro.jpg` | `book/book-introduction.md` | `images/heroes/hero-intro.jpg` |
| 2 | `hero-beginners.jpg` | `book/foundations/prompt-lite-beginners.md` | `../images/heroes/hero-beginners.jpg` |
| 3 | `hero-hallucination.jpg` | `book/foundations/tamil-hallucination-guide.md` | `../images/heroes/hero-hallucination.jpg` |
| 4 | `hero-health.jpg` | `book/samplers/health-sampler.md` | `../images/heroes/hero-health.jpg` |
| 5 | `hero-edu.jpg` | `book/samplers/edu-sampler.md` | `../images/heroes/hero-edu.jpg` |
| 6 | `hero-agriculture.jpg` | `book/samplers/agriculture-sampler.md` | `../images/heroes/hero-agriculture.jpg` |
| 7 | `hero-employment.jpg` | `book/samplers/employment-sampler.md` | `../images/heroes/hero-employment.jpg` |
| 8 | `hero-law.jpg` | `book/samplers/law-sampler.md` | `../images/heroes/hero-law.jpg` |
| 9 | `hero-daily.jpg` | `book/samplers/daily-sampler.md` | `../images/heroes/hero-daily.jpg` |
| 10 | `hero-tech.jpg` | `book/samplers/tech-sampler.md` | `../images/heroes/hero-tech.jpg` |
| 11 | `hero-biz.jpg` | `book/samplers/biz-sampler.md` | `../images/heroes/hero-biz.jpg` |
| 12 | `hero-lit.jpg` | `book/samplers/lit-sampler.md` | `../images/heroes/hero-lit.jpg` |
| 13 | `hero-social.jpg` | `book/samplers/social-sampler.md` | `../images/heroes/hero-social.jpg` |

---

## Insertion Points

### Sampler files (`book/samplers/*.md`)

Insert **after the intro sentence, before `> [!TIP]`**:

```markdown
# 🏥 சுகாதாரம் & நலன்

> [!NOTE]
> **துறை (Domain):** சுகாதாரம் (`health`)
> **பாதுகாப்பு (Safety):** L8 அடுக்கு கட்டாயம் — மருத்துவ ஆலோசனை அல்ல

மருத்துவர்கள், செவிலியர்கள்... [intro sentence ends here]

![சுகாதாரம் — AI உதவியாளர்](../images/heroes/hero-health.jpg)

> [!TIP]
> **முழு தொகுப்பு GitHub-ல்:** ...
```

### `book/book-introduction.md`

Insert **after the `## யாருக்கானது?` table, before `## இந்த நூலை எப்படிப் படிப்பது?`**:

```markdown
![தமிழ் AI கட்டளை — அனைவருக்கும்](images/heroes/hero-intro.jpg)
```

### `book/foundations/prompt-lite-beginners.md`

Insert **after `## AI என்பது உங்கள் உதவியாளர்` section, before `> **🎯 கற்றல் நோக்கங்கள்**`**:

```markdown
![தொடக்கநிலை AI பயன்பாடு](../images/heroes/hero-beginners.jpg)
```

### `book/foundations/tamil-hallucination-guide.md`

Insert **after `## மதிமயக்கம் என்றால் என்ன?` section, before `---`**:

```markdown
![AI மதிமயக்கம் — விழிப்புணர்வு](../images/heroes/hero-hallucination.jpg)
```

---

## Master Prompt Template

Use this base for all 13 images. Replace `{SUBJECT}` with the domain-specific subject from the table below.

```prompt
Create a warm, inspiring digital illustration for a Tamil AI prompt engineering book chapter header.

Style: Flat design with subtle gradients. Clean, modern, South Indian cultural authenticity.
Palette: Deep blue (#0066CC) + saffron (#FF8C00) + soft white background. Tamil script woven subtly into background as a design element.
Mood: Hopeful, accessible, modern — "AI is a tool for everyone"
Composition: One clear focal point. Person + technology. Plenty of breathing room.

Subject: {SUBJECT}

Technical requirements:
- Size: 1024 × 768px, landscape orientation
- No text overlays — text will be added by the book layout
- Soft, light background suitable for white text overlay if needed
- Tamil cultural details: appropriate clothing (saree, dhoti, kurta), Tamil Nadu environment (paddy fields, kovil gopuram silhouette, city streets, etc.)
- Avoid: stereotypes, caste symbols, religious iconography as focal point
- Subtle: one or two Tamil letterforms (அ, தமிழ், AI) blended into background as artistic texture
- Tamil letterforms in background: very subtle, low opacity (≤20%) — used as texture, not focal element.

```

---

## Per-Domain Generation Prompts

### 1. `hero-intro.jpg` — Introduction

```prompt
[Use master prompt with Subject:]
A diverse group of Tamil people — student, doctor, farmer, elder, young professional — gathered around a glowing tablet showing Tamil text. The AI is a warm presence, not a robot. City skyline with a hint of Tamil Nadu architecture in the soft background. Feeling: community, curiosity, empowerment.
```

---

### 2. `hero-beginners.jpg` — Beginners Guide

```prompt
[Use master prompt with Subject:]
A Tamil woman in her 40s sitting at a kitchen table, confidently typing on a phone or laptop for the first time. A glowing thought bubble shows simple Tamil text (யார்? என்ன? எப்படி?). Expression: delighted surprise — "this actually works!" Warm home interior, golden afternoon light.
```

---

### 3. `hero-hallucination.jpg` — AI Hallucination / Critical Thinking

```prompt
[Use master prompt with Subject:]
A Tamil person holding up a magnifying glass to a glowing AI chat screen. Half the screen shows a confident AI response; the other half shows a subtle question mark or a fact-check icon. Expression: thoughtful, curious, discerning — not alarmed. Mood: critical thinking is empowering, not frightening.
```

---

### 4. `hero-health.jpg` — Healthcare

```prompt
[Use master prompt with Subject:]
A Tamil woman doctor in a white coat and saree, reviewing patient data on a tablet with a warm, caring expression. A soft medical clinic background — clean, bright. The tablet screen faintly shows Tamil text. Mood: trust, care, modern healthcare accessible in Tamil.
```

---

### 5. `hero-edu.jpg` — Education

```prompt
[Use master prompt with Subject:]
A Tamil school student (12–14 years old) sitting at a wooden desk, eyes wide with discovery, looking at a glowing book or tablet. AI thought bubbles float above showing Tamil text explanations. Bright classroom with sunlight through windows. Mood: wonder, learning joy, possibility.
```

---

### 6. `hero-agriculture.jpg` — Agriculture

```prompt
[Use master prompt with Subject:]
A Tamil farmer in a dhoti and turban standing at sunrise in a green paddy field, holding a smartphone showing a Tamil text screen. One hand on the crop, one on the phone — confident and curious. Warm golden light, lush green field, distant coconut trees. Mood: hope, modern farming, technology meeting tradition.
```

---

### 7. `hero-employment.jpg` — Employment

```prompt
[Use master prompt with Subject:]
A young Tamil professional (22–25 years old) sitting at a cafe table with a laptop, smiling confidently while polishing a resume on screen. The screen shows Tamil text. City background through the window. Neat, contemporary clothing. Mood: confidence, opportunity, first step into career.
```

---

### 8. `hero-law.jpg` — Law & Governance

```prompt
[Use master prompt with Subject:]
A Tamil advocate in a black coat and white collar standing confidently at the base of tall courthouse steps at golden hour. A gleaming brass scales-of-justice sculpture sits on a stone plinth beside them — the focal point of the image. No phones, tablets, books, or screens anywhere in the scene. The advocate's hands are at their sides or resting on the plinth — nothing to read. Warm golden-hour light on sandstone columns behind them. Mood: calm authority, clarity, justice within reach for everyone.
```

> [!NOTE]
> **v1.1 prompt (text-hallucination fix):** Original prompt had a tablet with text on screen — image generators hallucinate Tamil/legal text. New prompt removes all text-bearing surfaces (no screens, no open books, no signs). Scales sculpture is the sole symbolic anchor.

---

### 9. `hero-daily.jpg` — Daily Life

```prompt
[Use master prompt with Subject:]
A Tamil family — grandmother, parent, and grandchild — gathered around a kitchen table. The grandchild shows the grandmother how to use a phone with a Tamil AI chat screen. Warm domestic interior, afternoon light, steel vessels on shelf, kolam at the doorway. Mood: intergenerational warmth, technology bridging generations.
```

---

### 10. `hero-techhero-tech.jpg` — Technology

```prompt
[Use master prompt with Subject:]
A Tamil developer at a standing desk at night, focused on dual monitors. One screen shows code; the other shows Tamil text flowing — documentation or AI output. Subtle holographic Tamil letterforms rising from the keyboard. Dark, cool-toned background with accent lighting. Mood: craft, focus, pride in technical mastery.
```

---

### 11. `hero-biz.jpg` — Business

```prompt
[Use master prompt with Subject:]
A Tamil woman entrepreneur standing at her small market stall (silk textiles or tiffin food), looking at a phone showing analytics charts and Tamil text. The stall is colourful and bustling. Digital charts hover subtly above the goods like a hologram. Mood: growth, hustle, smart business in Tamil.
```

---

### 12. `hero-lit.jpg` — Literature & Language

```prompt
[Use master prompt with Subject:]
A Tamil poet sitting under a large banyan tree at dusk, writing in a notebook. Tamil letters rise gently from the page like fireflies and dissolve into the sky. An ancient palm-leaf manuscript (ஓலைச்சுவடி) lies nearby. Warm amber and violet twilight. Mood: beauty of Tamil language, poetry as eternal light.
```

---

### 13. `hero-social.jpg` — Social Media

```prompt
[Use master prompt with Subject:]
A young Tamil content creator (20s) holding a phone horizontally to film, smiling into the camera. Behind them: a soft blurred background of a Tamil street or kitchen. The phone screen faintly shows a Tamil caption being composed with AI. Floating Tamil hashtags and heart icons drift outward. Mood: energy, creativity, Tamil voice going viral.
```

---

## After Image Generation — Checklist

Once you have generated and saved the images to `book/images/heroes/`:

- [ ] Verify all 13 files exist at the correct paths
- [ ] Insert `![alt text](path)` lines into each file at the specified insertion points (see §4)
- [ ] Run `npx markdownlint-cli2 "book/**/*.md"` — image lines should not trigger lint errors
- [ ] Build the showcase PDF and verify images render at correct width and aspect ratio
- [ ] If any image appears too tall or misaligned, add `{width=100%}` attribute (if bookbuilder supports it) or crop the source image

---

> [!NOTE]
> **Domain hero images are optional for book functionality** — all prompts, real stories, and diagrams work without them. Add images incrementally as they are generated.
