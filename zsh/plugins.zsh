# snippet
zi snippet OMZP::git
zi snippet OMZL::clipboard.zsh
zi snippet OMZL::completion.zsh
zi snippet OMZL::compfix.zsh
# zsh-completions
zi ice wait lucid blockf atpull'zi creinstall -q .'
zi light zsh-users/zsh-completions
# zsh-autosuggestions
zi ice wait lucid atload"!_zsh_autosuggest_start"
zi load zsh-users/zsh-autosuggestions
# TERM 256 color
zi light chrissicool/zsh-256color
# jq enhance plugin
zi light reegnz/jq-zsh-plugin
# change directory enhancd
zi light b4b4r07/enhancd
# junegunn/fzf
zi ice as"command" from"gh-r" mv"fzf* -> fzf" pick"fzf/fzf"
zi light junegunn/fzf
# stedolan/jq
zi ice as"command" from"gh-r" mv"jq* -> jq" pick"jq"
zi light stedolan/jq
# sharkdp/bat
zi ice as"command" from"gh-r" mv"bat* -> bat" pick"bat/bat"
zi light sharkdp/bat
# sharkdp/fd
zi ice as"command" from"gh-r" mv"fd* -> fd" pick"fd/fd"
zi light sharkdp/fd
# BurntSushi/ripgrep
zi ice as"command" from"gh-r" mv"ripgrep* -> ripgrep" pick"ripgrep/rg"
zi light BurntSushi/ripgrep
# dandavison/delta
zi ice as"command" from"gh-r" mv"delta* -> delta" pick"delta/delta"
zi light dandavison/delta
# hub: https://github.com/github/hub
zi ice as"program" from"gh-r" mv"hub-*/bin/hub -> hub" atclone'./hub alias -s > zhook.zsh' atpull'%atclone'
zi light github/hub
zi ice silent as"completion" mv'hub.zsh_completion -> _hub'
zi snippet https://github.com/github/hub/raw/master/etc/hub.zsh_completion
# Syntax Highlighting
zi light z-shell/F-Sy-H
# History Search Multi Word
zi load z-shell/H-S-MW
# Starship cross-shell prompt theme
zi ice as"command" from"gh-r" \
  atclone"./starship init zsh > init.zsh; ./starship completions zsh > _starship" \
  atpull"%atclone" src"init.zsh"
zi light starship/starship