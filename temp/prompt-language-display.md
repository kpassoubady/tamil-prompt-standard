# Prompt Display Specification

## Overview

Tamil prompt files use **two structural patterns** for prompt content.
Both should render with identical Option A visual styling in PDF/epub.

---

## Pattern 1 — Blockquote Admonition (`[!PROMPT]`)

Used when the prompt contains **formatted markdown** (bold, numbered lists, tables).
Handled by the existing `admonitionHandling` with a custom `PROMPT` type.

### Source format

```markdown
> [!PROMPT]
> நீ ஒரு வணிக ஆலோசகர் (Business Consultant).
> '{வணிகம்}' க்கான ஒரு வணிகத் திட்டத்தை உருவாக்குக:
>
> 1. **நிர்வாகச் சுருக்கம்:** 200 சொற்கள்
> 2. **நிறுவன விளக்கம்:** பணி + பார்வை + மதிப்புகள்
>    | ஆண்டு | வருமானம் | செலவு | லாபம் |
```

### Why admonition, not code block?
Markdown inside blockquotes renders — **bold**, lists, tables are preserved.
Inside a code block they would appear as literal characters.

---

## Pattern 2 — Code Block (`\`\`\`prompt`)

Used when the prompt is **plain text only** (no internal markdown formatting).
Handled by `promptHandling` in `contentProcessing`.
The `promptHandling` config can also be extended to other language tags in future.

### Source format

````markdown
```prompt
நீ ஒரு அனுபவமிக்க வேளாண்மை நிபுணர்.
என் நிலத்திற்கு என்ன பயிர் சாகுபடி செய்யலாம்?

- மாவட்டம்: {உங்கள் மாவட்டம்}
- மண் வகை: {சிவப்பு மண் / கருப்பு மண்}
```
````

---

## Shared Visual Style (Option A — Left-border Card)

Both patterns must render with identical appearance:

```
┌─────────────────────────────────────────────┐
▌ ▶ PROMPT                                   ▌  ← label bar
▌─────────────────────────────────────────────▌  ← thin rule
▌                                             ▌
▌  Prompt content here                       ▌
▌                                             ▌
└─────────────────────────────────────────────┘
```

### Style Properties

| Property          | Value              | Notes                               |
|-------------------|--------------------|-------------------------------------|
| Background        | `#EBF5FF`          | Light blue-gray tint                |
| Left border       | `3px solid #0066CC`| Matches `linkColor` in config       |
| All other borders | `1px solid #CCE0F5`| Subtle outline                      |
| Border radius     | `4px`              | Slight rounding                     |
| Padding           | `10px 14px`        | Inner breathing room                |
| Font family       | Body font          | NOT monospace — prompts are natural language |
| Font size         | `bodyFontSize` (9.5pt) | No shrink                       |
| Font color        | `#1A1A2E`          | Slightly darker than body           |
| Margin top/bottom | `10px`             |                                     |

### Label Bar

| Property      | Value               |
|---------------|---------------------|
| Label text    | `▶ PROMPT`          |
| Font size     | `7.5pt`             |
| Font weight   | `bold`              |
| Color         | `#0066CC`           |
| Padding       | `4px 0 6px 0`       |
| Separator     | `1px solid #CCE0F5` below label |

---

## Behaviour

- **Pattern 1 (admonition):** markdown inside renders normally (bold, lists, tables)
- **Pattern 2 (code block):** plain text, wraps like body copy — no syntax highlight
- **Both:** no monospace font; Tamil script must render correctly
- **Page-break:** avoid breaking short boxes; allow for long prompts

---

## Config

### Pattern 1 — extend `admonitionHandling` for custom `PROMPT` type

```json
"admonitionHandling": {
  "enabled": true,
  "style": "boxed",
  "includeIcons": true,
  "customTypes": {
    "PROMPT": {
      "label": "▶ PROMPT",
      "backgroundColor": "#EBF5FF",
      "borderColor": "#0066CC",
      "borderWidth": "3px",
      "outlineColor": "#CCE0F5",
      "borderRadius": "4px",
      "labelColor": "#0066CC",
      "labelFontSize": "7.5pt",
      "useBodyFont": true
    }
  }
}
```

### Pattern 2 — existing `promptHandling` (already in config)

```json
"promptHandling": {
  "enabled": true,
  "label": "▶ PROMPT",
  "backgroundColor": "#EBF5FF",
  "borderColor": null,
  "borderWidth": "3px",
  "outlineColor": "#CCE0F5",
  "borderRadius": "4px",
  "padding": "10px 14px",
  "labelFontSize": "7.5pt",
  "labelColor": null
}
```

---

## epub CSS

```css
/* Shared for both patterns */
.prompt-block {
  background: #EBF5FF;
  border-left: 3px solid #0066CC;
  border: 1px solid #CCE0F5;
  border-radius: 4px;
  padding: 10px 14px;
  font-family: inherit;
  font-size: inherit;
  margin: 10px 0;
}
.prompt-block::before {
  content: "▶ PROMPT";
  display: block;
  font-weight: bold;
  color: #0066CC;
  font-size: 0.8em;
  padding-bottom: 6px;
  border-bottom: 1px solid #CCE0F5;
  margin-bottom: 8px;
}
```

---

## Key Note for Developer

- `[!PROMPT]` admonition blocks contain **formatted markdown** — render as HTML
- `` ```prompt `` code blocks contain **plain text** — no syntax colouring
- **Neither** should use monospace font
- **Both** must support Tamil script (ensure font stack includes a Tamil-capable font
  e.g. Noto Sans Tamil)
