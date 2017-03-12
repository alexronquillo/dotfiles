" ============================================================
" Vundle
" ============================================================

set nocompatible                   " required
filetype off                       " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'               " Vundle, required
Plugin 'tpope/vim-fugitive'                 " Git commands
Plugin 'vim-airline/vim-airline'            " Airline
Plugin 'vim-airline/vim-airline-themes'     " Airline themes
Plugin 'ctrlpvim/ctrlp.vim'                 " Ctrlp
Plugin 'nvie/vim-flake8'                    " Flake8
Plugin 'kshenoy/vim-signature'              " Show marks

call vundle#end()                  " required
filetype plugin indent on          " required

" ============================================================
" Plugin Settings
" ============================================================

" set airline to always appear
set laststatus=2

" use powerline fonts
let g:airline_powerline_fonts = 1

" set airline theme
let g:airline_theme='papercolor'

" ============================================================
" Vim
" ============================================================

" enable syntax highlighting
syntax enable

" show line numbers
set number

" navigate split layout
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" pep8 indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

" add color column 
set colorcolumn=101
highlight ColorColumn ctermbg=4

" set utf-8 encoding
set encoding=utf-8

" use system clipboard
set clipboard=unnamed

" ============================================================
" Auto commands
" ============================================================

" run flake8 on save
autocmd BufWritePost *.py call Flake8()
