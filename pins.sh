#!/bin/bash

sudo pacman -S --noconfirm nano git neovim neofetch

sudo pacman -S --noconfirm xorg

sudo pacman -S --noconfirm plasma plasma-wayland-session kde-applications sddm

sudo systemctl enable sddm.service

sudo pacman -S --noconfirm bluez blueman bluez-utils

sudo modprobe btusb

sudo systemctl enable bluetooth && sudo systemctl start bluetooth

sudo pacman -S --noconfirm p7zip unrar tar rsync git neofetch htop exfat-utils fuse-exfat ntfs-3g flac jasper aria2 curl wget

git clone https://aur.archlinux.org/yay-bin

sudo pacman -S --noconfirm jdk-openjdk

cd yay-bin

makepkg -si --noconfirm

sudo pacman -S --noconfirm flatpak

yay -S --noconfirm google-chrome

sudo pacman -S --noconfirm libreoffice-fresh vlc

yay -Sy --noconfirm timeshift

sudo pacman -S --noconfirm ufw

sudo systemctl enable ufw

sudo systemctl start ufw

yay -S --noconfirm preload

sudo systemctl enable preload && sudo systemctl start preload

git clone https://github.com/AdnanHodzic/auto-cpufreq.git
cd auto-cpufreq && sudo ./auto-cpufreq-installer

sudo auto-cpufreq --install
