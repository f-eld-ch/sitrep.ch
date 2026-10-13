#!/usr/bin/env bash
# Copy the brand assets this site uses from the (private) f-eld-ch/brand repo.
# Usage: scripts/sync-brand.sh [path-to-brand-checkout]   (default: ../brand)
set -euo pipefail
BRAND="${1:-$(dirname "$0")/../../brand}"
DEST="$(dirname "$0")/../themes/sitrep"
[[ -f "$BRAND/tokens.css" ]] || { echo "brand checkout not found at $BRAND" >&2; exit 1; }

cp "$BRAND/tokens.css" "$DEST/assets/css/tokens.css"
rm -rf "$DEST/static/brand" && mkdir -p "$DEST/static/brand"
cp "$BRAND"/logo/{symbol,lockup-on-paper,lockup-on-ink,symbol-mono-white-accent}.svg "$DEST/static/brand/"
cp "$BRAND"/png/symbol@{32,256}h.png "$DEST/static/brand/"
echo "synced brand $(git -C "$BRAND" rev-parse --short HEAD) -> $DEST"
