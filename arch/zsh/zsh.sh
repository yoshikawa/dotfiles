#!/bin/sh

# zsh
sudo pacman -S zsh
chsh -s `which zsh`

# zsh file
cp .zshrc ~/.zshrc

