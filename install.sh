#!/bin/sh

#This program is supposed to Auto Install the programs and Dotfiles that I need

#Updates Pacman
sudo pacman -Syu --noconfirm

#Installs all needed programs
sudo pacman -S --noconfirm xorg
sudo pacman -S --noconfirm xorg-server
sudo pacman -S --noconfirm xorg-xinit
sudo pacman -S --noconfirm feh
sudo pacman -S --noconfirm i3 
sudo pacman -S --noconfirm zsh
sudo pacman -S --noconfirm neovim
sudo pacman -S --noconfirm zathura
sudo pacman -S --noconfirm zathura-pdf-mupdf

#Initializes git step
mkdir ~/.git
cd ~

#Git Installs
cd ~/.git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd

#Yay installs
yay -S --noconfirm wd719x-firmware
yay -S --noconfirm aic94xx-firmware
yay -S --noconfirm picom-git
yay -S --noconfirm brave-bin

chsh -s /bin/zsh $USER

echo "#!bin/sh\nexec i3\n" > .xinitrc

mkdir -p ~/.config/nvim
mkdir -p ~/.config/picom
mkdir -p ~/.config/neofetch
mkdir -p ~/.config/i3blocks
mkdir -p ~/.config/i3
mkdir -p ~/pics 

mv ~/Config-Files/frankfurt.jpeg ~/pics || echo "Not Found..."

mv ~/Config-Files/tech.jpeg ~/pics || echo "Not Found..."


mv ~/Config-Files/configs/zsh/.zshrc ~ || echo "Not moved"
mv ~/Config-Files/configs/i3/config ~/.config/i3 || echo "Not moved"
mv ~/Config-Files/configs/i3blocks/config ~/.config/i3blocks || echo "Not moved"
mv ~/Config-Files/configs/picom ~/.config/picom || echo "Not moved"
mv ~/Config-Files/configs/neofetch ~/.config/neofetch || echo "Not moved"

#Installs Suckless Programs
cd ~/.git
git clone https://git.suckless.org/st
cd st
sudo make install
cd ~/.git
git clone https://git.suckless.org/dmenu
cd dmenu
sudo make install
