set nu
syntax on

" Manage your plugins here
call plug#begin('~/.vim/plugged')
Plug 'lifepillar/vim-solarized8'
Plug 'ervandew/supertab'
Plug 'scrooloose/syntastic'
Plug 'chiel92/vim-autoformat'
Plug 'scrooloose/nerdtree'
call plug#end()

" set the hot key of nerdtree
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" set the auto-format
noremap <S-f> :Autoformat<CR>
au BufWrite * :Autoformat

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

" set theme
set background=dark
colorscheme solarized8
set cul

" Settings  for gvim
if has("gui_running")
  set lines=40 columns=120
  set guifont=SF\ Mono\ Regular:h12
endif
