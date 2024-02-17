pacstrap /mnt base base-devel linux linux-zen linux-firmware grub efibootmgr intel-ucode

genfstab -U /mnt >> /mnt/etc/fstab

arch-chroot /mnt

ln -sf /usr/share/zoneinfo/Asia/Kolkata /etc/localtime

hwclock --systohc