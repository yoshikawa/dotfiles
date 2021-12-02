#!/bin/bash

NERD_FONTS_PATH=~/.nerd_fonts
NERD_FONTS_GITHUB_URL=https://github.com/ryanoasis/nerd-fonts

if [ -d $NERD_FONTS_PATH ]; then
    cd $NERD_FONTS_PATH && git pull
    ./install.sh
else
    git clone --branch=master --depth 1 $NERD_FONTS_GITHUB_URL.git $NERD_FONTS_PATH
    cd $NERD_FONTS_PATH
    ./install.sh
fi
