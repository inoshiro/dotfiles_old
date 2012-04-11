set number
set list
set listchars=tab:>-,eol:$
set autoindent
set smartindent
set backspace=indent,eol,start
set incsearch
set ignorecase
set wildmenu

syntax on
set t_Co=256
set background=dark

" status line
set laststatus=2

" General keymap
let mapleader = ";"

" Plugins
" -------------------

""" Vundle '''
set rtp+=~/.vim/vundle/
call vundle#rc()
filetype plugin on

Bundle "altercation/vim-colors-solarized"
Bundle "Lokaltog/vim-powerline"

"let g:solarized_termcolors=256
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
