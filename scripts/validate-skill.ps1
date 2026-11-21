$ErrorActionPreference = 'Stop'
$skillRoot = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)

$required = @(
    'SKILL.md', 'README.md',
    'references/frontend.md', 'references/backend.md', 'references/security.md',
    'references/qa.md', 'references/quality.md', 'references/memory.md',
    'references/agent-operations.md', 'references/architecture.md', 'references/delivery.md',
    'references/workflows.md', 'checklists/audit.md', 'checklists/release.md',
    'checklists/feature.md', 'examples/bug-fix-report.md',
    'scripts/initialize-project-memory.ps1'
)

foreach ($relative in $required) {
    $path = Join-Path $skillRoot $relative
    if (-not (Test-Path -LiteralPath $path -PathType Leaf)) {
        throw "Missing required file: $relative"
    }
}

$templateNames = @(
    'AI_CONTEXT.md', 'PROJECT_STATE.md', 'TASK_TRACKER.md', 'ARCHITECTURE.md',
    'TECHNICAL_DECISIONS.md', 'CHANGELOG_AI.md', 'TEST_STATUS.md',
    'QUALITY_STATUS.md', 'KNOWN_ISSUES.md', 'HANDOFF.md'
)
foreach ($name in $templateNames) {
    if (-not (Test-Path -LiteralPath (Join-Path $skillRoot "templates\$name") -PathType Leaf)) {
        throw "Missing template: $name"
    }
}

if ((Get-Content -LiteralPath (Join-Path $skillRoot 'SKILL.md') -Raw).Length -lt 500) {
    throw 'SKILL.md is unexpectedly short'
}

Write-Output "Validated $($required.Count) core files and $($templateNames.Count) templates."
