#!/bin/bash

sudo -s <<EOF

# Install essential packages
pacman -S --noconfirm nano git neovim neofetch xorg plasma plasma-wayland-session kde-applications sddm bluez blueman bluez-utils p7zip unrar tar rsync htop exfat-utils fuse-exfat ntfs-3g flac jasper aria2 curl wget jdk-openjdk flatpak libreoffice-fresh vlc ufw preload fwupd

# Enable and start services
systemctl enable --now sddm bluetooth ufw preload

# Install yay
git clone https://aur.archlinux.org/yay-bin /tmp/yay-bin
cd /tmp/yay-bin
makepkg -si --noconfirm

# Install additional packages with yay
yay -S --noconfirm google-chrome timeshift touchegg

# Install auto-cpufreq
git clone https://github.com/AdnanHodzic/auto-cpufreq.git /tmp/auto-cpufreq
cd /tmp/auto-cpufreq
./auto-cpufreq-installer
auto-cpufreq --install

# Activate touchegg service
systemctl enable --now touchegg

# Refresh and update fwupd
fwupdmgr refresh
fwupdmgr get-updates
fwupdmgr update

EOF
