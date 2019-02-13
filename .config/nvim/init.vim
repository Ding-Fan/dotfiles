" Plugins
  call plug#begin('~/.vim/plugged')
    " File
    Plug 'scrooloose/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'

    " Color themes & Aesthetics
    Plug 'morhetz/gruvbox'
    Plug 'ryanoasis/vim-devicons'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'vim-airline/vim-airline'

    " CSS
    Plug 'hail2u/vim-css3-syntax'
    " HTML
    Plug 'othree/html5.vim'
    " Vue
    Plug 'posva/vim-vue'
    " JavaScript
    Plug 'pangloss/vim-javascript'

    Plug 'tpope/vim-surround'
    Plug 'w0rp/ale'

  call plug#end()

" Neovim Setting

    " Line Number
    set number
    set relativenumber
    " No Beeping
    set visualbell
    set noerrorbells
    " Theme
      set termguicolors
      colorscheme gruvbox
      set background=light

  " vim-airline
  let g:airline_powerline_fonts = 1
  " let g:airlire#extensions#tabline#enabled = 1

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

  " wepy file syntax highlight
  au BufRead,BufNewFile *.wpy setlocal filetype=vue.html.javascript.css
