" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vimrc

set shiftwidth=4
set expandtab
set ai "Auto indent
set wrap "Wrap lines... no se yo...
set tabstop=4
set smarttab
set smartindent
set ignorecase "Ignore case when searching
set hlsearch "Highlight search things
set ruler "Always show current position
set nu "number of line
syntax on
set nobackup
filetype plugin indent on
imap jj <esc>
set scrolloff=5

"No sound on errors
set noerrorbells
set novisualbell

set gfn=Monospace\ 10
set shell=/bin/bash

map <right> :bn<cr>
map <left> :bp<cr>

let mapleader = ","
let g:mapleader = ","
nmap <leader>w :w!<cr>
nmap <leader>x :q<cr>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Tab configuration
map <leader>tn :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

map <leader>cd :cd %:p:h<cr>

"Move a line of text using ALT+[jk]
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

"Autocompletar
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

"Color Scheme
colorscheme tango

"Turn backup off
set nobackup
set nowb
set noswapfile


