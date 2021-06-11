set relativenumber
syntax on
set nowrap " 禁止折行
let mapleader = "\<space>" " Use the <space> as the leader key
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

" These are lightweight plugins to complete the words on the servers
" Plug 'skywind3000/vim-auto-popmenu'
" Plug 'skywind3000/vim-dict'

" The lsp server for vim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Change the item of the completion with <TAB>
Plug 'ervandew/supertab'

Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'chun-yang/auto-pairs'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()


" The settings of the coc.nvim complete plugins
set shortmess+=c
let g:coc_global_extensions = ['coc-java',
			\'coc-json',
			\'coc-vimlsp']
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup
" Use H to show documentation in preview window.
nnoremap <silent> H :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
" The updatetime of the coc.nvim
set updatetime=200
" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
" Set the hot key to autoformat the file
nmap <s-f> :Format<cr>


" The settings of the supertab plugins
let g:SuperTabDefaultCompletionType = "<c-n>"


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

" set themes
set shortmess+=I " Don't show the introduction of the VIM
let g:go_highlight_trailing_whitespace_error=0 " Stop hightlight the trailing whitespace in go file
set noshowmode " Stop showing the editing mode
if has('gui_running')
	set cul
	colorscheme gruvbox
	set background=light
else
	colorscheme default
	" set background=dark
	" set cul
endif
let g:airline_theme='monochrome'
