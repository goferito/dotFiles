
" Load Plugins
call plug#begin()

  " Check vim-plug is installed
  if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  endif

  Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
  Plug 'https://github.com/tpope/vim-surround.git'
  Plug 'https://github.com/scrooloose/nerdcommenter.git'
  Plug 'https://github.com/scrooloose/nerdtree.git'
  Plug 'https://github.com/MarcWeber/vim-addon-mw-utils' "Dep of snipmate
  Plug 'https://github.com/tomtom/tlib_vim'              "Dep of snipmate
  Plug 'https://github.com/honza/vim-snippets'           "Dep of snipmate
  Plug 'https://github.com/garbas/vim-snipmate.git'
  "TODO import somehow my changes to js snippets

  Plug 'https://github.com/rstacruz/sparkup.git' "FIXME
  Plug 'https://github.com/vim-airline/vim-airline.git'
  Plug 'https://github.com/easymotion/vim-easymotion.git'
  Plug 'https://github.com/tpope/vim-fugitive.git'
  Plug 'https://github.com/airblade/vim-gitgutter.git'
  Plug 'https://github.com/digitaltoad/vim-pug.git'
  Plug 'https://github.com/pangloss/vim-javascript.git'
  Plug 'https://github.com/mxw/vim-jsx.git'
  Plug 'https://github.com/wavded/vim-stylus.git'
  Plug 'https://github.com/Raimondi/delimitMate.git'

call plug#end()

" Pending Plugins
"   sparkup
"     not working
"   vim-closetag
"     only closes html tags. check if I miss it, or there is a replacement

" Solve sparkup conflict
"let g:sparkupNextMapping = '<c-g>n'


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

set shell=/bin/bash

"Create Blank Newlines and stay in Normal mode
nnoremap <silent> zj o<Esc>
nnoremap <silent> zk O<Esc>

"Move over wrapped lines
nnoremap j gj
nnoremap k gk

"Select last inserted text
nnoremap gV `[v`]

" Indent with just one key stroke
nnoremap > >>
nnoremap < <<

" Move selected a line up or down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

syntax on
syntax enable
filetype plugin indent on

imap jj <esc>

let mapleader = ","
let g:mapleader = ","

nnoremap <Leader>x :bd<CR>
nmap <leader>w :w!<cr>
nmap <leader>Q :qa<cr>
nmap <leader>e :NERDTreeToggle<cr>
nmap <leader>/ :noh<cr>
nmap <leader>d :r !date<cr>

" Ray's magic trick
nmap K f,a<CR><esc>

" Window jump
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

" Tab configuration
map <leader>tn :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Buffers
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>

"Quick window split
map <Leader>v <C-W>v
map <Leader>h <C-W>n

"Color Scheme
colorscheme mr_goferito

" Colors for the tab line
hi TabLineFill ctermfg=Black ctermbg=Black
hi TabLineSel ctermfg=LightBlue ctermbg=DarkYellow
hi TabLine ctermfg=Gray ctermbg=Black

" JS syntax
let g:javascript_plugin_jsdoc = 1  " Syntax highlight for jsDocs

" Closetag config
"let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.jsx,*.js"

"DelimitMate conf
let delimitMate_expand_cr = 1
au FileType mail let b:delimitMate_expand_cr = 1

" NerdTree default width
let NERDTreeWinSize=23

"Git Gutter
let g:ToogleGitGutter = '<Leader>t'

"Ctrlp to ignore things
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|build'

" Easymotion config
nmap m <Plug>(easymotion-s)

" Remove trailing whitespace while keeping cursor position
fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun

" Only for a few file types (uncomment and edit)
"autocmd FileType c,cpp,java,php,ruby,python autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

" Or for every file type
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" Map nerd commenter to toggle comments
nmap <leader>d ,c<space>
vmap <leader>d ,c<space>

