if [ -d ~/.zsh ]; then
  for file in ~/.zsh/*; do
    source $file
  done
else
  print "ZSH CONFIGS NOT FOUND: ~/.zsh"
fi

# eval "$(sheldon source)"
eval "$(rtx activate zsh)"
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
