#!/bin/zsh
# 
# base
sudo pacman -S curl openssh tmux git
sudo pacman -S go hugo php
sudo pacman -S nodejs npm yarn
sudo pacman -S docker docker-compose
sudo yay -S mysql-clients
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
