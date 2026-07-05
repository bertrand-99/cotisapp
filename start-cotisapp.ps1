param(
    [int]$Port = 8787
)

$ErrorActionPreference = "Stop"
$apiServer = Join-Path $PSScriptRoot "api\server.ps1"

Write-Host "Starting CotisApp at http://localhost:$Port/"
powershell -ExecutionPolicy Bypass -File $apiServer -Port $Port
