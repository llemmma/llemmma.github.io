#!/usr/bin/env bash
set -euo pipefail

# Directory where this script lives (top of your homepage repo)
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Path to your existing Python script
SMARTEN="$ROOT_DIR/smarten.py"

# Find every index.html under ROOT_DIR (excluding .git), and run smarten.py in-place
find "$ROOT_DIR" \
  -name .git -prune -o \
  -type f -name 'index.html' -print0 |
  while IFS= read -r -d '' file; do
    tmp="${file}.tmp"
    echo "Smartening: $file"
    python3 "$SMARTEN" "$file" "$tmp"
    mv "$tmp" "$file"
  done
