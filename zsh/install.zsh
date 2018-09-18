#!/bin/zsh

# zsh
sudo apt-get update
sudo apt-get install zsh
chsh -s `which zsh`

# zsh file
cp .zshenv ~/.zshenv
cp .zshrc ~/.zshrc

# chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt install google-chrome-stable

# git
sudo apt install git

# curl
sudo apt install curl

# install zplug
curl -sL --proto-redir -all,https https://zplug.sh/installer | zsh

# neovim
sudo apt-get install -y neovim

# golang
sudo apt install -y golang

# php
sudo apt install -y php

# ruby
sudo apt install -y ruby

# reboot!
sudo shutdown -r 0

