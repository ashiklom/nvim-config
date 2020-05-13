if &compatible
    set nocompatible
endif

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')
    call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

    call dein#add('tpope/vim-sensible')
    call dein#add('tpope/vim-surround')
    call dein#add('tpope/vim-fugitive')

    " More text objects
    call dein#add('wellle/targets.vim')
    call dein#add('michaeljsmith/vim-indent-object')

    " Color

    call dein#end()
    call dein#save_state()
endif

filetype plugin indent on
syntax enable

set tabstop=4
set shiftwidth=0
set softtabstop=-1
set shiftround
set expandtab
set autoindent
set copyindent

set nowrap          " Soft line wrapping
set linebreak       " Break lines at logical places
set breakindent     " Align soft wrap to indent

set incsearch       " Search as characters are entered
set ignorecase      " Ignore case in search
set smartcase       " ...unless some capital letters are in the search

set hidden          " Allow modified buffers in background

set termguicolors

set scrolloff=2     " Leave this many lines at bottom of screen when scrolling

set noswapfile

set wildignore+=*.o,*.so,*.html

let &undodir = "~/.cache/vim-undo"
set isfname-==

let mapleader=" "
nnoremap <Leader>gg :Git<CR>
