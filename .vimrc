""" Formatting {{{ 

" Number lines
set number
set relativenumber

" Spaces & Tabs
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
" }}}

""" Config {{{

" Cursor Motion
set visualbell
set scrolloff=3
set backspace=indent,eol,start
set whichwrap+=<,>,h,l
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim
set mouse=a

set nocompatible

" Leader Key
let mapleader = ","
" File Stats
set ruler
" Security
set modelines=0
" Encoding
set encoding=utf-8
" Better Command-Line Completion
set wildmenu
""" Allow hidden buffers
set hidden
""" Rendering
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
" }}}

""" Search Tools {{{
set incsearch
set hlsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr>
" }}}

""" Escape Timeout {{{
if !has('gui_running')
  set ttimeout
  augroup fastEscape 
    autocmd!
    autocmd InsertEnter * set timeoutlen=0
    autocmd InsertLeave * set ttimeoutlen=1000 "<--- default value; also try 100 or something
  augroup END
endif

vnoremap <Esc> <C-c>
" }}}

""" Folding {{{
set foldenable
set foldlevelstart=0
set foldnestmax=10
set foldmethod=marker
set modelines=1
" }}}

""" Plugins {{{
filetype indent plugin on

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug '/usr/bin/fzf'
Plug 'terryma/vim-multiple-cursors'
Plug 'dylanaraps/wal.vim'
call plug#end()

map <C-o> :NERDTreeToggle<CR>
colorscheme wal
hi Normal guibg=NONE ctermbg=NONE
let g:lightline = {
            \ 'colorscheme': 'wal',
            \ }
" }}}

" vim:foldmethod=marker:foldlevel=0
