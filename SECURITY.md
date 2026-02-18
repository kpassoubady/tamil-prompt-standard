# Security Policy

## Reporting Security Vulnerabilities

We take security seriously. If you discover a security vulnerability in the Tamil Prompt Standard project, please **DO NOT** open a public GitHub issue.

Instead, please report it responsibly by emailing the project maintainers directly at:
**[kangs@kavinschool.com](mailto:kangs@kavinschool.com)**

### What to Include

When reporting a vulnerability, please include:

1. **Description** of the vulnerability
2. **Location** - Which file, component, or section is affected
3. **Severity** - Critical, High, Medium, or Low
4. **Reproduction Steps** - How to reproduce the issue (if applicable)
5. **Potential Impact** - How this could affect users or the project
6. **Suggested Fix** (optional)

### Response Timeline

We will:

- Acknowledge receipt within **48 hours**
- Provide initial assessment within **7 days**
- Work with you on a resolution timeline
- Credit you for the report (unless you prefer anonymity)

---

## Security Best Practices for Contributors

### When Creating Prompts

1. **Safety First** - Always include appropriate disclaimers (L8 layer) for:
   - Healthcare content
   - Legal content
   - Financial advice
   - Sensitive topics

2. **No Sensitive Data** - Do not include:
   - Personal identifiable information (PII)
   - API keys or credentials
   - Confidential information
   - Biased or discriminatory language

3. **Content Review** - Prompts should be reviewed for:
   - Harmful stereotypes
   - Misinformation
   - Unethical use cases
   - Cultural sensitivity

### When Contributing Code/Documentation

1. **Dependency Security**
   - Only use trusted, maintained dependencies
   - Keep dependencies updated
   - Check for known vulnerabilities: `npm audit`

2. **Markdown Linting**
   - All files are automatically linted via GitHub Actions
   - Ensure consistency with project standards

3. **License Compliance**
   - Respect existing licenses
   - Don't include copyrighted material without permission
   - Provide proper attribution

---

## Vulnerability Disclosure

Once a vulnerability is fixed:

1. A new release will be issued
2. The fix will be documented in CHANGELOG.md
3. Security advisories will be published on GitHub (if applicable)
4. The reporter's contribution will be acknowledged (with permission)

---

## Dependencies & Supply Chain Security

This project is primarily a documentation repository with minimal dependencies:

- **Minimal Dependencies**: Only `markdownlint-cli` (dev dependency) for CI linting
- **Pinned Versions**: Versions are locked via `package-lock.json`
- **Dependency Audits**: Run `npm audit` before updating dependencies
- **No Runtime Dependencies**: This project has no runtime code — only markdown content and CI tooling

---

## Scope of This Policy

This security policy applies to:

- ✅ GitHub repository code and documentation
- ✅ Prompt files and collections
- ✅ Build and deployment workflows
- ✅ Community contributions

**Out of Scope:**

- ❌ Security of downstream consumers using our prompts
- ❌ AI model security (responsibility of model providers like OpenAI, Claude, etc.)
- ❌ Third-party integrations

---

## Additional Resources

- [OWASP Security Guidelines](https://owasp.org/)

---

**Last Updated:** 2026-02-17
