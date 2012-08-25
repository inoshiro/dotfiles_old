set number
set list
set listchars=tab:>-,eol:$
set autoindent
set smartindent
set tabstop=4 
set shiftwidth=4
set softtabstop=4
set backspace=indent,eol,start
set incsearch
set ignorecase
set wildmenu
set hlsearch

syntax on
set t_Co=256
set background=dark

" status line
set laststatus=2

" General keymap
let mapleader = ";"

" Plugins
" -------------------

""" neobundle
set nocompatible               " Be iMproved
filetype off                   " Required!

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundle "altercation/vim-colors-solarized"
NeoBundle "Lokaltog/vim-powerline"
NeoBundle "vim-scripts/mako.vim"
NeoBundle "Shougo/unite.vim"
NeoBundle "Shougo/neocomplcache"
NeoBundle "https://bitbucket.org/shellholic/vim-creole"

filetype plugin indent on     " Required!
"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
if neobundle#exists_not_installed_bundles()
  echomsg 'Not installed bundles : ' .
        \ string(neobundle#get_not_installed_bundle_names())
  echomsg 'Please execute ":NeoBundleInstall" command.'
  "finish
endif

let g:solarized_termcolors=256
colorscheme solarized

" unite
nnoremap <silent> <C-r>  :<C-u>Unite file_mru<CR>
nnoremap <silent> <C-n>  :<C-u>Unite buffer <CR>
nnoremap <silent> <Leader>d :<C-u>Unite file<CR>
nnoremap <silent> <Leader>m :<C-u>Unite bookmark<CR>
nnoremap <silent> <Leader>h :<C-u>Unite outline<CR>

autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
  " Overwrite settings.
  imap <buffer> jj <Plug>(unite_insert_leave)
  imap <buffer> <ESC> <ESC><ESC>
  nnoremap <buffer> t G
  startinsert
endfunction

" neocomplcache
" -------------------
let g:neocomplcache_enable_at_startup = 1
imap <C-k> <Plug>(neocomplcache_snippets_expand)
smap <C-k> <Plug>(neocomplcache_snippets_expand)

" FileType
" for python
autocmd FileType python setl autoindent
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setl tabstop=8 expandtab shiftwidth=4 softtabstop=4
autocmd FileType python setl commentstring=\ #\ %s
