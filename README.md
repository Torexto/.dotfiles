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
ZSH Plugins
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && git clone \
    https://github.com/zsh-users/zsh-autosuggestions \
    ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions && git clone \
    https://github.com/zsh-users/zsh-syntax-highlighting.git \
    ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
```
-Dawt.toolkit.name=WLToolkit
```
```
starship preset bracketed-segments -o ~/.config/starship.toml
```
```
sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB

sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst'
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'

[chaotic-aur]
Include = /etc/pacman.d/chaotic-mirrorlist

```
