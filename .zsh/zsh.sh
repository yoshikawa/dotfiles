#!/bin/sh

# zsh
sudo apt-get update
sudo apt-get install zsh
chsh -s `which zsh`

# zsh file
cp .zshenv ~/.zshenv
cp .zshrc ~/.zshrc

# reboot!
sudo shutdown -r 0
