#!/bin/bash

target=/mnt

# Install base system
pacstrap "$target" base base-devel linux linux-zen linux-firmware efibootmgr intel-ucode networkmanager

# Generate fstab
genfstab -U -p "$target" >> "$target/etc/fstab"

# Chroot into the installed system
arch-chroot "$target" /bin/bash <<EOF
ln -sf /usr/share/zoneinfo/Asia/Kolkata /etc/localtime
hwclock --systohc --utc
systemctl enable NetworkManager
pacman -S --noconfirm git
EOF
