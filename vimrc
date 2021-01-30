set relativenumber
syntax on
" 禁止折行
set nowrap
let mapleader = "\<space>"
"设置回车键
set backspace=2
" set indent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set cindent
" Settings  for gvim
if has("gui_running")
  set lines=50 columns=135
  set guifont=SF\ Mono\ Regular:h12
endif

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

" set the markdown preview
let g:mkdp_auto_start = 1
let g:mkdp_auto_close = 1

" set the hot key of terminal
nmap <leader>t :term<CR>

" set the hotkey of the ctrlp Plugin
nmap <leader>p :CtrlP<CR>

" set the hot key of Tagbar
nmap <leader>f :TagbarToggle<CR>

" set the hot key of nerdtree
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeShowHidden=1 "Show the hidden file defaultly 
" Open the nerdtree automaticly under the GUI mode
if has("gui_running")
  autocmd VimEnter * NERDTree 
endif

" set the auto-format
noremap <S-f> :Autoformat<CR>

" set theme
set background=dark
colorscheme onedark
set cul
set noshowmode " Stop showing the editing mode
let g:airline_theme='bubblegum'

