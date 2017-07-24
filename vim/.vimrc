set nocompatible

call plug#begin("~/.vim/bundle")
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'tomasr/molokai'
Plug 'sickill/vim-monokai'
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'
"Plug 'neomake/neomake'
Plug 'roxma/nvim-completion-manager'
Plug 'roxma/nvim-cm-tern',  {'do': 'npm install'}
"Plug 'Shougo/deoplete.nvim'
"Plug 'carlitux/deoplete-ternjs', { 'do': 'npm -g install tern' }
Plug 'jelera/vim-javascript-syntax'
Plug 'heavenshell/vim-jsdoc'
Plug 'spf13/PIV'
Plug 'beyondwords/vim-twig'
Plug 'plasticboy/vim-markdown'
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/goyo.vim'
Plug 'jamessan/vim-gnupg'
Plug 'arnaud-lb/vim-php-namespace'
Plug 'leafgarland/typescript-vim'
Plug 'godlygeek/tabular'

"Plug 'trevordmiller/nova-vim'
"Plug 'ervandew/supertab'
"Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
"Plug 'pangloss/vim-javascript'
"Plug 'embear/vim-localvimrc'
"Plug 'digitaltoad/vim-jade'
"Plug 'lambdatoast/elm.vim'
call plug#end()

filetype plugin indent on
syntax on
set showmode
set showcmd

set encoding=utf8
set fileencoding=utf8
set fileformat=unix
set autoindent
set ts=4

set scrolloff=5

set ruler
set number
set cursorline

set backspace=indent,eol,start

set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab

set showmatch  "show matching brackets/parenthesis
set incsearch  "find as you type search
set hlsearch   "highlight search terms
set ignorecase "case insensitive search
set smartcase

"set cryptmethod=blowfish

set wildmenu  "show list instead of just completing
set wildmode=list:longest,full

set nofoldenable          "no auto fold code
set foldmethod=marker
set foldmarker={,}

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:. " Highlight problematic whitespace

"disable matchit plugin
let loaded_matchit = 1

"mappings
let mapleader = ","

map <C-j> g]
imap jk <Esc>
nmap <leader>s :syntax sync fromStart<CR>

colorscheme molokai
"colorscheme nova

"PLUGINS
"CtrlP
map <c-b> :CtrlPBuffer<CR>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_max_depth=1000
let g:ctrlp_max_files=100000

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v(.git|web|cache|vendor|node_modules|lib|tmp|bin|var|test|docs|build|_site|Proxy|assets)$',
  \ }

"deoplete
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <silent><expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

"tern
let g:tern_show_argument_hints = 'on_hold'
let g:tern_show_signature_in_pum = 1
let g:tern_request_timeout = 1

"Neomake
"let g:neomake_javascript_enabled_makers=['eslint']
"let g:neomake_php_enabled_makers=['php', 'phpmd']
"autocmd! BufWritePost * Neomake

"php-namespace
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>


"jsDoc
let g:jsdoc_allow_input_prompt=1
let g:jsdoc_input_description=1
au BufRead,BufNewFile *.js nnoremap <buffer> <leader>p :JsDoc<CR>

"emmet
au BufRead,BufNewFile *.html,*.css,*.twig map <buffer> <leader>e <c-y>,

"source ~/.vimrc.bepo
