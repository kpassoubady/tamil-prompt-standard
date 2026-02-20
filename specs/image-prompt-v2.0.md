# Book Cover Image Prompts — v2.0 Showcase Edition

**Book:** The Art of Commanding AI in Tamil — Showcase Edition
**Author:** Kangeyan Passoubady (Kangs) | Kavin School
**Size:** 6 × 9 inches (trade paperback) — portrait aspect ratio 2:3
**Tool:** Google Imagen (Gemini website) / DALL-E 3 / Midjourney

---

## Why v2.0

v1.0 problem: Asking for "Tamil script fragments orbiting" caused the model to hallucinate
repeated "க" characters placed on star-point edges — meaningless and visually distracting.

v2.0 fix: The central "அ" is kept (it rendered correctly). All other Tamil text is removed.
The orbiting elements are replaced with **8 concentric elliptical rings** — one per taxonomy
layer (L1 Role through L8 Safety). This is:
- Visually cleaner and more striking
- Symbolically accurate to the book's core framework
- Completely free of text-hallucination risk

---

## Front Cover Prompt

```
A premium trade paperback book cover illustration, portrait orientation, 2:3 aspect ratio.
No text, no letters, no characters of any kind — except for exactly one Tamil letter described below.

CENTRAL ELEMENT:
The single Tamil letter "அ" (looks like a stylised cursive number 6 with a curved top hook and a loop)
rendered as a luminous, three-dimensional golden glyph. It floats at the vertical centre of the image,
slightly above the middle. The letter glows with warm gold (#D4AF37) and soft white inner light,
with a subtle teal (#00C8C8) rim-light on its edges. It casts a gentle radial glow outward.
This is the only text or character in the entire image.

SURROUNDING STRUCTURE — 8 CONCENTRIC ORBITAL RINGS:
Eight elliptical orbital rings encircle the central letter, like an orrery or atomic model,
each slightly tilted at a different angle so they create a spherical, three-dimensional orbital system.
The rings vary slightly in size — the innermost is tight around the letter, the outermost fills
most of the frame width. Each ring is a thin glowing line, slightly different in hue:
  Ring 1 (innermost): warm gold
  Ring 2: amber
  Ring 3: teal
  Ring 4: electric blue
  Ring 5: soft cyan
  Ring 6: cool white
  Ring 7: pale violet
  Ring 8 (outermost): deep teal, slightly brighter
Each ring has 2–4 small bright nodes (like glowing data packets or electrons) travelling along it,
leaving a short comet-tail of light. The nodes are dots of light only — no shapes, no letters.

CIRCUIT LINES:
Fine hairline circuit-board traces radiate outward from the central "அ" along the horizontal
and vertical axes, branching into delicate fractal-like patterns. These lines glow faintly in teal,
fading as they reach the orbital rings.

BACKGROUND:
Deep midnight navy (#0A0E2A), darkest at the very edges and corners. A faint star-field of tiny
white pinpoints at very low opacity gives depth. No patterns, no watermarks, no Tamil characters
in the background — pure deep space.

COLOUR PALETTE:
Background: #0A0E2A (deep midnight navy)
Circuit lines: #00C8C8 (electric teal)
Central letter: #D4AF37 (warm gold) with white inner glow
Ring nodes: white and soft teal
Overall feel: jewel-toned, rich, cosmic

LIGHTING:
A single dramatic backlight source directly behind the central "அ" creates a soft lens flare
and radiates outward through the orbital rings. The outermost ring catches the most light
at the 10 o'clock and 4 o'clock positions, simulating orbital inclination.

TEXT LAYOUT ZONES — keep these areas visually clear and slightly darker:
  TOP ZONE: top 18% of image — darker, no bright elements, reserved for title text overlay
  BOTTOM ZONE: bottom 22% of image — darker gradient, no bright elements, reserved for author name overlay
  The orbital rings and circuit lines should not extend into these two zones.

STYLE: Cinematic science-fiction meets precision engineering. Ultra-detailed, 8K resolution,
professional book cover illustration, digital concept art. No humans, no faces, no hands,
no objects, no planets, no galaxies. Only the abstract orbital system and the single Tamil letter.

MOOD: Awe-inspiring, intellectually commanding, culturally rooted and futuristic.
The image should feel like the moment an ancient language meets a new intelligence.

IMPORTANT: DON'T Add any color labels or other texts neither in English or Tamil, except "அ".
```

