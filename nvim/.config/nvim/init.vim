call plug#begin('~/.config/nvim/plugged')
  Plug 'mhinz/vim-startify'
  Plug 'scrooloose/nerdtree'
  Plug 'tpope/vim-commentary'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'w0rp/ale'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'easymotion/vim-easymotion'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-abolish'
  Plug 'tpope/vim-unimpaired'
  Plug 'jiangmiao/auto-pairs'
  Plug 'xolox/vim-misc'
  Plug 'xolox/vim-notes'
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'ervandew/supertab'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'eugen0329/vim-esearch'
call plug#end()

" Fundamental settings
  set encoding=utf-8
  set fileencoding=utf-8
  set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1
  set fileformat=unix
  set fileformats=unix,dos,mac
  filetype on
  filetype plugin on
  filetype plugin indent on
  syntax on

" Some useful settings
  set smartindent
  set expandtab         "tab to spaces
  set tabstop=2         "the width of a tab
  set shiftwidth=2      "the width for indent
  set foldenable
  set foldmethod=indent "folding by indent
  set foldlevel=99
  set ignorecase        "ignore the case when search texts
  set smartcase         "if searching text contains uppercase case will not be ignored
  set hlsearch
  set incsearch         "incremental searches

" Sessions
  set backup             " keep a backup file (restore to previous version)
  set undofile           " keep an undo file (undo changes after closing)

" Copy/Paste/Cut
	if has('unnamedplus')
		set clipboard=unnamed,unnamedplus
	endif

" Looks
  set number relativenumber  "line number
  set nowrap                 "no line wrapping

" Maintain Visual Mode after shifting > and <
  vmap < <gv
  vmap > >gv

" Split panes
  noremap <Leader>- :<C-u>split<CR>
  noremap <Leader>\| :<C-u>vsplit<CR>

" NERDTree
  map <C-f> :NERDTreeToggle<CR>

" Airline
  let g:airline_theme = 'powerlineish'
  let g:airline#extensions#branch#enabled = 1
  let g:airline#extensions#tagbar#enabled = 1
  let g:airline#extensions#tabline#enabled = 1
  let g:airline_skip_empty_sections = 1

" CtrlP
  let g:ctrlp_user_command = ['.git', 'cd %s; and git ls-files -co --exclude-standard']

" Haskell
  autocmd BufNewFile,BufRead *.hs setlocal tabstop=4 shiftwidth=4
	let g:haskell_format_autosave = 1
	augroup haskellFormat
		autocmd!
		autocmd BufWritePre *.hs call haskell#Format()
	augroup END

" Deoplete
  let g:deoplete#enable_at_startup = 1

" Ale "
  let g:ale_linters_explicit = 1
  " let g:ale_linters = {
  " \   'haskell': ['stack-ghc', 'hlint'],
  " \}
