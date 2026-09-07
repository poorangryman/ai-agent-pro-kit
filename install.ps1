# AI Agent Pro Kit - Windows PowerShell Installer
[CmdletBinding()]
param (
    [ValidateSet('antigravity', 'cursor', 'windsurf', 'all')]
    [string]$Target = 'all'
)

$ErrorActionPreference = 'Stop'
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "       AI Agent Pro Kit: 1-Click Installer (Windows)      " -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan

$SkillsDir = Join-Path $ScriptDir "skills"
$TemplatesDir = Join-Path $ScriptDir "templates"

# 1. Antigravity Setup
if ($Target -in @('antigravity', 'all')) {
    $AgSkills = Join-Path $env:USERPROFILE ".gemini\config\skills"
    if (-not (Test-Path $AgSkills)) {
        New-Item -ItemType Directory -Path $AgSkills -Force | Out-Null
    }
    Write-Host "[*] Installing skills into Antigravity ($AgSkills)..." -ForegroundColor Green
    Copy-Item -Path "$SkillsDir\*" -Destination $AgSkills -Recurse -Force
    Write-Host "    [OK] Antigravity skills installed." -ForegroundColor Gray
}

# 2. Cursor Setup
if ($Target -in @('cursor', 'all')) {
    $CursorRules = ".cursor\rules"
    if (-not (Test-Path $CursorRules)) {
        New-Item -ItemType Directory -Path $CursorRules -Force | Out-Null
    }
    Write-Host "[*] Installing Cursor rule into current project ($CursorRules)..." -ForegroundColor Green
    Copy-Item -Path "$ScriptDir\.cursor\rules\agent-superkit.mdc" -Destination $CursorRules -Force
    Write-Host "    [OK] Cursor rules installed." -ForegroundColor Gray
}

# 3. Windsurf Setup
if ($Target -in @('windsurf', 'all')) {
    Write-Host "[*] Installing Windsurf rules (.windsurfrules)..." -ForegroundColor Green
    Copy-Item -Path "$ScriptDir\.windsurfrules" -Destination "." -Force
    Write-Host "    [OK] Windsurf rules installed." -ForegroundColor Gray
}

Write-Host ""
Write-Host "Installation completed successfully!" -ForegroundColor Cyan
Write-Host "To initialize project memory, copy 'templates\memory' to your workspace or home directory." -ForegroundColor Yellow
Write-Host "==========================================================" -ForegroundColor Cyan
