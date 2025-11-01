#!/usr/bin/env bash
set -e

echo '[1/3] Building containers'
docker compose build

echo '[2/3] Starting services'
docker compose up -d

echo '[3/3] API at http://localhost:8000/docs'
