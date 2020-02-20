#!/bin/sh

#create directories
cd ~
mkdir documents
mkdir downloads
mkdir media
mkdir projects

#install apps
sudo pacman -S <app list> git pywal-python xorg-server rofi bspwm ttf-hack ttf-font-awesome xcape xclip xmodmap
yay -S polybar

#clone repo
git clone https://gitlab.com/a7raser/dotfiles.git

#move dotfiles
