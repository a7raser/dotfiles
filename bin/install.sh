#!/bin/sh

#create directories
cd ~
mkdir documents
mkdir downloads
mkdir media
mkdir projects

#install apps
sudo pacman -S <app list> alacritty git pywal-python xorg-server rofi bspwm sxhkd scrot neovim fzf picom openssh betterlockscreen inkscape nnn ranger ttf-dejavu ttf-hack ttf-font-awesome xcape xclip xorg-xmodmap zsh zsh-autosuggestions zsh-syntax-highlighting firefox-developer-edition chromium pulseaudio
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cd downloads
git clone git@github.com:Jguer/yay.git
cd yay
makepkg -si
cd downloads
yay -S polybar bash-pureline-git

#clone repo
git clone https://gitlab.com/a7raser/dotfiles.git

#move dotfiles
