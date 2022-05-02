#!/bin/bash

set -e

OS_NAME="$(uname | awk '{print tolower($0)}')"
OS_FULL="$(uname -a)"
OS_TYPE=
# env
DOTFILES="$(
  cd $(dirname $0)
  pwd
)/.."

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
  echo "Not supported OS. [${OS_NAME}]"
  exit 0
fi

if [ "${OS_NAME}" == "darwin" ]; then
  if !(which brew); then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    if [[ "$(uname -m)" == arm64 ]]; then
      eval "$(/opt/homebrew/bin/brew shellenv)"
    else
      eval "$(/usr/local/bin/brew shellenv)"
    fi
    cd $DOTFILES
    brew bundle
  fi
  cd $DOTFILES
  brew bundle
  OS='Mac'
elif [ "${OS_NAME}" == "linux" ]; then
  if !(which brew); then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
    cd $DOTFILES
    brew bundle
  fi
  cd $DOTFILES
  brew bundle
  OS='Linux'
elif [ "$(expr substr $(uname -s) 1 10)" == 'MINGW32_NT' ]; then
  OS='Cygwin'
else
  echo "Your platform ($(uname -a)) is not supported."
fi
