#!/usr/bin/env bash

set -e

GEMINI_DIR="$HOME/.gemini"

echo "Setting up Gemini environment in $GEMINI_DIR..."

mkdir -p "$GEMINI_DIR"

# Copy directories
if [ -d "agents" ]; then
    cp -r "agents" "$GEMINI_DIR/"
    echo "Copied agents."
fi

if [ -d "rules" ]; then
    cp -r "rules" "$GEMINI_DIR/"
    echo "Copied rules."
fi

if [ -d "skills" ]; then
    cp -r "skills" "$GEMINI_DIR/"
    echo "Copied skills."
fi

# Copy markdown files
if [ -f "GEMINI.md" ]; then
    cp "GEMINI.md" "$GEMINI_DIR/"
    echo "Copied GEMINI.md."
fi

if [ -f "SYSTEM.md" ]; then
    cp "SYSTEM.md" "$GEMINI_DIR/"
    echo "Copied SYSTEM.md."
fi

echo "Gemini setup completed successfully!"
