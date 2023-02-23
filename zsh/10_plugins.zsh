# snippet
zi light-mode for \
    OMZL::completion.zsh \
    OMZL::git.zsh \
    OMZP::git \
    OMZP::github
zi cdclear -q

zi wait lucid light-mode for \
    OMZP::brew \
    OMZP::docker/_docker \
    OMZL::clipboard.zsh \
    OMZL::compfix.zsh
zi wait lucid for \
  atinit"ZI[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
     z-shell/F-Sy-H \
  blockf \
     zsh-users/zsh-completions \
  atload"!_zsh_autosuggest_start" \
     zsh-users/zsh-autosuggestions

zi light-mode for \
  pick"zsh-lazyload.zsh" qoomon/zsh-lazyload \
  z-shell/H-S-MW # History Search Multi Word

zi light chrissicool/zsh-256color
# stedolan/jq
zi ice as"command" from"gh-r" mv"jq* -> jq" pick"jq"
zi light stedolan/jq
# jq enhance plugin
zi light reegnz/jq-zsh-plugin
# change directory enhancd
zi light b4b4r07/enhancd
# junegunn/fzf
zi ice as"command" from"gh-r" mv"fzf* -> fzf" pick"fzf/fzf"
zi light junegunn/fzf
# peco/peco
zi ice as"program" from"gh-r" mv"peco* -> peco" pick"*/peco"
zi light "peco/peco"
# hub: https://github.com/github/hub
zi ice as"program" from"gh-r" mv"hub-*/bin/hub -> hub" atclone'./hub alias -s > zhook.zsh' atpull'%atclone'
zi light github/hub
zi ice silent as"completion" mv'hub.zsh_completion -> _hub'
zi snippet https://github.com/github/hub/raw/master/etc/hub.zsh_completion
# lazygit
zi ice as"program" from"gh-r" mv"lazygit* -> lazygit" atload"alias lg=lazygit"
zi light jesseduffield/lazygit

arch="$(uname -m)"
if [ "${arch}" = x86_64 ]; then
zi wait lucid from"gh-r" as"program" for \
        mv"bat* -> bat" pick"bat/bat" @sharkdp/bat \
        mv"delta* -> delta"           dandavison/delta \
        mv"bin/exa* -> exa"           ogham/exa \
        mv"fd* -> fd"                 @sharkdp/fd \
        mv"ripgrep* -> ripgrep"       BurntSushi/ripgrep \
        mv"gdu* -> gdu"               dundee/gdu \
    atload'unalias zi 2>/dev/null; eval "$(zoxide init zsh --cmd zox)"' \
        mv"zoxide* -> zoxide"       ajeetdsouza/zoxide \

# ClementTsang/bottom, cross-platform graphical process/system monitor.
zi ice as"program" from"gh-r" mv"btm* -> btm" atload"alias top=btm"
zi light ClementTsang/bottom
# Starship cross-shell prompt theme
zi ice from"gh-r" as"command" atload'eval "$(starship init zsh)"'
zi load starship/starship

elif [ "${arch}" = arm64 ]; then
zi wait lucid from"gh-r" as"program" for \
        mv"bat* -> bat" pick"bat/bat" bpick"*aarch64-apple-darwin*" @sharkdp/bat \
        mv"delta* -> delta"       bpick"*aarch64-apple-darwin*"     dandavison/delta \
        mv"bin/exa* -> exa"       bpick"*aarch64-apple-darwin*"     ogham/exa \
        mv"fd* -> fd"             bpick"*aarch64-apple-darwin*"     @sharkdp/fd \
        mv"ripgrep* -> ripgrep"   bpick"*aarch64-apple-darwin*"     BurntSushi/ripgrep \
        mv"gdu* -> gdu"           bpick"*darwin_arm64*"             dundee/gdu \
    atload'alias top=btm' \
        mv"btm* -> btm"           bpick"*aarch64-apple-darwin*"     ClementTsang/bottom \
    atload'unalias zi 2>/dev/null; eval "$(zoxide init zsh --cmd zox)"' \
        mv"zoxide* -> zoxide"   bpick"*aarch64-apple-darwin*"    ajeetdsouza/zoxide \
# Starship cross-shell prompt theme
zi ice from"gh-r" as"command" bpick"*aarch64-apple-darwin*" atload'eval "$(starship init zsh)"'
zi load starship/starship

fi

zi has'zoxide' wait lucid for \
  z-shell/zsh-zoxide

zi cdreplay -q