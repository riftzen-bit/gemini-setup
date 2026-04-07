$ErrorActionPreference = "Stop"

$GEMINI_DIR = "$env:USERPROFILE\.gemini"

Write-Host "Setting up Gemini environment in $GEMINI_DIR..."

if (!(Test-Path -Path "$GEMINI_DIR")) {
    New-Item -ItemType Directory -Path "$GEMINI_DIR" | Out-Null
}

if (Test-Path -Path "agents") {
    Copy-Item -Path "agents" -Destination "$GEMINI_DIR\" -Recurse -Force
    Write-Host "Copied agents."
}

if (Test-Path -Path "rules") {
    Copy-Item -Path "rules" -Destination "$GEMINI_DIR\" -Recurse -Force
    Write-Host "Copied rules."
}

if (Test-Path -Path "skills") {
    Copy-Item -Path "skills" -Destination "$GEMINI_DIR\" -Recurse -Force
    Write-Host "Copied skills."
}

if (Test-Path -Path "GEMINI.md") {
    Copy-Item -Path "GEMINI.md" -Destination "$GEMINI_DIR\" -Force
    Write-Host "Copied GEMINI.md."
}

if (Test-Path -Path "SYSTEM.md") {
    Copy-Item -Path "SYSTEM.md" -Destination "$GEMINI_DIR\" -Force
    Write-Host "Copied SYSTEM.md."
}

Write-Host "Gemini setup completed successfully!"
