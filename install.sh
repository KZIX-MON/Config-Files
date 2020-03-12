#!/bin/sh

#This program is supposed to Auto Install the programs and Dotfiles that I need

sudo pacman -S --noconfirm git i3 zsh neovim zathura zathura-pdf-mupdf

mkdir ~/.git
cd ~

#Git Installs
cd ~/.git
git clone https://git.suckless.org/st
cd st
sudo make clean install
cd ~/.git
git clone https://git.suckless.org/dmenu
cd dmenu
sudo make clean install
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


mv ~/Config-Files/configs/zsh/.zshrc ~
mv ~/Config-Files/configs/i3/config ~/.config/i3
mv ~/Config-Files/configs/i3blocks/config ~/.config/i3blocks
mv ~/Config-Files/configs/picom ~/.config/picom
mv ~/Config-Files/configs/neofetch ~/.config/neofetch
