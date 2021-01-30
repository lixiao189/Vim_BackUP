set relativenumber
syntax on
" 禁止折行
set nowrap
let mapleader = "\<space>"
"设置回车键
set backspace=2

" Manage your plugins here
call plug#begin('~/.vim/plugged')
Plug 'valloric/youcompleteme'
Plug 'joshdick/onedark.vim'
Plug 'chiel92/vim-autoformat'
Plug 'scrooloose/nerdtree'
Plug 'chun-yang/auto-pairs'
Plug 'yggdroot/indentline'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'majutsushi/tagbar'
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" set the fuzz searching
nmap <leader>p :CtrlP<CR>

" set the markdown preview
let g:mkdp_auto_start = 1
let g:mkdp_auto_close = 1

" set the hot key of terminal
nmap <leader>t :term<CR>

" set the hot key of Tagbar
nmap <leader>f :TagbarToggle<CR>

" set the hot key of nerdtree
nmap <leader>n :NERDTreeToggle<CR>

" set the auto-format
noremap <S-f> :Autoformat<CR>

" set indent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set cindent

" set theme
set background=dark
colorscheme onedark
set cul
set noshowmode " Stop showing the editing mode
let g:airline_theme='bubblegum'

" Settings  for gvim
if has("gui_running")
  set lines=50 columns=130
  autocmd VimEnter * NERDTree " Open the file tree automaticly
  set guifont=SF\ Mono\ Regular:h12
endif
