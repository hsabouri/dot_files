set nocompatible 
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'rust-lang/rust.vim'

syntax on
set ruler
set rnu
set nu
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
nnoremap <Tab> <c-W>w
nnoremap <S-Tab> <c-W>W
imap jj <ESC>
imap cosnt const
map <C-j> <C-x>
map <C-k> <C-a>
map <left> <Nop>
map <right> <Nop>
map <up> <Nop>
map <down> <Nop>

"Deactivates expandtab for makefiles
autocmd FileType make setlocal noexpandtab

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

let @c = '0i//x€kbjjxxi/€kr€kbwi| Ako€kb//  |€kbo--------------------------------------------------------------------------------oyyjp'
