
#!/bin/bash

target=/mnt
pacstrap -Syy
pacstrap -i /mnt base base-devel linux linux-zen linux-firmware efibootmgr intel-ucode networkmanager

genfstab -U -p /mnt >> /mnt/etc/fstab

arch-chroot /mnt <<EOF

ln -sf /usr/share/zoneinfo/Asia/Kolkata /etc/localtime

hwclock --systohc --utc
systemctl enable NetworkManager
pacman -S --nonconfirm git
EOF
