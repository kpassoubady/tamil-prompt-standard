# Visual Enhancements & Screenshots Specification

To make the book more engaging, practical, and trustworthy, incorporating real-world screenshots of AI interactions is highly recommended. Because the AI interface (ChatGPT, Gemini, Claude) speaks volumes, showing actual Tamil responses will build trust and excitement for the reader.

Below is a comprehensive checklist of screenshots and visual elements you can manually create or capture.

## 1. Absolute Beginner Real-World Screenshots
*These will replace the placeholder image links currently already defined in `book/cover-intro/absolute-beginner-guide.md`.*

- [ ] `chatgpt-signup-page.png`: Screenshot of the ChatGPT or Gemini Sign Up / Log In screen.
- [ ] `chatgpt-chat-interface.png`: Clean screenshot of an empty chat interface pointing to the lower text box.
- [ ] `chatgpt-first-prompt-response.png`: Screenshot showing the execution of the first Tamil prompt: *"வணக்கம்! நான் முதன்முறையா உன்னைப் பயன்படுத்தறேன்..."* and the AI's welcoming response in Tamil.
- [ ] `chatgpt-sidebar-history.png`: Screenshot of the left sidebar showing chat history.

## 2. Core Concepts Screenshots
*Demonstrating the frameworks in action.*

- [ ] `prompt-lite-demo.png`: (For `prompt-lite-beginners.md`) Screenshot showing the "Math Teacher" prompt being executed to solve a simple math problem for a child.
- [ ] `hallucination-demo.png`: (For `hallucination-guide.md`) A split-screen or 2-part screenshot. Part 1: AI giving a slightly inaccurate answer. Part 2: The user using one of the "Verification Prompts" to correct it.
- [ ] `taxonomy-master-prompt.png`: (For `taxonomy-framework.md`) A screenshot of the "வேளாண்மை நிபுணர்" (Agriculture Expert) master prompt being executed, showing how beautifully formatted the output is because of the 8-layers.

## 3. Samplers (Real World Proof)
*Capturing one standout prompt from each sampler chapter to prove they work, which will look fantastic in a book layout.*

- [ ] `health-sampler-demo.png`: The "Grandma's Home Remedy" (பாட்டி வைத்தியம்) prompt execution.
- [ ] `edu-sampler-demo.png`: The "Science Teacher explaining Photosynthesis" prompt execution.
- [ ] `agri-sampler-demo.png`: The "Organic Fertilizer Guide" prompt execution.
- [ ] `employment-sampler-demo.png`: The "IT Resume Translation" prompt execution.
- [ ] `law-sampler-demo.png`: The "Renter's Rights" prompt execution.
- [ ] `daily-sampler-demo.png`: The "Weekly Meal Planner" prompt execution.
- [ ] `tech-sampler-demo.png`: A "Python Bug Fixing" prompt execution in Tamil.
- [ ] `biz-sampler-demo.png`: A "Business Marketing Flyer text" prompt execution.
- [ ] `lit-sampler-demo.png`: The "Modern Kavithai" prompt execution.
- [ ] `social-sampler-demo.png`: A "Viral Instagram Caption" prompt execution.

## 4. Other Graphical Elements You Can Add

If you want to create more manual visual assets using tools like Canva, Figma, or Illustrator to break up the text:

- **Icons for the 8 Layers:** Instead of just text, you could create small `50x50px` icons for each of the 8 layers (Role, Domain, Skill, Intent, Tone, Format, Constraints, Safety) and place them inline in the Taxonomy chapters.
- **"Do's and Don'ts" Comparison Cards:** Graphical cards (with a green checkmark / red cross) showing a "Bad Prompt" vs. a "Good Prompt" side-by-side visually, rather than just using standard markdown tables.
- **Platform Logos:** (For Appendix F) Adding small, neat logos for ChatGPT, Claude, Gemini, and Perplexity next to their descriptions.

## 📸 Best Practices for Taking Screenshots
1. **Tooling:** Use a tool like CleanShot X or standard Mac `Cmd+Shift+4` to get clean selections.
2. **Language/Theme:** Ensure the AI UI is clean. Using **Light Mode** is generally strongly recommended for print and EPUB readability.
3. **Format:** Save as high-quality PNG.
4. **Placement:** We should place them in a new directory like `book/images/screenshots/` and link them in the markdown files using the HTML tag pattern with specific widths to ensure they don't break the PDF/EPUB builder:
   ```html
   <img src="../images/screenshots/your-image.png" alt="Description" style="width:80%; display:block; margin:0 auto;">
   ```
