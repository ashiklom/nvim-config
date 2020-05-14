if &compatible
    set nocompatible
endif

call plug#begin('~/.local/share/vim-plug')

Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sleuth'
Plug 'airblade/vim-gitgutter'
Plug 'sheerun/vim-polyglot'
Plug 'haya14busa/incsearch.vim'
Plug 'easymotion/vim-easymotion'

Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }

" More text objects
Plug 'wellle/targets.vim'
Plug 'michaeljsmith/vim-indent-object'

" Completion
Plug 'Shougo/deoplete.nvim'

" R
Plug 'jalvesaq/Nvim-R', {'for': ['r', 'rmd']}

" Python
Plug 'davidhalter/jedi', {'for': ['python']}
Plug 'deoplete-plugins/deoplete-jedi', {'for': ['python']}
Plug 'jeetsukumaran/vim-pythonsense', {'for': ['python']}
Plug 'Vimjas/vim-python-pep8-indent', {'for': ['python']}

" TODO: Consider coc.vim (LSP-based) instead?
" TODO: File finder (e.g. fzf, clap)
" TODO: LaTeX

" Colorschemes
Plug 'arcticicestudio/nord-vim'
Plug 'dracula/vim'

call plug#end()

filetype plugin indent on
syntax enable

colorscheme dracula

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

inoremap jk <ESC>
nnoremap Q <Nop>

" Better window navigation
nnoremap <silent> <Leader>wj :wincmd j<CR>
nnoremap <silent> <Leader>wk :wincmd k<CR>
nnoremap <silent> <Leader>wl :wincmd l<CR>
nnoremap <silent> <Leader>wh :wincmd h<CR>
nnoremap <silent> <Leader>w- :split<CR>
nnoremap <silent> <Leader>w\ :vsplit<CR>
nnoremap <silent> <Leader>wd :quit<CR>

nnoremap <silent> <Leader>ev :e ~/.config/nvim/init.vim<CR>
nnoremap <silent> <Leader>sv :source ~/.config/nvim/init.vim<CR>

" Saving
nnoremap <silent> <Leader>fs :write<CR>

" Better incremental search, and automatic nohlsearch
let g:incsearch#auto_nohlsearch = 1
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map n <Plug>(incsearch-nohl-n)
map N <Plug>(incsearch-nohl-N)
map * <Plug>(incsearch-nohl-*)
map # <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

let g:deoplete#enable_at_startup = 1
call deoplete#custom#option({'auto_complete_delay': 200})

map gs <Plug>(easymotion-prefix)

" Clap shortcuts
nnoremap <silent> <Leader><space> :Clap files<CR>
nnoremap <silent> <Leader>ff :Clap filer<CR>
nnoremap <silent> <Leader>fF :Clap filer ~<CR>
nnoremap <silent> <Leader>bb :Clap buffers<CR>
nnoremap <silent> <Leader>ss :Clap lines<CR>
nnoremap <silent> <Leader>hh :Clap help_tags<CR>
nnoremap <silent> <Leader>hb :Clap maps<CR>
