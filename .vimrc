" vundle setup through line 11
set nocompatible              " be improved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'flazz/vim-colorschemes'

call vundle#end()            " required
filetype plugin indent on    " required

" tabs and other settings
set tabstop=3
set shiftwidth=3
set softtabstop=0
set expandtab
set smarttab

" set line numbers to true
set number

" disbale bell sound
set noeb vb t_vb=

" colors
" set background=dark
set t_Co=256
colorscheme molokai
" enable syntax highlighting
if !exists("g:syntax_on")
   syntax enable
endif

" git configuration
autocmd Filetype gitcommit setlocal spell textwidth=72

" Ctrl + s for escape and write
noremap <C-s> <esc>:w<CR>
inoremap <C-s> <esc>:w<CR>

" some suggestions from thoughtbot, everything below this line is from there bby
" The ones I like will be kept and sorted
nmap 0 ^

" some mappings
map <C-t> <esc>:tabnew<CR>
map <C-x> <C-w>c

" leader key setting
let mapleader = "\<Space>"
nmap <leader>vr :tabedit $MYVIMRC<CR>
nmap <leader>so :source $MYVIMRC<CR> 

" some general configurations
set scrolloff=4 " Keep at lease 4 lines below cursor

" moving down within the same line
nmap k gk
nmap j gj

" command aliases for typoed commands
command! Q q " both :q and :Q work identically

" CtrlP configuration
let g:ctrl_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0
