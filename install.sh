#!/usr/bin/env bash
# Installs the Spectral theme into Omarchy and applies it.
set -euo pipefail
src="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
dest="$HOME/.config/omarchy/themes/spectral"
mkdir -p "$dest"
cp -r "$src"/colors.toml "$src"/chromium.theme "$src"/icons.theme \
      "$src"/unlock.png "$src"/preview.png "$src"/preview-unlock.png "$src"/backgrounds "$dest"/
omarchy-theme-set spectral
echo "Spectral installed. Cycle wallpapers with: omarchy-theme-bg-next"
