export LANG=ja_JP.UTF-8
export PATH="/usr/local/sbin:$PATH"
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="$PATH:$HOME/.composer/vendor/bin"
export GO111MODULE=on
if [ -z $TMUX ]; then
  export PATH="${HOME}/local/bin:${PATH}"
fi
