set nocompatible "vi非互換 mode

    "#######################

    " Visual

    "#######################

    set number "Row View

    set showmode "Mode View 

    set title "edit File View

    set ruler " ruler View

    set showcmd "input command status view

    set showmatch "括弧入力時の対応する括弧を表示

    set laststatus=2 "staus line 2 tab

    "#######################

    " Program help View

    "#######################

    syntax on " color view

    set smartindent " auto indetn

    " tab relathion

    set expandtab "タブの代わりに空白文字挿入

    set ts=4 sw=4 sts=0 "タブは半角4文字分のスペース

    " ファイルを開いた際に、前回終了時の行で起動

    autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif

    "#######################

    " 検索系

    "#######################

    set ignorecase "検索文字列が小文字の場合は大文字小文字を区別なく検索する

    set smartcase "検索文字列に大文字が含まれている場合は区別して検索する

    set wrapscan "検索時に最後まで行ったら最初に戻る

    set noincsearch "検索文字列入力時に順次対象文字列にヒットさせない

    set nohlsearch "検索結果文字列の非ハイライト表示

    
    "#######################

    " python

    "#######################

    autocmd BufRead,BufNewFile *.py syntax on
    autocmd BufRead,BufNewFile *.py set ai
    autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,with,try,except,finally,def,class

    filetype on
    autocmd FileType python set tabstop=4 shiftwidth=4 expandtab
