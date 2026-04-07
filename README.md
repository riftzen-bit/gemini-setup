# Gemini CLI Global Setup

This repository contains the global environment setup for the Gemini CLI, including all rules, agents, and skills to create a powerful AI assistant across all your projects. 

This setup has been synchronized to work across **Linux, macOS, and Windows**, and verified with GitHub Actions.

## Installation

### Linux / macOS

Run the following command in your terminal:

```bash
git clone https://github.com/riftzen-bit/gemini-setup.git
cd gemini-setup
chmod +x install.sh
./install.sh
```

### Windows

Run the following in PowerShell:

```powershell
git clone https://github.com/riftzen-bit/gemini-setup.git
cd gemini-setup
.\install.ps1
```

## What's included?

- `agents/`: Contains customized expert agents.
- `rules/`: Global coding standards and rules.
- `skills/`: A comprehensive collection of automated workflows and deep technical skills.
- `GEMINI.md`: Core directives and operating protocols for Gemini.
- `SYSTEM.md`: System-level prompts and constraints.

## Continuous Integration

This repository includes a GitHub Action to automatically verify that the installation script works seamlessly on:
- Ubuntu Latest
- macOS Latest
- Windows Latest

Ensuring all your environments have a green pipeline.
