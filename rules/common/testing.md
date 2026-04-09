# Testing Requirements

## Absolute Minimum Test Coverage: 100% (CRITICAL, LIFE-OR-DEATH)

Skipping tests or verification is STRICTLY PROHIBITED. A single missing test case will crash the project.
You MUST run the `verification-loop` continuously for every change.

Test Types (ALL required):
1. **Unit Tests** - Individual functions, utilities, components
2. **Integration Tests** - API endpoints, database operations
3. **E2E Tests** - Critical user flows (framework chosen per language)

## Test-Driven Development (MANDATORY WITHOUT EXCEPTION)

MANDATORY workflow:
1. Write test first (RED)
2. Run test - it should FAIL
3. Write minimal implementation (GREEN)
4. Run test - it should PASS
5. Refactor (IMPROVE)
6. Verify coverage (100%+)
7. Run `verification-loop` skill.

## Troubleshooting Test Failures

1. Use **tdd-guide** agent
2. Check test isolation
3. Verify mocks are correct
4. Fix implementation, not tests (unless tests are wrong)

## Agent Support

- **tdd-guide** - Use PROACTIVELY for new features, enforces write-tests-first
