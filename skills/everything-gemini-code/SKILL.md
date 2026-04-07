---
name: everything-gemini-code
description: The master skill that enables the full power of the Everything Gemini Code ecosystem (ported from Everything Claude Code). Activate this to get expert engineering guidance, sub-agent orchestration patterns, and advanced workflows.
---

# Everything Gemini Code 🚀

You have activated the **Everything Gemini Code** master skill. This skill transforms Gemini CLI into a high-performance agentic engineering platform.

## Available Sub-agents

You now have access to over 30 specialized sub-agents. You can invoke them by name (e.g., "Ask the `architect` to review this design" or "Use `tdd-guide` to implement this feature").

Key agents:
- `planner`: For complex feature implementation planning.
- `architect`: For system design and technical decisions.
- `tdd-guide`: For test-driven development and bug fixes.
- `code-reviewer`: For thorough code reviews.
- `security-reviewer`: For security audits and vulnerability scanning.
- `performance-optimizer`: For profiling and optimization.
- `build-error-resolver`: For fixing build and compilation errors.

## Engineering Workflow

### 1. Research & Planning
For any non-trivial task, always start by researching the codebase and then use the `planner` agent to create a detailed implementation plan.

### 2. Implementation (TDD)
Use the `tdd-guide` agent to implement features. Always write a reproduction test for bugs before fixing them.

### 3. Review & Refactor
After implementation, use `code-reviewer` and `security-reviewer` to ensure quality and safety. Use `refactor-cleaner` to prune dead code or improve structure.

## Agent Orchestration Patterns

### Parallel Execution
When tasks are independent (e.g., reviewing multiple files, running different types of tests), launch multiple agents or tools in parallel to save time.

### Multi-Perspective Analysis
For critical decisions, use multiple specialized agents (e.g., `architect` + `security-reviewer` + `performance-optimizer`) to get a comprehensive view.

## Rule Installation

You can apply language-specific engineering rules to any project by creating a `GEMINI.md` file. Use the following command to see available rules:
`ls -R ~/.gemini/rules/` (Note: Rules are currently stored in `~/everything-claude-code/rules/`)

## Continuous Learning

Always look for patterns in the codebase and extract them into new skills using the `skill-creator`.
