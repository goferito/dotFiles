" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vimrc

:set guioptions-=T  "remove toolbar
set lines=50 columns=100

" Change cursor depending on mode
if has("autocmd")
    au VimEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Profile0/cursor_shape block"
    au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
    au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
    au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
endif

call pathogen#infect()

set shiftwidth=4
set expandtab
set ai "Auto indent
set wrap "Wrap lines... no se yo...
set tabstop=4
set smarttab
set smartindent
set ignorecase "Ignore case when searching
set hlsearch "Highlight search things
set incsearch "Highlight as type
set ruler "Always show current position
set nu "number of line
set scrolloff=5

"Turn backup off
set nobackup
set nowb
set noswapfile

"No sound on errors
set noerrorbells
set novisualbell

set gfn=Monospace\ 10
set shell=/bin/bash

syntax on
filetype plugin indent on

imap jj <esc>

let mapleader = ","
let g:mapleader = ","

nmap <leader>w :w!<cr>
nmap <leader>x :q<cr>
nmap <leader>d :NERDTree<cr>

" Windows moving
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Tab configuration
map <leader>tn :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Buffers
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>c :bd<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>

"Move a line of text using ALT+[jk]
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

"Color Scheme
colorscheme tango

"DelimitMate conf
let delimitMate_expand_cr = 1
au FileType mail let b:delimitMate_expand_cr = 1
