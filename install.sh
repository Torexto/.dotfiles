#! /usr/bin/bash
# sudo pacman -S kitty nvim hyprland gdm hypridle hyprlock fish waybar wofi swaync ttf-jetbrains-mono-nerd grim swww starship
# yay -S wlogout pywal

BACKUP=false
while [[ $# -gt 0 ]]; do
  case "$1" in
    -b|--backup)
      BACKUP=true
      shift
      ;;
    *)
      echo "Unknown option: $1"
      exit 1
      ;;
  esac
done

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# icons
ICON_SOURCE="$SCRIPT_DIR/.icons/."
ICON_TARGET="$HOME/.icons"

mkdir -p "$ICON_TARGET"
echo "Copying $ICON_SOURCE -> $ICON_TARGET"
cp -rnT "$ICON_SOURCE" "$ICON_TARGET"

# config
CONFIG_SOURCE="$SCRIPT_DIR/.config"
CONFIG_TARGET="$HOME/.config"

mkdir -p "$CONFIG_TARGET"

for dir in "$CONFIG_SOURCE"/*; do
  name=$(basename "$dir")
  target="$CONFIG_TARGET/$name"

  if [ "$BACKUP" = true ] && [ -e "$target" ]; then
    # Generate unique backup path
    bak="$target.bak"
    i=1
    while [ -e "$bak" ]; do
      bak="$target.bak.$i"
      i=$((i + 1))
    done
    echo "Backing up $target -> $bak"
    mv "$target" "$bak"
  elif [ -e "$target" ]; then
    echo "Overwriting $target"
    rm -rf "$target"
  fi

  echo "Copying $dir -> $target"
  cp -r "$dir" "$target"
done

# gsettings set org.gnome.desktop.interface icon-theme 'Cool-Dark-Icons'
