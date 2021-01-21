set nu
syntax on

" Manage your plugins here
call plug#begin('~/.vim/plugged')
Plug 'lifepillar/vim-solarized8'
Plug 'prettier/vim-prettier'
Plug 'ervandew/supertab'
Plug 'scrooloose/syntastic'
call plug#end()

" set indent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set cindent

" Set theme for gvim
if has("gui_running")
  set cul
  set cuc
  set lines=40 columns=120
  set background=dark
	set guifont=SF\ Mono\ Regular:h12
	colorscheme solarized8
endif
