#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

# Avoid auth-mode conflict when apiKeyHelper is configured.
unset ANTHROPIC_AUTH_TOKEN

exec node cli.js "$@"
