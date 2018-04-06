set nocompatible 
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'isRuslan/vim-es6'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'aklt/plantuml-syntax'
Plugin 'scrooloose/vim-slumlord'

let mapleader = ","

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_cpp_check_header = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

syntax on
set ruler
set rnu
set nu
nnoremap <Tab> <c-W>w
nnoremap <S-Tab> <c-W>W
imap jj <ESC>
imap cosnt const
map <C-j> <C-e>
map <C-k> <C-y>
map <C-h> <C-u>
map <C-l> <C-d>
map <left> <Nop>
map <right> <Nop>
map <up> <Nop>
map <down> <Nop>

nnoremap <silent> <Leader>= :exe "vertical resize " . (winwidth(0) + 10)<CR>
nnoremap <silent> <Leader>- :exe "vertical resize " . (winwidth(0) - 10)<CR>

"Deactivates expandtab for makefiles
autocmd FileType make setlocal noexpandtab

"Recognize .h as C and not C++
augroup project
	autocmd!
	autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END

command WQ wq
command Wq wq
command W w
command Q q
command WA wa
command Wa wa
command QA qa
command Qa qa

execute pathogen#infect()
filetype plugin indent on

set exrc
set secure
