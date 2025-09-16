# install.sh -- install script
-b for backup

# gsettings set org.gnome.desktop.interface icon-theme 'Cool-Dark-Icons'
for icons

```bash
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

```bash
sudo pacman -S --needed \
               linux linux-headers \
               linux-firmware \
               intel-ucode amd-ucode \
               mesa lib32-mesa \
               vulkan-intel lib32-vulkan-intel \
               vulkan-radeon lib32-vulkan-radeon \
               nvidia nvidia-utils lib32-nvidia-utils \
               xf86-video-vesa \
               btrfs-progs e2fsprogs dosfstools exfatprogs ntfs-3g lvm2 \
               networkmanager

```
