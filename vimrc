set relativenumber
syntax on
let mapleader = "\<space>"

" Manage your plugins here
call plug#begin('~/.vim/plugged')
Plug 'lifepillar/vim-solarized8'
Plug 'chiel92/vim-autoformat'
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim'
Plug 'chun-yang/auto-pairs'
Plug 'yggdroot/indentline'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
call plug#end()

" set the markdown preview
let g:mkdp_auto_start = 1
let g:mkdp_auto_close = 1

" set the hot key of nerdtree
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" set the auto-format
noremap <S-f> :Autoformat<CR>
au BufWrite * :Autoformat

" set the coc.nvim
let g:coc_global_extensions = [
      \ 'coc-clangd',
      \ 'coc-vimlsp',
      \ 'coc-ccls',
      \ 'coc-marketplace',
      \ 'coc-pyright']

  set hidden
  set updatetime=100
  " Set <tab> hot key
  inoremap <silent><expr> <TAB>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ coc#refresh()
  inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
  endfunction
  " go to syntax error
  nmap <silent> [g <Plug>(coc-diagnostic-prev)
  nmap <silent> ]g <Plug>(coc-diagnostic-next)
  " go to code navigation
  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent> gi <Plug>(coc-implementation)
  nmap <silent> gr <Plug>(coc-references)
  function! s:show_documennation()
    if (index(['vim','help'], &filetype) >= 0)
      execute 'h '.expand('<cword>')
    elseif (coc#rpc#ready())
      call CocActionAsync('doHover')
    else
      execute '!' . &keywordprg . " " . expand('<cword>')
    endif
  endfunction

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
