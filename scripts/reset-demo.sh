#!/usr/bin/env bash
# Reset the quarterly-demo repo to its baseline (ugly) state.
# Usage: bash scripts/reset-demo.sh
#
# This force-pushes main back to the 'baseline' tag, so the
# GitHub Pages deployment reverts to the old-school site.
# Safe to run repeatedly before each demo.

set -euo pipefail

REPO_DIR="$(cd "$(dirname "$0")/.." && pwd)"
cd "$REPO_DIR"

# Ensure we're on main
git checkout main 2>/dev/null || true

# Reset to baseline tag
if ! git rev-parse baseline >/dev/null 2>&1; then
  echo "Error: 'baseline' tag not found. Run the initial setup first."
  exit 1
fi

echo "Resetting main to baseline tag..."
git reset --hard baseline

echo "Force-pushing to origin/main..."
git push --force origin main

echo ""
echo "Done! main is back to the ugly baseline."
echo "GitHub Pages will redeploy automatically."
