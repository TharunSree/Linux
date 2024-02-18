
#!/bin/bash

target=/mnt
pacstrap --noconfirm -Syy
pacstrap --noconfirm -i /mnt base base-devel linux linux-zen linux-firmware efibootmgr intel-ucode

genfstab -U -p /mnt >> /mnt/etc/fstab

arch-chroot /mnt <<EOF

ln -sf /usr/share/zoneinfo/Asia/Kolkata /etc/localtime

hwclock --systohc --utc
EOF
pacman -S --nonconfirm git
