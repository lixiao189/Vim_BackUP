set relativenumber
syntax on
set nowrap " 禁止折行
let mapleader = "\<space>"
set backspace=2 " 设置回车键
" set indent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set cindent
" Settings  for gvim
if has("gui_running")
	set lines=45 columns=120
	set guifont=SF\ Mono\ Regular:h12
endif

" Manage your plugins here
call plug#begin('~/.vim/plugged')
Plug 'xuhdev/singlecompile'
Plug 'mhinz/vim-startify'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'chiel92/vim-autoformat'
Plug 'scrooloose/nerdtree'
Plug 'tacahiroy/ctrlp-funky'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'chun-yang/auto-pairs'
Plug 'yggdroot/indentline'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" set the Coc.Nvim plugins
let g:coc_global_extensions=['coc-json',
			\ 'coc-vimlsp',
			\ 'coc-go',
			\ 'coc-marketplace',
			\ 'coc-pyright']
" TextEdit might fail if hidden is not set.
set hidden
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
	" Recently vim can merge signcolumn and number column into one
	set signcolumn=number
else
	set signcolumn=yes
endif
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
			\ pumvisible() ? "\<C-n>" :
			\ <SID>check_back_space() ? "\<TAB>" :
			\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" set the markdown preview
let g:mkdp_auto_start = 1
let g:mkdp_auto_close = 1

" set the autoformatter
let g:formatdef_custom_c = '"astyle --style=google --indent=spaces=2"'
let g:formatters_cpp = ['custom_c']
let g:formatters_c = ['custom_c']

" set the hot key to run the programe
nmap <leader>c :SCCompile<cr>
nmap <leader>r :SCCompileRun<cr>

" set the hot key to open the shell
nmap <leader>s :term<CR>

" set the hot key of the TagBar plugin
nmap <leader>t :TagbarToggle<CR>

" set the hotkey of the ctrlp Plugin
nmap <leader>p :CtrlP<CR>

" set the function fuzzing searching function
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_funky_matchtype = 'path'
nnoremap <Leader>ff :CtrlPFunky<Cr>

" set the hot key of nerdtree
nmap <leader>f :NERDTreeToggle<CR>
" let NERDTreeShowHidden=1 "Show the hidden file defaultly

" set the auto-format
noremap <S-f> :Autoformat<CR>

" set theme
let g:go_highlight_trailing_whitespace_error=0 " Stop hightlight the trailing whitespace in go file
set background=dark
colorscheme gruvbox
set cul
set noshowmode " Stop showing the editing mode
let g:airline_theme='bubblegum'
