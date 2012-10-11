call pathogen#infect()
set nocompatible
syntax on
set showmode
set showcmd

filetype plugin on

set encoding=utf8
set fileencoding=utf8
set autoindent
set ts=4

set scrolloff =3                   " Show 3 lines of context around the cursor.

set cursorline
set ruler

set noswapfile

set backspace=indent,eol,start

set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab

set showmatch " show matching brackets/parenthesis
set incsearch " find as you type search
set hlsearch  " highlight search terms
set ignorecase  " case insensitive search
set smartcase

set nocp
filetype plugin on

set wildmenu  " show list instead of just completing
set wildmode=list:longest,full

set foldenable          " auto fold code

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:. " Highlight problematic whitespace


" Easier moving in tabs and windows
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l<C-W>_
map <C-H> <C-W>h<C-W>_

color molokai

"PLUGINS
"CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let mapleader                       = ","

let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

inoremap  <silent> = =<esc>:Tabularize /=<cr>A
