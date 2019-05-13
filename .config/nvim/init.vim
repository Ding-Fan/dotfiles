" Plugins
call plug#begin('~/.vim/plugged')

"
" Status and Display
"
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'

"
" Development Workflow
"
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'

"
" HTML / XML
"
Plug 'othree/html5.vim'
Plug 'alvan/vim-closetag'

"
" CSS & Preprocessors
"
Plug 'hail2u/vim-css3-syntax'
Plug 'ap/vim-css-color'
Plug 'cakebaker/scss-syntax.vim'
Plug 'groenewege/vim-less'
Plug 'othree/csscomplete.vim'

"
" JavaScript
"
" Plug 'pangloss/vim-javascript'
Plug 'neoclide/vim-jsx-improve'

"
" Vue
"
Plug 'posva/vim-vue'

"
" Auto Completion
"
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins' }

"
" Async Linting
"
Plug 'w0rp/ale'

" File
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Color themes & Aesthetics
Plug 'morhetz/gruvbox'

call plug#end()

" Neovim Setting

let mapleader=','

" Theme
set termguicolors
set background=light " It says this should before set colorscheme
colorscheme gruvbox

syntax on
syntax enable

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

set hlsearch
set incsearch
set ignorecase
set smartcase

set ruler
" Line Number
set number
set relativenumber

" No Beeping
set visualbell
set noerrorbells

set history=1000

set noswapfile
set nobackup

" vim-airline
let g:airline_powerline_fonts = 1
let g:airlire#extensions#tabline#enabled = 1
" Move to the next/previous buffer
nmap <Leader>[ :bprevious<CR>
nmap <Leader>] :bnext<CR>
nmap <Leader>k :bprevious<CR>
nmap <Leader>l :bnext<CR>
" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <Leader>bq :bp <BAR> bd #<CR>

" deal with system clipboard
set clipboard+=unnamedplus

" Use spaces instead of tabs
set expandtab
" 1 tab is 4 spaces
set shiftwidth=4
set tabstop=4
set smarttab


" Color

" Highlight current line
set cursorline

" Ale (Linter and Autocompletion)
let g:ale_completion_enabled = 1
let g:ale_completion_max_suggestions = 10
let g:airline#extensions#ale#enabled = 1
let g:ale_linters = {'javascript': ['eslint', 'prettier'], 'jsx': ['eslint', 'prettier'], 'less': ['prettier']}
let g:ale_linter_aliases = {'javascript': 'css', 'jsx': 'css'}

"
" Deoplete
"
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case = 1

" tab complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" wepy file syntax highlight
au BufRead,BufNewFile *.wpy setlocal filetype=vue.html.javascript.css
