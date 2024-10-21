#!/bin/bash
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
sudo chsh $USER -s $(which zsh)
