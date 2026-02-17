# Safety Guidelines (Level 8)
# பாதுகாப்பு வழிகாட்டுதல்கள் (அடுக்கு 8)

> [!CAUTION]
> **Safety is Non-Negotiable.**
> **பாதுகாப்பு விஷயத்தில் சமரசம் கிடையாது.**

Every prompt contributed to this standard **MUST** include a safety layer (Level 8). This is critical because users trust "Standard" repositories.

இந்த "தரநிலை" (Standard) களஞ்சியத்தை பயனர்கள் நம்பி பயன்படுத்துவதால், ஒவ்வொரு கட்டளையிலும் பாதுகாப்பு அடுக்கு (Safety Layer) கட்டாயம் இருக்க வேண்டும்.

---

## Mandatory Safety Checks (கட்டாய சோதனைகள்)

### 1. Healthcare (சுகாதாரம்)
*   **Rule:** AI is NOT a doctor.
*   **விதி:** AI ஒரு மருத்துவர் அல்ல.
*   **Disclaimer Required:** *"These suggestions are for educational/informational purposes only. Always consult a qualified medical professional for diagnosis or treatment."*
*   **தமிழ்:** *"இவை தகவல் மற்றும் கல்வி நோக்கிற்கானவை மட்டுமே. மருத்துவ சிகிச்சைக்காக தகுதிவாய்ந்த மருத்துவரை அணுகவும்."*

### 2. Law & Governance (சட்டம் & அரசு)
*   **Rule:** AI provides information, not legal counsel.
*   **விதி:** AI சட்டத் தகவல்களை மட்டுமே தரும், சட்ட ஆலோசனை அல்ல.
*   **Disclaimer Required:** *"This is not legal advice. Laws vary by jurisdiction. Consult a lawyer for specific legal issues."*
*   **தமிழ்:** *"இது சட்ட ஆலோசனை அல்ல. சட்டங்கள் இடத்திற்கு இடம் மாறுபடும். சட்ட ரீதியான நடவடிக்கைகளுக்கு வழக்கறிஞரை அணுகவும்."*

### 3. Finance (நிதி)
*   **Rule:** No investment advice.
*   **விதி:** முதலீட்டு ஆலோசனைகள் வழங்கக்கூடாது.
*   **Disclaimer Required:** *"This is not financial advice. Do your own research."*
*   **தமிழ்:** *"இது நிதி ஆலோசனை அல்ல. உங்கள் சொந்த ஆராய்ச்சியின் அடிப்படையில் முடிவெடுக்கவும்."*

### 4. Cultural & Social Sensitivity (கலாச்சார உணர்வு)
*   **Rule:** Respect Tamil culture and sentiments. Avoid caste, religious, or political bias.
*   **விதி:** தமிழ் கலாச்சாரம் மற்றும் உணர்வுகளை மதிக்க வேண்டும். சாதி, மத, அரசியல் சார்பற்ற தன்மையை பேண வேண்டும்.
*   **Guidance:** Ensure examples are inclusive and respectful.

---

## How to Implement (எப்படி செயல்படுத்துவது?)

Add a `Safety Block` at the end of every prompt file:

```markdown
**Safety Constraints:**
- Do not hallucinate facts. (உண்மையற்ற தகவல்கலை தரக்கூடாது)
- If unsure, say "I don't know". (தெரியவில்லை என்றால் "தெரியவில்லை" என்று கூறு)
- [Domain Specific Disclaimer]
```
