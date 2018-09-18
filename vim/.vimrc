syntax enable

" 右下に表示される行・列の番号を表示する
set ruler
" 行番号表示
set number
" beep
set vb t_vb=
set novisualbell
" color setting
set t_Co=256

call plug#begin('~/.vim/plugged')
" Vim Async Process
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
" Golang
Plug 'fatih/vim-go',  {'for': 'go'}
" JavaScript
Plug 'pangloss/vim-javascript'
" JavaScript Syntax
Plug 'jelera/vim-javascript-syntax'
" Node.js
Plug 'moll/vim-node'
" JSON
Plug 'leshill/vim-json'
" PHPコードフォーマット
Plug 'beanworks/vim-phpfmt'
" PHP未定義変数・未使用変数を表示
Plug 'flyinshadow/php_localvarcheck.vim'
" Ruby
Plug 'vim-ruby/vim-ruby', {'for': 'ruby'}
Plug 'kana/vim-textobj-user'
Plug 'rhysd/vim-textobj-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
" HTML5 plugin
Plug 'othree/html5.vim'
" Markdown
Plug 'plasticboy/vim-markdown'
" Docker
Plug 'ekalinin/Dockerfile.vim'
" GitHub plugin
Plug 'junegunn/vim-github-dashboard'
Plug 'mattn/gist-vim'
" snippet
Plug 'Townk/vim-autoclose'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'tpope/vim-endwise'
Plug 'Townk/vim-autoclose'
" Auto Complete
Plug 'shougo/neocomplete.vim'
" Syntax Check
Plug 'scrooloose/syntastic'
" Format
Plug 'junegunn/vim-easy-align'
Plug 'puppetlabs/puppet-syntax-vim'
" Run SourceCode
Plug 'thinca/vim-quickrun'
call plug#end()

" golang setting
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
