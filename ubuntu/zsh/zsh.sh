#!/bin/sh

# zsh
sudo apt update
sudo apt install zsh
chsh -s `which zsh`

# zsh file
cp .zshenv ~/.zshenv
cp .zshrc ~/.zshrc

# reboot!
sudo shutdown -r 0
