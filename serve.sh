#!/usr/bin/env bash
set -euo pipefail
PORT="${1:-8000}"
cd "$(dirname "$0")"
echo "Serving Last Cast at http://localhost:${PORT}/  (Ctrl-C to stop)"
exec python3 -m http.server "${PORT}"
