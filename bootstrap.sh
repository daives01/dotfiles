#!/usr/bin/env bash
set -euo pipefail

repo_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
packages=(nvim agents)

if ! command -v stow >/dev/null 2>&1; then
  if command -v brew >/dev/null 2>&1; then
    brew install stow
  else
    echo "GNU Stow is required. Install it, then rerun this script." >&2
    exit 1
  fi
fi

cd "$repo_dir"
stow --target="$HOME" --restow "${packages[@]}"
