#!/bin/bash -eu
if [ -x "$(which zsh)" ]; then
    echo 'Changing ZSH'
    sudo chsh -s $(which zsh)
fi