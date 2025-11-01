# Windows helper to run the stack without bash
$ErrorActionPreference = 'Stop'

# Move to repo root (one level up from scripts folder)
$root = Join-Path $PSScriptRoot '..'
Set-Location $root

Write-Host '[1/3] Building containers'
docker compose -f "$root/docker-compose.yml" build

Write-Host '[2/3] Starting services'
docker compose -f "$root/docker-compose.yml" up -d

Write-Host '[3/3] API at http://localhost:8000/docs'
