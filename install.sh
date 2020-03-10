#!/bin/sh

#This program is supposed to Auto Install the programs and Dotfiles that I need

pacman -S --noconfirm git
pacman -S --noconfirm i3
pacman -S --noconfirm zsh
pacman -S --noconfirm nvim
pacman -S --noconfirm zathura
pacman -S --noconfirm zathura-pdf-mupdf

mkdir ~/.git
cd ~

#Git Installs
cd ~/.git
git clone https://git.suckless.org/st
cd st
make clean install
cd ~/.git
git clone https://git.suckless.org/dmenu
cd dmenu
make clean install
cd ~/.git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd

#Yay installs
yay -S wd719x
yay -S aic94xx
yay -S picom-git
yay -S brave-bin

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


mv ~/Config-Files/config/zsh/.zshrc ~
mv ~/Config-Files/config/i3/config ~/.config/i3
mv ~/Config-Files/config/i3blocks/config ~/.config/i3blocks
mv ~/Config-Files/config/picom ~/.config/picom
mv ~/Config-Files/config/neofetch ~/.config/neofetch
