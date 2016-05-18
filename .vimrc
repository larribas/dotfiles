set nocompatible
filetype off

set encoding=utf-8
set backspace=2   " Backspace deletes like most programs in insert mode
set showcmd
set autowrite
set tabstop=2 shiftwidth=2 expandtab

" Set line numbers relative to the cursor (toggle relativity)
set number
set relativenumber
:nmap <C-N><C-N> :set invrelativenumber<CR>

syntax on

autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 noexpandtab

" Vundle Plugin Management
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'


Plugin 'scrooloose/nerdtree'
let NERDTreeShowHidden=1

Plugin 'Xuyuanp/nerdtree-git-plugin'
map <C-n> :NERDTreeToggle<CR>

Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


