#!/usr/bin/env bash
set -e

WALL="$1"
SETCURRENTWALL="$HOME/.config/hypr/scripts/set_current_wallpaper.sh"

[ -z "$WALL" ] && exit 1

# wallpaper
swww img "$WALL" \
  --transition-type random \
  --transition-duration 5 \
  --transition-fps 120

# set current wallpaper
"$SETCURRENTWALL" "$WALL"