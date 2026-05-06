#!/usr/bin/env bash
set -euo pipefail

BASE_URL="${1:-http://127.0.0.1:8000}"

check_page() {
  local path="$1"
  local fallback_path="$2"
  local expected="$3"
  local body

  if ! body="$(curl -fsSL "${BASE_URL}${path}")"; then
    body="$(curl -fsSL "${BASE_URL}${fallback_path}")"
  fi

  if ! grep -Fq "$expected" <<< "$body"; then
    body="$(curl -fsSL "${BASE_URL}${fallback_path}")"
  fi

  if ! grep -Fq "$expected" <<< "$body"; then
    echo "ERROR: ${BASE_URL}${path} no contiene: ${expected}" >&2
    exit 1
  fi

  echo "OK: ${BASE_URL}${path}"
}

check_page "/" "/index.md" "TrendBlox Legal"
check_page "/privacy/" "/privacy.md" "Politica de Privacidad de TrendBlox"
check_page "/support/" "/support.md" "Soporte de TrendBlox"
check_page "/disclaimer/" "/disclaimer.md" "Descargo de No Afiliacion"

echo "Smoke test legal completado"