---

## Back Cover Prompt

```
A premium trade paperback back cover, portrait orientation 2:3 aspect ratio.
Designed to complement the front cover. No text, no letters, no characters anywhere in this image.

BACKGROUND:
Deep midnight navy (#0A0E2A), with a very subtle radial gradient — fractionally lighter at the
absolute centre, fading to near-black at all edges and corners.

LEFT ACCENT:
A slim vertical strip (8–10% of image width) along the left edge containing a delicate column
of teal (#00C8C8) circuit-board lines and nodes — mirroring the neural-network motif from the
front cover. Fades to nothing by 15% width.

CONTENT ZONE:
A large clean rectangle occupying approximately 78% of the width and 60% of the height,
centred vertically at 45% from the top. This zone has a very slightly elevated brightness
(just barely perceptible lighter navy) and completely clean interior — no decorations, no dots,
no patterns. This is where blurb and author bio text will be placed in post-production.

TOP RULE:
A single thin horizontal line in teal (#00C8C8) at approximately 12% from the top.
Nothing above this line except the dark background.

BOTTOM STRIP:
The bottom 18% of the image is a slightly darker rectangle, separated from the content zone
by a thin gold (#D4AF37) horizontal rule. This strip is kept completely plain and dark —
reserved for barcode, ISBN, and publisher logo placement.

RIGHT ACCENT:
Mirror of the left accent — a slim vertical strip (8% width) along the right edge with
the same faint teal circuit lines, symmetric and slightly less bright than the left.

STYLE: Minimal, authoritative, elegant. Matches front cover aesthetic.
No bright focal elements — the back cover should feel calm and professional next to the
dramatic front cover. Ultra-clean, 8K, professional book back cover, digital art.
No humans, no Tamil characters, no English characters, no decorative script of any kind.

MOOD: Trustworthy, modern, premium Tamil technology publishing.
```

---

## Usage Notes

**Resolution:** Generate at 2400 × 3600 px minimum (400 DPI at 6 × 9 in for print).

**Text overlay (front cover) — add in Canva / Figma after generation:**

| Element | Recommended style |
| :--- | :--- |
| Title: "The Art of Commanding AI in Tamil" | Top zone — bold, white or gold, large |
| Tamil subtitle: "கட்டளைத் தமிழ்" | Below title — Tamil script, teal or gold |
| Author: "Kangeyan Passoubady" | Bottom zone — clean white, medium weight |
| Publisher: "Kavin School" | Very bottom — small, light grey |
| Edition: "Showcase Edition" | Near author name — small, teal italic |

**Save as PNG** (not JPEG) — preserves sharp edges on the Tamil "அ" glyph and circuit lines.

**If the model still adds random Tamil characters:** Add this line to the end of the prompt:
`IMPORTANT: Do not render any Tamil script, Sanskrit script, or any language characters
anywhere in this image. The ONLY exception is the single Tamil letter "அ" at the centre.
Any other letters or script-like shapes are a generation error.`

---

## What Changed from v1.0

| Issue in v1.0 | Fix in v2.0 |
| :--- | :--- |
| "Tamil script fragments orbiting" → model hallucinated repeated "க" | Removed all orbiting text; replaced with 8 glowing orbital rings |
| Star-point placement of letters looked rigid and unnatural | Orbital rings are elliptical and tilted — more dynamic and 3D |
| Surrounding text panels / code rectangles appeared uninvited | Explicit prohibition: "no objects, no shapes other than rings and circuit lines" |
| No symbolic connection to the book's content | 8 rings = 8 taxonomy layers (L1–L8) — directly mirrors the framework |
| Text layout zones not respected by bright elements | Zones explicitly described with constraints on where rings may extend |
