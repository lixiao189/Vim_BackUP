set nu
syntax on

" Manage your plugins here
call plug#begin('~/.vim/plugged')
Plug 'lifepillar/vim-solarized8'
call plug#end()

" set indent
set tabstop=2
set softtabstop=2
set expandtab
set autoindent
set cindent

" Set theme for gvim
if has("gui_running")
	set background=dark
	set guifont=SF\ Mono\ Regular:h12
	colorscheme solarized8
endif
