call plug#begin('~/.vim/plugged')
Plug 'tomasr/molokai'
" Vim Async Process
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
" file open
Plug 'Shougo/unite.vim'
Plug 'Shougo/neomru.vim'
" file tree
Plug 'scrooloose/nerdtree'
" Git
Plug 'tpope/vim-fugitive'
" Golang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" JavaScript
Plug 'pangloss/vim-javascript', {'for': 'javascript'}
" JavaScript Syntax
Plug 'jelera/vim-javascript-syntax', {'for': 'javascript'}
" Node.js
Plug 'moll/vim-node', {'for': 'javascript'}
" JSON
Plug 'leshill/vim-json', {'for': 'json'}
" PHP
Plug 'StanAngeloff/php.vim', {'for': 'php'}
Plug 'beanworks/vim-phpfmt', {'for': 'php'}
Plug 'flyinshadow/php_localvarcheck.vim', {'for': 'php'}
" Ruby
Plug 'vim-ruby/vim-ruby', {'for': 'ruby'}
Plug 'kana/vim-textobj-user', {'for': 'ruby'}
Plug 'rhysd/vim-textobj-ruby', {'for': 'ruby'}
Plug 'tpope/vim-rails', {'for': 'ruby'} 
Plug 'tpope/vim-bundler', {'for': 'ruby'} 
" HTML5 plugin
Plug 'othree/html5.vim'
" Markdown
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
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

syntax enable
colorscheme molokai
set number
set t_Co=256
set encoding=utf-8
scriptencoding utf-8
set autoindent
set smartindent
set ttyfast
set vb t_vb=
set novisualbell
set ruler
set title
set showcmd

let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1

nnoremap <silent><C-e> :NERDTreeToggle<CR>

" golang setting
let g:go_fmt_command = "goimports"
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"
au FileType go nmap <silent><C-r> :GoRun<CR>
au FileType go nmap  <silent><C-b> :GoBuild<CR>
au FileType go nmap  <silent><C-t> :GoTest<CR>
au FileType go nmap  <silent><C-c> :GoCoverage<CR>
