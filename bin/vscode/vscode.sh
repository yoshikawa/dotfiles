#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)

while read line
do
  code --install-extension $line
done < ${SCRIPT_DIR}/vscode-extension.txt