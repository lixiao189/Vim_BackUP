set relativenumber
syntax on
set nowrap " 禁止折行
let mapleader = "\<space>"
" set indent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set backspace=2 " 设置删除键为增强模式
set autoindent
set cindent
" Settings for gvim
if has("gui_running")
	set linespace=2
	set lines=35 columns=100
	set guifont=SF\ Mono:h13
endif

" Manage your plugins here
call plug#begin('~/.vim/plugged')
Plug 'skywind3000/vim-auto-popmenu'
Plug 'skywind3000/vim-dict'
Plug 'xuhdev/singlecompile'
Plug 'morhetz/gruvbox'
Plug 'chiel92/vim-autoformat'
Plug 'scrooloose/nerdtree'
Plug 'chun-yang/auto-pairs'
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

" The Settings of the auto completiona
let g:apc_enable_ft = {"*": 1}
set cpt=.,k,w,b
set completeopt=menu,menuone,noselect
set shortmess+=c " Dont' show the tips under the window

" set the autoformatter
let g:formatdef_custom_c = '"astyle --style=google"'
let g:formatters_cpp = ['custom_c']
let g:formatters_c = ['custom_c']
let g:formatdef_custom_asm = '"/Users/node/Go/bin/asmfmt"' " set the path to asm formatter
let g:formatters_asm = ['custom_asm']

" set the hot key to run the programe
nmap <leader>c :SCCompile<cr>
nmap <leader>r :SCCompileRun<cr>

" set the hot key to open the shell
nmap <leader>s :term<CR>

" set the hot key of the TagBar plugin
nmap <leader>t :TagbarToggle<CR>

" set the hot key of nerdtree
nmap <leader>f :NERDTreeToggle<CR>
" let NERDTreeShowHidden=1 "Show the hidden file defaultly

" set the auto-format
noremap <S-f> :Autoformat<CR>

" set themes
set shortmess+=I " Don't show the introduction of the VIM
let g:go_highlight_trailing_whitespace_error=0 " Stop hightlight the trailing whitespace in go file
set noshowmode " Stop showing the editing mode
if has('gui_running')
	set cul
	colorscheme gruvbox
	set background=light
else
	colorscheme gruvbox
	set background=light
	set cul
endif
let g:airline_theme='monochrome'
