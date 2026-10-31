param([string]$Norm = "norm")
$ErrorActionPreference = "Stop"
$module = Get-Content -Raw module.norm
if ($module -match "example_package") { exit 0 }
if (-not (Test-Path SKILL.md)) { throw "Root SKILL.md is required." }
& $Norm docs . --output build/api --skill SKILL.md --strict
if ($LASTEXITCODE -ne 0) { throw "Skill generation failed." }
$skill = Get-Content -Raw SKILL.md
if ($skill -match "Replace this generated file|example-package") { throw "SKILL.md still contains template placeholders." }
