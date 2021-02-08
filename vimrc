set relativenumber
syntax on
set nowrap " 禁止折行
let mapleader = "\<space>"
" set indent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set backspace=2 " 设置删除键为增强模式
autocmd FileType html set tabstop=2
autocmd FileType html set softtabstop=2
autocmd FileType html set shiftwidth=2
set autoindent
set cindent
" Settings  for gvim
if has("gui_running")
	set lines=40 columns=120
	set guifont=SF\ Mono\ Regular:h14
endif

" Manage your plugins here
call plug#begin('~/.vim/plugged')
Plug 'w0rp/ale'
Plug 'vim-scripts/AutoComplPop'
Plug 'xuhdev/singlecompile'
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
Plug 'alvan/vim-closetag'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" set the vim-closetag plugins
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
let g:closetag_filetypes = 'html,xhtml,phtml'
" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" set the markdown preview
let g:mkdp_auto_start = 1
let g:mkdp_auto_close = 1

" set the autoformatter
let g:formatdef_custom_c = '"astyle --style=google"'
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
