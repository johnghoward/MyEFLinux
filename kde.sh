#!/bin/bash

sudo timedatectl set-ntp true
sudo hwclock --systohc

# Pacman eye-candy features.
print "Enabling colors, animations and parallel downloads in pacman."
sed -Ei 's/^#(Color)$/\1\nILoveCandy/;s/^#(ParallelDownloads).*/\1 = 2/' /mnt/etc/pacman.conf

print "Using reflector to update, sort and save pacman mirrorlist (United States)"
sudo reflector -c 'United States' -a 6 --sort rate --save /etc/pacman.d/mirrorlist

#sudo firewall-cmd --add-port=1025-65535/tcp --permanent
#sudo firewall-cmd --add-port=1025-65535/udp --permanent
#sudo firewall-cmd --reload

#git clone https://aur.archlinux.org/pikaur.git
#cd pikaur/
#makepkg -si --noconfirm

#pikaur -S --noconfirm system76-power
#sudo systemctl enable --now system76-power
#sudo system76-power graphics integrated
#pikaur -S --noconfirm auto-cpufreq
#sudo systemctl enable --now auto-cpufreq


sudo pacman -S --noconfirm xorg sddm plasma kde-applications firefox dolphin kate kde-gtk-config simplescreenrecorder obs-studio vlc papirus-icon-theme xdg-desktop-portal-kde kdenlive materia-kde

#sudo flatpak install -y spotify

sudo systemctl enable sddm
/bin/echo -e "\e[1;32mtype reboot..\e[0m"
#sleep 5
#reboot
