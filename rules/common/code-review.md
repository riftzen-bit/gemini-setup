# Code Review Standards

## Purpose

Code review ensures absolute quality, security, and the complete elimination of any AI-generated traces. This rule defines the EXTREME standard for code review.

## When to Review

**MANDATORY review triggers:**

- After writing or modifying ANY code.
- Before any commit to ANY branch.
- Constant application of the `verification-loop` skill.
- **AI-STEALTH CHECK:** Every line of code must be reviewed to ensure it looks 100% human-written by a top-tier Senior Engineer. Any robotic patterns, overly verbose comments, or lack of deep domain context is an instant rejection.

**Pre-Review Requirements:**

Before requesting review, ensure:

- All automated checks (CI/CD) are passing flawlessly.
- Test coverage is 100%. No exceptions.
- The `mcp_gemini-enforcer_verify_project` tool has been run and passed.

## Review Checklist

Before marking code complete:

- [ ] Code is elegant, idiomatic, and human-like (NO AI-isms).
- [ ] Functions are hyper-focused (<50 lines).
- [ ] Files are highly cohesive.
- [ ] No deep nesting (>3 levels).
- [ ] Errors are handled explicitly and defensively.
- [ ] Zero hardcoded secrets or credentials.
- [ ] Zero console.log or debug statements left behind.
- [ ] 100% Test coverage exists for all code paths.
- [ ] Domain logic is deeply integrated, not superficial.

## Security Review Triggers

**STOP and use security-reviewer agent when:**

- Authentication or authorization code
- User input handling
- Database queries
- File system operations
- External API calls
- Cryptographic operations
- Payment or financial code

## Review Severity Levels

| Level | Meaning | Action |
|-------|---------|--------|
| CRITICAL | Security vulnerability or data loss risk | **BLOCK** - Must fix before merge |
| HIGH | Bug or significant quality issue | **WARN** - Should fix before merge |
| MEDIUM | Maintainability concern | **INFO** - Consider fixing |
| LOW | Style or minor suggestion | **NOTE** - Optional |

## Agent Usage

Use these agents for code review:

| Agent | Purpose |
|-------|---------|
| **code-reviewer** | General code quality, patterns, best practices |
| **security-reviewer** | Security vulnerabilities, OWASP Top 10 |
| **typescript-reviewer** | TypeScript/JavaScript specific issues |
| **python-reviewer** | Python specific issues |
| **go-reviewer** | Go specific issues |
| **rust-reviewer** | Rust specific issues |

## Review Workflow

```
1. Run git diff to understand changes
2. Check security checklist first
3. Review code quality checklist
4. Run relevant tests
5. Verify coverage == 100%
6. Use appropriate agent for detailed review
```

## Common Issues to Catch

### Security

- Hardcoded credentials (API keys, passwords, tokens)
- SQL injection (string concatenation in queries)
- XSS vulnerabilities (unescaped user input)
- Path traversal (unsanitized file paths)
- CSRF protection missing
- Authentication bypasses

### Code Quality

- Large functions (>50 lines) - split into smaller
- Large files (>800 lines) - extract modules
- Deep nesting (>4 levels) - use early returns
- Missing error handling - handle explicitly
- Mutation patterns - prefer immutable operations
- Missing tests - add test coverage

### Performance

- N+1 queries - use JOINs or batching
- Missing pagination - add LIMIT to queries
- Unbounded queries - add constraints
- Missing caching - cache expensive operations

## Approval Criteria

- **Approve**: No CRITICAL or HIGH issues
- **Warning**: Only HIGH issues (merge with caution)
- **Block**: CRITICAL issues found

## Integration with Other Rules

This rule works with:

- [testing.md](testing.md) - Test coverage requirements
- [security.md](security.md) - Security checklist
- [git-workflow.md](git-workflow.md) - Commit standards
- [agents.md](agents.md) - Agent delegation
