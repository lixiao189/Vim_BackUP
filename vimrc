set relativenumber
syntax on
set nowrap " 禁止折行
let mapleader = "\<space>"
set backspace=2 " 设置回车键
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
Plug 'mhinz/vim-startify'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'chiel92/vim-autoformat'
Plug 'scrooloose/nerdtree'
Plug 'tacahiroy/ctrlp-funky'
Plug 'chun-yang/auto-pairs'
Plug 'yggdroot/indentline'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" set the markdown preview
let g:mkdp_auto_start = 1
let g:mkdp_auto_close = 1

" set the autoformatter
let g:formatdef_custom_c = '"astyle --style=google --indent=spaces=2"'
let g:formatters_cpp = ['custom_c']
let g:formatters_c = ['custom_c']

" set the hot key of terminal
nmap <leader>te :term<CR>

" set the hot key of the TagBar plugin
nmap <leader>ta :TagbarToggle<CR>

" set the hotkey of the ctrlp Plugin
nmap <leader>p :CtrlP<CR>

" set the function fuzzing searching function
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_funky_matchtype = 'path'
nnoremap <Leader>fu :CtrlPFunky<Cr>

" set the hot key of nerdtree
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeShowHidden=1 "Show the hidden file defaultly

" set the auto-format
noremap <S-f> :Autoformat<CR>

" set theme
let g:go_highlight_trailing_whitespace_error=0 " Stop hightlight the trailing whitespace in go file
set background=dark
colorscheme gruvbox
set cul
set noshowmode " Stop showing the editing mode
let g:airline_theme='bubblegum'

