---
name: everything-gemini-setup
description: Initial setup and configuration for Everything Gemini Code. Run this to ensure your environment is fully optimized.
---

# Everything Gemini Code Setup 🛠️

This skill helps you configure your Gemini CLI environment to use the full power of the Everything Gemini Code ecosystem.

## 1. Enable Experimental Agents
To use the 30+ expert sub-agents, you must enable the experimental agents feature.
I have already done this for you in `~/.gemini/settings.json`.

## 2. Install Sub-agents
The sub-agents are stored in `~/.gemini/agents/`. Gemini CLI automatically discovers them.
You can see the list of agents by running:
`ls ~/.gemini/agents/`

## 3. Install Skills
The skills are stored in `~/.gemini/skills/`. You can activate them using the `activate_skill` tool or by asking me to "activate skill X".
I have already imported 119+ skills for you.

## 4. Project-Level Configuration
To enable the "Everything Gemini Code" philosophy in your project, you should have a `GEMINI.md` file in your project root.
I have created a template for you at `~/GEMINI.md`. You can copy it to any project:
`cp ~/GEMINI.md /path/to/your/project/`

## 5. Engineering Rules
Language-specific rules are available in `~/.gemini/rules/`. You can incorporate these into your `GEMINI.md`.

## 6. Verification
To verify your setup, try asking me:
- "What sub-agents do I have available?"
- "Can you activate the `frontend-patterns` skill?"
- "Ask the `architect` to explain our current system design."

## Next Steps
Start a new task and see how the specialized agents and skills improve your workflow!
For more details, activate the `everything-gemini-code` master skill.
