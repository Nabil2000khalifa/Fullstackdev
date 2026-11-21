param(
    [Parameter(Mandatory = $true)]
    [string]$ProjectRoot
)

$ErrorActionPreference = 'Stop'
$templateRoot = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$templateRoot = Join-Path $templateRoot 'templates'
$root = [System.IO.Path]::GetFullPath($ProjectRoot)

if (-not (Test-Path -LiteralPath $root -PathType Container)) {
    throw "Project root does not exist: $root"
}

$files = @(
    'AI_CONTEXT.md', 'PROJECT_STATE.md', 'TASK_TRACKER.md', 'ARCHITECTURE.md',
    'TECHNICAL_DECISIONS.md', 'CHANGELOG_AI.md', 'TEST_STATUS.md',
    'QUALITY_STATUS.md', 'KNOWN_ISSUES.md', 'HANDOFF.md'
)

foreach ($file in $files) {
    $destination = Join-Path $root $file
    if (Test-Path -LiteralPath $destination) {
        Write-Output "Skipped existing $file"
        continue
    }
    Copy-Item -LiteralPath (Join-Path $templateRoot $file) -Destination $destination
    Write-Output "Created $file"
}
