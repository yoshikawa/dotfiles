call plug#begin('~/.vim/plugged')
" Vim Async Process
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
" Golang
Plug 'fatih/vim-go',  {'for': 'go'}
" Node.js
Plug 'moll/vim-node'
" Markdown
Plug 'plasticboy/vim-markdown'
" Ruby
Plug 'vim-ruby/vim-ruby', {'for': 'ruby'}
Plug 'kana/vim-textobj-user'
Plug 'rhysd/vim-textobj-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
" Docker
Plug 'ekalinin/Dockerfile.vim'
" Auto Complete
Plug 'shougo/neocomplete.vim'
" Format
Plug 'junegunn/vim-easy-align'
Plug 'puppetlabs/puppet-syntax-vim'
call plug#end()
