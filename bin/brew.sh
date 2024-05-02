#!/bin/bash

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
  echo -e "Not supported OS. [${OS_NAME}]"
fi

case ${OSTYPE} in
darwin*)
  # Mac Setting
  PATH="/usr/local/sbin:$PATH"
  if !(which brew); then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  fi
  if [[ "$(uname -m)" == arm64 ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
  else
    eval "$(/usr/local/bin/brew shellenv)"
  fi
  cd $DOTFILES
  brew bundle
  ;;
linux*)
  # LinuxBrew
  if !(which brew); then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  fi
  eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
  cd $DOTFILES
  brew bundle
  ;;
esac
