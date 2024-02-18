#!/bin/bash

target=/mnt
pacstrap $target base base-devel linux linux-zen linux-firmware efibootmgr intel-ucode networkmanager

genfstab -U -p $target >> $target/etc/fstab

arch-chroot $target <<EOF
ln -sf /usr/share/zoneinfo/Asia/Kolkata /etc/localtime
hwclock --systohc --utc
systemctl enable NetworkManager
pacman -S --noconfirm git
EOF
