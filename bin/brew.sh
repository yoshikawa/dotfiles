#!/bin/sh
brew_install_packages() {
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
  brew install go
  brew install ghq
  brew install github/gh/gh
  brew install hub
  brew install hexyl
  brew install node
  brew install starship
  brew install tmux
  brew install tree
  brew install peco
  brew install procs
  brew install vim
  brew install zsh
}

if type "apt" > /dev/null 2>&1; then
  sudo apt update
  sudo apt install -y build-essential curl file git
elif type "yum" > /dev/null 2>&1; then
  sudo yum groupinstall -y 'Development Tools'
  sudo yum install -y curl file git
  sudo yum install -y libxcrypt-compat
fi

if [ `uname` = "Darwin" ]; then
  if !(which brew); then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    brew_install_packages
  fi
  brew_install_packages
  OS='Mac'
elif [ `uname` = "Linux" ]; then
  if !(which brew); then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval $(~/.linuxbrew/bin/brew shellenv)
    brew_install_packages
  fi
  brew_install_packages
  OS='Linux'
elif [ "$(expr substr $(uname -s) 1 10)" == 'MINGW32_NT' ]; then                                                                                           
  OS='Cygwin'
else
  echo "Your platform ($(uname -a)) is not supported."
fi