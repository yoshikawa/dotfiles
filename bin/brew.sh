#!/bin/sh
if type "apt" > /dev/null 2>&1; then
  sudo apt update
  sudo apt install -y build-essential curl file git
elif type "yum" > /dev/null 2>&1; then
  sudo yum groupinstall -y 'Development Tools'
  sudo yum install -y curl file git
  sudo yum install -y libxcrypt-compat
fi

if !(which brew); then
  git clone https://github.com/Homebrew/brew ~/.linuxbrew/Homebrew
  mkdir ~/.linuxbrew/bin
  ln -sfv ~/.linuxbrew/Homebrew/bin/brew ~/.linuxbrew/bin
  eval $(~/.linuxbrew/bin/brew shellenv)
fi

brew install bat
brew install bash
brew install htop
brew install ctop
brew install curl
brew install exa
brew install direnv
brew install fd
brew install fzf
brew install jq
brew install git
brew install ghq
brew install github/gh/gh
brew install hub
brew install hexyl
brew install starship
brew install tmux
brew install peco
brew install procs
brew install vim
brew install zsh