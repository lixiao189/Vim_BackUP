set relativenumber 
syntax on
set nowrap " 禁止折行 
let mapleader = "\<space>" " Use the <space> as the leader key
" set indent
set tabstop=4 
set softtabstop=4 
set shiftwidth=4 
" if &filetype == 'c' || &filetype == 'cpp'
" 	set tabstop=2
" 	set softtabstop=2
" 	set shiftwidth=2
" endif

set backspace=2 "设置删除键为增强模式 
set autoindent 
set cindent
" Settings for gvim
if has("gui_running") 
endif

" Manage your plugins here
call plug#begin('~/.vim/plugged')

" These are lightweight plugins to complete the words on the servers Plug
" 'skywind3000/vim-auto-popmenu' Plug 'skywind3000/vim-dict'

" The lsp server for vim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Change the item of the completion with <TAB>
Plug 'ervandew/supertab'

Plug 'scrooloose/nerdtree' 
Plug 'chun-yang/auto-pairs'
Plug 'itchyny/lightline.vim'

" The themes of the VIM
Plug 'altercation/solarized' 

call plug#end()

" The settings of the lightline
set laststatus=2


" The settings of the coc.nvim complete plugins
set shortmess+=c
let g:coc_global_extensions = ['coc-java',
			\'coc-json',
			\'coc-vimlsp',
			\'coc-clangd',
			\'coc-go',
			\'coc-xml']
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup
" Use <space> + h to show documentation in preview window.
nnoremap <leader> h :call <SID>show_documentation()<CR>
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
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" The hot key for coc.nvim action
nnoremap <leader>a :CocAction<cr>
" The hot key for coc.nvim diagnostics
nnoremap <leader>d :CocDiagnostics<cr>


" The settings of the supertab plugins
let g:SuperTabDefaultCompletionType = "<c-n>"

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

function! CocCurrentFunction()
	return get(b:, 'coc_current_function', '')
endfunction
if has('gui_running')
	set linespace=2 
	set lines=35 columns=100 
	set guifont=SF\ Mono:h13 
	colorscheme solarized 
	set background=light
	set cul

	let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status',
      \   'currentfunction': 'CocCurrentFunction'
      \ },
      \ }
else
	let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status',
      \   'currentfunction': 'CocCurrentFunction'
      \ },
      \ }
	colorscheme default
	set background=light
endif
