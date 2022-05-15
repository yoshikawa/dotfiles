if [ -d ~/.zsh ]; then
  source ~/.zsh/zi.zsh
  source ~/.zsh/brew.zsh
  source ~/.zsh/plugins.zsh
  source ~/.zsh/config.zsh
  source ~/.zsh/alias.zsh
  source ~/.zsh/functions.zsh
else
  print "ZSH CONFIGS NOT FOUND: ~/.zsh"
fi
