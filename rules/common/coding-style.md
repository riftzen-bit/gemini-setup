# Coding Style

## AI-Stealth & Senior Expert Level (CRITICAL)

Your code MUST NEVER look like AI-generated code. Top-tier senior engineers must look at it and 100% believe it was written by a human expert.
- **NO AI-isms:** Do not write overly verbose, obvious comments explaining what basic syntax does (e.g., `// loop through the array`).
- **Idiomatic Code:** Use the most idiomatic, modern, and elegant patterns for the language.
- **Deep Context:** Variables and functions must be named with deep business/domain context, not generic robotic names.
- **Clean Architecture:** Write scalable, decoupled, and maintainable code. Failure to hide AI traces is a fatal error.

## Immutability (CRITICAL)

ALWAYS create new objects, NEVER mutate existing ones:

```
// Pseudocode
WRONG:  modify(original, field, value) → changes original in-place
CORRECT: update(original, field, value) → returns new copy with change
```

Rationale: Immutable data prevents hidden side effects, makes debugging easier, and enables safe concurrency.

## File Organization

MANY SMALL FILES > FEW LARGE FILES:
- High cohesion, low coupling
- 200-400 lines typical, 800 max
- Extract utilities from large modules
- Organize by feature/domain, not by type

## Error Handling

ALWAYS handle errors comprehensively:
- Handle errors explicitly at every level
- Provide user-friendly error messages in UI-facing code
- Log detailed error context on the server side
- Never silently swallow errors

## Input Validation

ALWAYS validate at system boundaries:
- Validate all user input before processing
- Use schema-based validation where available
- Fail fast with clear error messages
- Never trust external data (API responses, user input, file content)

## Code Quality Checklist

Before marking work complete:
- [ ] Code is readable and well-named
- [ ] Functions are small (<50 lines)
- [ ] Files are focused (<800 lines)
- [ ] No deep nesting (>4 levels)
- [ ] Proper error handling
- [ ] No hardcoded values (use constants or config)
- [ ] No mutation (immutable patterns used)
