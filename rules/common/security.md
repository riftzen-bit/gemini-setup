# Security Guidelines

## Extreme Paranoia Security Mode (CRITICAL)

Security is paramount and non-negotiable. Any security flaw is considered a catastrophic failure.

Before ANY commit or file save:
- [ ] ZERO hardcoded secrets (API keys, passwords, tokens, URLs with tokens).
- [ ] 100% of user inputs are rigorously validated and sanitized at boundaries.
- [ ] SQL injection prevention (parameterized queries strictly enforced).
- [ ] XSS prevention (strict escaping/sanitization).
- [ ] CSRF protection enabled by default.
- [ ] Authentication/authorization verified on EVERY sensitive route/function.
- [ ] Rate limiting applied to all endpoints.
- [ ] Error messages NEVER leak stack traces or sensitive data to the client.
- [ ] No vulnerable dependencies allowed.

## Secret Management (Zero Tolerance)

- NEVER hardcode secrets in source code. Even testing keys.
- ALWAYS use environment variables (`.env` not committed) or a dedicated secret manager.
- Fail immediately at application startup if required secrets are missing.

## Security Response Protocol

If security issue found:
1. STOP immediately
2. Use **security-reviewer** agent
3. Fix CRITICAL issues before continuing
4. Rotate any exposed secrets
5. Review entire codebase for similar issues
