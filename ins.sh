
#!/bin/bash

target=/mnt
pacstrap -Syy
pacstrap -i /mnt base base-devel linux linux-zen linux-firmware efibootmgr intel-ucode

genfstab -U -p /mnt >> /mnt/etc/fstab

arch-chroot /mnt

ln -sf /usr/share/zoneinfo/Asia/Kolkata /etc/localtime

hwclock --systohc --utc
