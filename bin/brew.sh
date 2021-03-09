#!/bin/bash

brew_install_packages() {
  brew install bat
  brew install bash
  brew install ctop
  brew install curl
  brew install exa
  brew install direnv
  brew install fd
  brew install fzf
  brew install git
  brew install go
  brew install ghq
  brew install gh
  brew install hub
  brew install hexyl
  brew install htop
  brew install jq
  brew install lua
  brew install neovim
  brew install node
  brew install starship
  brew install tmux
  brew install tree
  brew install peco
  brew install procs
  brew install python
  brew install vim
  brew install wget
  brew install zsh
}

OS_NAME="$(uname | awk '{print tolower($0)}')"
OS_FULL="$(uname -a)"
OS_TYPE=

# env
DOTFILES="$(cd $(dirname $0); pwd)/.."

if [ "${OS_NAME}" == "linux" ]; then
    if [ $(echo "${OS_FULL}" | grep -c "amzn1") -gt 0 ]; then
        OS_TYPE="yum"
    elif [ $(echo "${OS_FULL}" | grep -c "amzn2") -gt 0 ]; then
        OS_TYPE="yum"
    elif [ $(echo "${OS_FULL}" | grep -c "el6") -gt 0 ]; then
        OS_TYPE="yum"
    elif [ $(echo "${OS_FULL}" | grep -c "el7") -gt 0 ]; then
        OS_TYPE="yum"
    elif [ $(echo "${OS_FULL}" | grep -c "Ubuntu") -gt 0 ]; then
        OS_TYPE="apt"
    elif [ $(echo "${OS_FULL}" | grep -c "coreos") -gt 0 ]; then
        OS_TYPE="apt"
    fi
elif [ "${OS_NAME}" == "darwin" ]; then
    OS_TYPE="brew"
fi

if [ "${OS_TYPE}" == "" ]; then
    _error "Not supported OS. [${OS_NAME}]"
fi


if [ "${OS_NAME}" == "darwin" ]; then
  if !(which brew); then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    cd $DOTFILES
    brew bundle
  fi
  cd $DOTFILES
  brew bundle
  OS='Mac'
elif [ "${OS_NAME}" == "linux" ]; then
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
