""" Number lines
set number
set relativenumber

""" Plugin
filetype indent plugin on

""" Cursor Motion
set scrolloff=3
set backspace=indent,eol,start
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

""" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

""" Allow hidden buffers
set hidden

""" Rengdering
set ttyfast

""" Status bar
set laststatus=2

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

""" Searching
set incsearch
set hlsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr>
