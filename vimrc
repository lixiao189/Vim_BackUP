set nu
syntax on

" Manage your plugins here
call plug#begin('~/.vim/plugged')
Plug 'lifepillar/vim-solarized8'
Plug 'prettier/vim-prettier'
Plug 'ervandew/supertab'
Plug 'scrooloose/syntastic'
call plug#end()

" set the syntax check plugin
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" set indent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set cindent

" Set theme for gvim
if has("gui_running")
  set cul " 开启当行高亮
  set lines=40 columns=120
  set background=dark
	set guifont=SF\ Mono\ Regular:h12
	colorscheme solarized8
endif
