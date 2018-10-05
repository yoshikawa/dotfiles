#!/bin/zsh
#
# git
sudo pacman -S git
# golang
sudo pacman -S go
# docker
sudo pacman -S docker
# yay
git clone https://aur.archlinux.org/yay.git
makepkg -si
