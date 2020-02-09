set nocompatible

""" Number lines
set number
set relativenumber

""" Keybinds
nmap j gj
nmap k gk
map <C-o> :NERDTreeToggle<CR>

""" Whitespace
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set wrap
set textwidth=79
set formatoptions=tcqrn1
set noshiftround
set autoindent
set smartindent

""" Plugin
filetype indent plugin on

""" Cursor Motion
set scrolloff=3
set backspace=indent,eol,start
set whichwrap+=<,>,h,l
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

""" Mouse
set mouse=a

""" Leader Key
let mapleader = ","

""" File Stats
set ruler

""" Blink Cursor on Error
set visualbell

""" Security
set modelines=0

""" Encoding
set encoding=utf-8

""" Better Command-Line Completion
set wildmenu

""" Allow hidden buffers
set hidden

""" Rengdering
set ttyfast

""" Status bar
set laststatus=2

""" Don't redraw when executing macros
set lazyredraw

""" Last Line
set showmode
set showcmd

""" Enable syntax processing
syntax enable

""" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
"  set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

""" Escape Timeout
if !has('gui_running')
  set ttimeout
  augroup fastEscape 
    autocmd!
    autocmd InsertEnter * set timeoutlen=0
    autocmd InsertLeave * set ttimeoutlen=1000 "<--- default value; also try 100 or something
  augroup END
endif
vnoremap <Esc> <C-c>

""" Searching
set incsearch
set hlsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr>

""" Plugins
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'dylanaraps/wal.vim'
call plug#end()

""" Formatting 
colorscheme wal
hi Normal guibg=NONE ctermbg=NONE
let g:lightline = {
            \ 'colorscheme': 'wal',
            \ }
