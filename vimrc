set relativenumber
syntax on
let mapleader = "\<space>"

" Manage your plugins here
call plug#begin('~/.vim/plugged')
Plug 'lifepillar/vim-solarized8'
Plug 'scrooloose/syntastic'
Plug 'chiel92/vim-autoformat'
Plug 'scrooloose/nerdtree'
Plug 'chun-yang/auto-pairs'
Plug 'yggdroot/indentline'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'majutsushi/tagbar'
call plug#end()

" set the markdown preview
let g:mkdp_auto_start = 1
let g:mkdp_auto_close = 1

" set the syntax check
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" set the hot key of terminal
nmap <leader>t :term<CR>

" set the hot key of Tagbar
nmap <leader>f :TagbarToggle<CR>

" set the hot key of nerdtree
nmap <leader>n :NERDTreeToggle<CR>

" set the auto-format
noremap <S-f> :Autoformat<CR>
au BufWrite * :Autoformat

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
