sudo pacman -S --nonconfirm nano git neovim neofetch

sudo pacman -S --nonconfirm xorg

sudo pacman -S --nonconfirm plasma plasma-wayland-session kde-applications sddm

sudo systemctl enable sddm.service

sudo systemctl start sddm.service

sudo pacman -S --nonconfirm bluez blueman bluez-utils

sudo modprobe btusb

sudo systemctl enable bluetooth && sudo systemctl start bluetooth

sudo pacman -S --nonconfirm p7zip unrar tar rsync git neofetch htop exfat-utils fuse-exfat ntfs-3g flac jasper aria2 curl wget

git clone https://aur.archlinux.org/yay-bin

sudo pacman -S --nonconfirm jdk-openjdk

cd yay-bin

makepkg -si

sudo pacman -S --nonconfirm flatpak

yay -S --nonconfirm google-chrome

sudo pacman -S --nonconfirm libreoffice-fresh vlc

yay -Sy --nonconfirm timeshift

sudo pacman -S --nonconfirm ufw

sudo systemctl enable ufw

sudo systemctl start ufw

yay -S --nonconfirm preload

sudo systemctl enable preload && sudo systemctl start preload

git clone https://github.com/AdnanHodzic/auto-cpufreq.git
cd auto-cpufreq && sudo ./auto-cpufreq-installer

sudo auto-cpufreq --install