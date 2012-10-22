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

set ruler
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
filetype plugin on

set wildmenu  " show list instead of just completing
set wildmode=list:longest,full

set foldenable          " auto fold code

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:. " Highlight problematic whitespace


color molokai

"PLUGINS
"CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v(.git|web|cache|vendor)$',
  \ }

let mapleader                       = ","

"Autocomplete mode
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

"phpdoc
au BufRead,BufNewFile *.php nnoremap <buffer> <leader>p :call PhpDoc()<CR>
au BufRead,BufNewFile *.php vnoremap <buffer> <leader>p :call PhpDocRange()<CR>

imap ;dump \Doctrine\Common\Util\Debug::dump
