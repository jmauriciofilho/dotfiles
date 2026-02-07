#!/usr/bin/env bash

WALLDIR="$HOME/Imagens/Wallpaper"
SETWALL="$HOME/.config/hypr/scripts/setWall.sh"
THEME="$HOME/.config/rofi/themes/select-wallpaper.rasi"

entries=()

while IFS= read -r img; do
    name="$(basename "$img")"
    entries+=("$name\0icon\x1f$img")
done < <(
    find "$WALLDIR" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.webp" \) | sort
)

choice=$(printf '%b\n' "${entries[@]}" | \
    rofi -dmenu \
         -show-icons \
         -format s \
         -theme "$THEME")

# 👇 prepend wallpaper directory
[ -n "$choice" ] && "$SETWALL" "$WALLDIR/$choice"