#!/bin/sh

#create directories
cd ~
mkdir documents
mkdir downloads
mkdir media
mkdir projects

#install apps
sudo pacman -S <app list> git pywal-pyton xorg-server rofi bspwm ttf-hack ttf-font-awesome xcape
yay -S polybar

#clone repo
git clone https://gitlab.com/a7raser/dotfiles.git

#move dotfiles
