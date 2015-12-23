set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim.git'
Plugin 'pangloss/vim-javascript.git'
Plugin 'tomasr/molokai.git'
Plugin 'ervandew/supertab.git'
Plugin 'spf13/PIV.git'
Plugin 'sumpygump/php-documentor-vim.git'
Plugin 'beyondwords/vim-twig.git'
Plugin 'arnaud-lb/vim-php-namespace.git'
Plugin 'digitaltoad/vim-jade.git'
Plugin 'tpope/vim-surround.git'
Plugin 'scrooloose/syntastic.git'
Plugin 'msanders/snipmate.vim.git'
Plugin 'heavenshell/vim-jsdoc.git'
Plugin 'mileszs/ack.vim'
Plugin 'embear/vim-localvimrc'
Plugin 'mattn/emmet-vim.git'
Plugin 'godlygeek/tabular.git'
"Plugin 'lambdatoast/elm.vim'
"Plugin 'plasticboy/vim-markdown'

call vundle#end()
filetype plugin indent on

syntax on
set showmode
set showcmd

set encoding=utf8
set fileencoding=utf8
set fileformat=unix
set autoindent
set ts=4

set scrolloff =3                   " Show 3 lines of context around the cursor.

set ruler
set number
set cursorline

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

set cryptmethod=blowfish

set wildmenu  " show list instead of just completing
set wildmode=list:longest,full

"set foldenable          " auto fold code
set foldmethod=marker
set foldmarker={,}

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:. " Highlight problematic whitespace

"mappings
let mapleader = ","

map <C-j> g]
"delete the block the cursor is in
nnoremap <leader>b [{V%d
imap jk <Esc>

color molokai

"PLUGINS
"CtrlP
map <c-b> :CtrlPBuffer<CR>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_max_depth=1000
let g:ctrlp_max_files=100000

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v(.git|web|cache|vendor|node_modules|lib|tmp|bin|var|test|docs|build|_site|Proxy)$',
  \ }

"hardtime
"let g:hardtime_default_on = 1

"Syntastic
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_always_populate_loc_list=1

"jsDoc
let g:jsdoc_allow_input_prompt=1
let g:jsdoc_input_description=1
au BufRead,BufNewFile *.js nnoremap <buffer> <leader>p :JsDoc<CR>
"
"phpdoc
au BufRead,BufNewFile *.php nnoremap <buffer> <leader>p :call PhpDoc()<CR>
au BufRead,BufNewFile *.php nnoremap <buffer> <leader>u :call PhpInsertUse()<CR>

"emmet
au BufRead,BufNewFile *.html,*.css,*.twig map <buffer> <leader>e <c-y>,

"source ~/.vimrc.bepo
