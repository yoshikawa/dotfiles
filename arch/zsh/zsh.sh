#!/bin/sh

# zsh
sudo pacman -S zsh
chsh -s `which zsh`

# zsh file
cp .zshenv ~/.zshenv
cp .zshrc ~/.zshrc

