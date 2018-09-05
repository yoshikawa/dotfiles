call plug#begin()
"Plugin Installing
Plug 'fatih/vim-go',  {'for': 'go'}
Plug 'vim-ruby/vim-ruby', {'for': 'ruby'}
call plug#end()

set encoding=utf-8
"新しい行のインデントを現在行と同じにする
set autoindent

"行番号を表示する
set number

"閉括弧が入力された時、対応する括弧を強調する
set showmatch

" Vimが挿入するインデントの幅
set shiftwidth=2

"新しい行を作った時に高度な自動インデントを行う
set smarttab
