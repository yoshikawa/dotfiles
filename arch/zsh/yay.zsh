#!/bin/zsh
mkdir -p ~/src/github.com/aur
cd src/github.com/aur
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
