call plug#begin()
" Vim Async Process
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
" Golang
Plug 'fatih/vim-go',  {'for': 'go'}
Plug 'vim-ruby/vim-ruby', {'for': 'ruby'}
" Node.js
Plug 'moll/vim-node'
" Markdown
Plug 'plasticboy/vim-markdown'
" Ruby
Plug 'vim-ruby/vim-ruby'
Plug 'kana/vim-textobj-user'
Plug 'rhysd/vim-textobj-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
" Auto Complete
Plug 'shougo/neocomplete.vim'
" Format
Plug 'junegunn/vim-easy-align'
call plug#end()


syntax on
set encoding=utf-8
set autoindent
set number
set showmatch
set shiftwidth=2
set smarttab
set viminfofile=NONE
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)