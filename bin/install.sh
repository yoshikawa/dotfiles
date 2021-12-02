#!/bin/bash

DOTPATH=~/dotfiles
GITHUB_URL=https://github.com/yoshikawa/dotfiles
OS_NAME="$(uname | awk '{print tolower($0)}')"
OS_FULL="$(uname -a)"
OS_TYPE=

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

if [ "${OS_TYPE}" == "brew" ]; then
  xcode-select --install
elif [ "${OS_TYPE}" == "apt" ]; then
  sudo apt update && sudo apt upgrade -y
  sudo apt install -y build-essential curl file git
elif [ "${OS_TYPE}" == "yum" ]; then
  sudo yum groupinstall -y 'Development Tools'
  sudo yum install -y curl file git
  sudo yum install -y libxcrypt-compat
fi

if type "git" > /dev/null 2>&1; then
  if [ -d $DOTPATH ]; then
    cd $DOTPATH && git pull
  else
    git clone ${GITHUB_URL}.git $DOTPATH
  fi
else
  echo "Install git!"
  exit 1
fi

sh $DOTPATH/bin/setup.sh

# vscode extension install
if type "code" > /dev/null 2>&1; then
  sh $DOTPATH/bin/vscode/vscode.sh
else
  echo "Install vscode!"
  exit 1
fi
