""" Mappings"{{{

let mapleader = " "

noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

map J 5j
map K 5k
map gj gJ
map Y y$

map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
"}}}

""" Plugins {{{
filetype indent plugin on

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'terryma/vim-multiple-cursors'
Plug 'lervag/vimtex'
Plug 'w0rp/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

map <C-o> :Ntree<CR>
let g:netrw_banner = 0
map <leader>o :FZF<CR>

"Lightline
let g:lightline = {
            \ 'separator': { 'left': '', 'right': '' },
            \ 'subseparator': { 'left': '', 'right': '' },
            \ }

"Vimtex
let g:vimtex_view_method = 'okular'
let g:vimtex_compiler_progname = 'nvr'
let g:tex_flavor = 'latex'


" }}}

""" Formatting {{{ 

set cursorline

" Number lines
set number
set relativenumber

" Spaces & Tabs
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set wrap
set formatoptions=tcqrn1
set noshiftround
set autoindent
set smartindent
" }}}

""" Config {{{
set nocompatible
set mouse=a

" Cursor Motion
set visualbell
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs

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
map <leader>; :terminal<CR>
" }}}

""" Search Tools {{{
set incsearch
set hlsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr>
" }}}

""" Folding {{{
set foldenable
set foldlevelstart=0
set foldnestmax=10
set foldmethod=marker
set modelines=1
" }}}

" vim:foldmethod=marker:foldlevel=0
