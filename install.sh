#!/bin/sh

#This program is supposed to Auto Install the programs and Dotfiles that I need

pacman -S --noconfirm git
pacman -S --noconfirm i3
pacman -S --noconfirm zsh
pacman -S --noconfirm nvim
pacman -S --noconfirm zathura
pacman -S --noconfirm zathura-pdf-mupdf

mkdir ~/.git

#Git Installs
cd .git
git clone https://git.suckless.org/st
cd st
make clean install
cd .git
git clone https://git.suckless.org/dmenu
cd dmenu
make clean install
cd.git
git clone https://git.suckless.org/sxiv
cd sxiv
make clean install
cd .git
git clone https://github.com/polybar/polybar.git
cd polybar
./build.sh
cd .git
git clone https://github.com/Jguer/yay.git
cd yay
makepkg -si
cd

#Yay installs
yay -S wd719x
yay -S aic94xx
yay -S picom-git
yay -S brave-bin

chsh -s zsh $USER

echo "#!bin/sh\nexec i3\n" > .xinitrc
