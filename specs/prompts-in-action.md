# Prompts in Action — Screenshot Task List

> **நோக்கம்:** ஒவ்வொரு sampler-லும் ஒரு real screenshot — வெவ்வேறு LLMs-ல் — prompts actually work என்பதை வாசகர்களுக்கு நேரடியாக காட்டவும்.
> **நிலை:** 🔲 தொடங்கவில்லை
> **கோப்பு இடம்:** `book/images/screenshots/` (புதிய folder)

---

## Screenshot எடுக்கும் முறை

1. Browser window → **1280 × 800px** (அல்லது full-screen laptop)
2. Prompt paste → LLM பதில் முழுமையாக வந்த பிறகு screenshot
3. Format: **PNG**, பெயர்: `screenshot-{domain}.png`
4. பதில் நீளமாக இருந்தால்: முதல் screen மட்டும் போதும் — முழு response தேவையில்லை
5. Crop: browser chrome (URL bar, tabs) **வெட்டாதீர்கள்** — LLM brand தெரிய வேண்டும்
6. Tool logo தெரியும்படி window-ஐ வையுங்கள் (ChatGPT, Gemini logo etc.)

---

## Sampler-வாரியான பணி பட்டியல்

### 1. 🏥 சுகாதாரம் — ChatGPT

**LLM:** [chat.openai.com](https://chat.openai.com)
**கோப்பு:** `book/images/screenshots/screenshot-health.png`
**Sampler:** `book/samplers/health-sampler.md`

**ஒட்ட வேண்டிய கட்டளை:**
```
Blood Pressure என்றால் என்ன? எளிய தமிழில் விளக்கவும்
```

**ஏன் இந்த prompt:** சிறிய கேள்வி → சுத்தமான, ஒரு-திரை பதில். மருத்துவ context தெளிவாக தெரியும்.

**Placement in sampler:** `hero-health.png`-க்கு கீழே, `> [!TIP]`-க்கு மேலே

```markdown
![ChatGPT-ல் தமிழ் மருத்துவ கட்டளை](../images/screenshots/screenshot-health.png)
```

---

### 2. 📚 கல்வி — Gemini

**LLM:** [gemini.google.com](https://gemini.google.com)
**கோப்பு:** `book/images/screenshots/screenshot-edu.png`
**Sampler:** `book/samplers/edu-sampler.md`

**ஒட்ட வேண்டிய கட்டளை:**
```
நான் 8வது வகுப்பு மாணவன். ஒளியின் வேகம் என்றால் என்ன — உதாரணங்களுடன் எளிய தமிழில் விளக்கவும்
```

**ஏன் இந்த prompt:** மாணவன் context தெளிவாக உள்ளது. Gemini's Google knowledge + Tamil — impressive combination.

```markdown
![Gemini-ல் தமிழ் கல்வி கட்டளை](../images/screenshots/screenshot-edu.png)
```

---

### 3. 🌾 விவசாயம் — Claude

**LLM:** [claude.ai](https://claude.ai)
**கோப்பு:** `book/images/screenshots/screenshot-agriculture.png`
**Sampler:** `book/samplers/agriculture-sampler.md`

**ஒட்ட வேண்டிய கட்டளை:**
```
என் தென்னை மரத்தில் இலைகள் மஞ்சளாக மாறுகின்றன — என்ன பிரச்சனை இருக்கலாம், என்ன செய்வது? தமிழில் சொல்லுங்கள்
```

**ஏன் இந்த prompt:** மிகவும் relatable Tamil Nadu farmer problem. Claude's detailed Tamil response-ஐ showcase செய்யும்.

```markdown
![Claude-ல் தமிழ் விவசாய கட்டளை](../images/screenshots/screenshot-agriculture.png)
```

---

### 4. 💼 வேலைவாய்ப்பு — Microsoft Copilot

**LLM:** [copilot.microsoft.com](https://copilot.microsoft.com)
**கோப்பு:** `book/images/screenshots/screenshot-employment.png`
**Sampler:** `book/samplers/employment-sampler.md`

**ஒட்ட வேண்டிய கட்டளை:**
```
Interview-ல் "உங்களை பற்றி சொல்லுங்கள்" என்று கேட்டால் என்ன சொல்வது? தமிழில் ஒரு நல்ல பதில் கொடுங்கள்
```

**ஏன் இந்த prompt:** Career context + Tamil — Copilot professional tone நன்றாக பொருந்தும். Short, usable output.

```markdown
![Copilot-ல் தமிழ் வேலைவாய்ப்பு கட்டளை](../images/screenshots/screenshot-employment.png)
```

---

### 5. ⚖️ சட்டம் — Perplexity

**LLM:** [perplexity.ai](https://perplexity.ai)
**கோப்பு:** `book/images/screenshots/screenshot-law.png`
**Sampler:** `book/samplers/law-sampler.md`

**ஒட்ட வேண்டிய கட்டளை:**
```
Consumer complaint online file செய்வது எப்படி? தமிழ்நாட்டில் உள்ள portal மூலம் — எளிய தமிழில் படிகள் சொல்லுங்கள்
```

**ஏன் இந்த prompt:** Perplexity sources-உடன் பதில் தரும் — civic/legal info-க்கு ideal. Sourced Tamil response — credibility-ஐ காட்டும்.

```markdown
![Perplexity-ல் தமிழ் சட்ட கட்டளை](../images/screenshots/screenshot-law.png)
```

---

### 6. 🏠 தினசரி வாழ்க்கை — Grok

**LLM:** [grok.com](https://grok.com) (X / xAI)
**கோப்பு:** `book/images/screenshots/screenshot-daily.png`
**Sampler:** `book/samplers/daily-sampler.md`

**ஒட்ட வேண்டிய கட்டளை:**
```
நான் 65 வயதான முதியவர். WhatsApp-ல் பணம் அனுப்புவது எப்படி? படிப்படியாக தமிழில் மிக எளிமையாக சொல்லுங்கள்
```

**ஏன் இந்த prompt:** மிகவும் emotional, human story. "65 வயது முதியவர்" context — AI's patience and clarity-ஐ demonstrates. Grok's friendly tone பொருந்தும்.

```markdown
![Grok-ல் தமிழ் தினசரி வாழ்க்கை கட்டளை](../images/screenshots/screenshot-daily.png)
```

---

### 7. 💻 தொழில்நுட்பம் — ChatGPT

**LLM:** [chat.openai.com](https://chat.openai.com)
**கோப்பு:** `book/images/screenshots/screenshot-tech.png`
**Sampler:** `book/samplers/tech-sampler.md`

**ஒட்ட வேண்டிய கட்டளை:**
```
Python-ல் simple calculator program எழுதி, ஒவ்வொரு வரியும் தமிழில் விளக்கவும்
```

**ஏன் இந்த prompt:** Code + Tamil comments side by side — visually striking. Developers will immediately understand the value.

```markdown
![ChatGPT-ல் தமிழ் தொழில்நுட்ப கட்டளை](../images/screenshots/screenshot-tech.png)
```

---

### 8. 🏪 வணிகம் — Gemini

**LLM:** [gemini.google.com](https://gemini.google.com)
**கோப்பு:** `book/images/screenshots/screenshot-biz.png`
**Sampler:** `book/samplers/biz-sampler.md`

**ஒட்ட வேண்டிய கட்டளை:**
```
நான் சிறிய tiffin கடை நடத்துகிறேன். Diwali offer-க்கு WhatsApp-ல் அனுப்ப 3 attractive Tamil messages கொடுங்கள்
```

**ஏன் இந்த prompt:** Real business use case. 3 short messages — single screen-ல் முடியும். Small business owners உடனே relate ஆவார்கள்.

```markdown
![Gemini-ல் தமிழ் வணிக கட்டளை](../images/screenshots/screenshot-biz.png)
```

---

### 9. 📝 இலக்கியம் — Claude

**LLM:** [claude.ai](https://claude.ai)
**கோப்பு:** `book/images/screenshots/screenshot-lit.png`
**Sampler:** `book/samplers/lit-sampler.md`

**ஒட்ட வேண்டிய கட்டளை:**
```
மழை பற்றி சிறிய ஐந்து வரி கவிதை தமிழில் எழுதவும் — எளிய நடையில், அழகான உணர்வுடன்
```

**ஏன் இந்த prompt:** மிக சிறிய கேள்வி → beautiful, focused output. Tamil poetry in AI — emotionally powerful screenshot. Claude's literary Tamil is strong.

```markdown
![Claude-ல் தமிழ் இலக்கிய கட்டளை](../images/screenshots/screenshot-lit.png)
```

---

### 10. 📱 சமூக ஊடகம் — Grok

**LLM:** [grok.com](https://grok.com)
**கோப்பு:** `book/images/screenshots/screenshot-social.png`
**Sampler:** `book/samplers/social-sampler.md`

**ஒட்ட வேண்டிய கட்டளை:**
```
Instagram-ல் காலை தேநீர் photo-க்கு poetic Tamil caption — 3 lines மட்டும், hashtags வேண்டாம்
```

**ஏன் இந்த prompt:** மிகவும் short output — ஒரே line-ல் impressive Tamil. Social media users instantly get the value. Grok's casual, creative tone fits perfectly.

```markdown
![Grok-ல் தமிழ் சமூக ஊடக கட்டளை](../images/screenshots/screenshot-social.png)
```

---

## LLM பங்கீடு சுருக்கம்

| LLM | Domains | ஏன் |
|-----|---------|-----|
| ChatGPT | Health, Tech | Most recognisable brand; medical + code credibility |
| Gemini | Education, Business | Google knowledge; practical everyday use |
| Claude | Agriculture, Literature | Detailed reasoning; literary Tamil strength |
| Copilot | Employment | Microsoft/professional context |
| Perplexity | Law | Sourced answers; civic/legal trust |
| Grok | Daily Life, Social | Friendly tone; casual use cases |

---

## Sampler-ல் சேர்க்கும் இடம்

ஒவ்வொரு sampler-லும் screenshot-ஐ இங்கே சேர்க்கவும் — hero image-க்கும் `> [!TIP]`-க்கும் இடையே:

```markdown
![{hero image}](../images/heroes/hero-{domain}.png)

> [!NOTE]
> **🖥️ செயலில் காண்க:** இந்த கட்டளை {LLM}-ல் சோதிக்கப்பட்டது.

![{LLM-ல் தமிழ் {domain} கட்டளை}](../images/screenshots/screenshot-{domain}.png)

> [!TIP]
> **முழு தொகுப்பு GitHub-ல்:** ...
```

---

## நிலை கண்காணிப்பு

| # | Domain | LLM | Screenshot | Sampler-ல் சேர்க்கப்பட்டதா |
|---|--------|-----|-----------|--------------------------|
| 1 | சுகாதாரம் | ChatGPT | 🔲 | 🔲 |
| 2 | கல்வி | Gemini | 🔲 | 🔲 |
| 3 | விவசாயம் | Claude | 🔲 | 🔲 |
| 4 | வேலைவாய்ப்பு | Copilot | 🔲 | 🔲 |
| 5 | சட்டம் | Perplexity | 🔲 | 🔲 |
| 6 | தினசரி வாழ்க்கை | Grok | 🔲 | 🔲 |
| 7 | தொழில்நுட்பம் | ChatGPT | 🔲 | 🔲 |
| 8 | வணிகம் | Gemini | 🔲 | 🔲 |
| 9 | இலக்கியம் | Claude | 🔲 | 🔲 |
| 10 | சமூக ஊடகம் | Grok | 🔲 | 🔲 |

---

> [!NOTE]
> **எல்லா screenshots-உம் முடிந்த பிறகு:** `book/images/screenshots/` folder-ஐ commit செய்து, ஒவ்வொரு sampler-லும் image ref சேர்க்கவும். CHANGELOG மற்றும் refinement-tracker.md-ஐ update செய்யவும்.
