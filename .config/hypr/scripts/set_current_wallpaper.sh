echo "wallpaper current: $1"
TYPE_FILE=$(echo $1 | cut -d '.' -f 2)
echo "type file: $TYPE_FILE"
cp $1 ~/.config/hypr/wallpaper_current/.current_wallpaper