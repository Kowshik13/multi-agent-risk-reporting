# Windows helper to run the stack without bash
Write-Host '[1/3] Building containers'
docker compose build
Write-Host '[2/3] Starting services'
docker compose up -d
Write-Host '[3/3] API at http://localhost:8000/docs'
