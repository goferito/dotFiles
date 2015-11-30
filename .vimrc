call pathogen#infect()

"set guioptions-=T  "remove toolbar
set lines=50 columns=85

" Solve sparkup conflict
let g:sparkupNextMapping = '<c-g>n'

" Use jsx syntax on js files
let g:jsx_ext_required = 0

" Check for standart js
let g:syntastic_javascript_checkers = ['standard']

" Change cursor depending on mode
if has("autocmd")
    au VimEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Profile0/cursor_shape block"
    au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
    au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
    au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
endif

set background=dark
set laststatus=2
set shiftwidth=2
set expandtab
set tabstop=2
set softtabstop=2
set wrap 
set autoread
set smarttab
set autoindent
set smartindent
set nofoldenable 
set smartcase
set ignorecase "Ignore case when searching
set hlsearch "Highlight search things
set incsearch "Highlight as type
set ruler "Always show current position
set number
set scrolloff=5
set t_Co=256


"Turn backup off
set nobackup
set nowb
set noswapfile

"No sound on errors
set noerrorbells
set novisualbell

set gfn=Monospace\ 10
set shell=/bin/bash

"Create Blank Newlines and stay in Normal mode
nnoremap <silent> zj o<Esc>
nnoremap <silent> zk O<Esc>

"Move over wrapped lines
nnoremap j gj
nnoremap k gk

"Select last inserted text
nnoremap gV `[v`] 

syntax on
filetype plugin indent on

imap jj <esc>

let mapleader = ","
let g:mapleader = ","

nmap <leader>w :w!<cr>
nmap <leader>x :q<cr>
nmap <leader>e :NERDTreeToggle<cr>
nmap <leader>/ :noh<cr>

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

"Quick window split
map <Leader>v <C-W>v
map <Leader>h <C-W>n

"Color Scheme
colorscheme goferito_mango

"DelimitMate conf
let delimitMate_expand_cr = 1

"Ctrlp to ignore things
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|build'

