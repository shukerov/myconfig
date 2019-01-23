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
Plugin 'tpope/vim-fugitive' " a fancy git wrapper
Plugin 'tpope/vim-repeat' " lets you use . for repeating non-native commands
Plugin 'flazz/vim-colorschemes'

" some racket plugins, just testing
" Plugin 'vim-syntastic/syntastic'
Plugin 'wlangstroth/vim-racket'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'jpalardy/vim-slime'

" plugins i should definitely try out
Plugin 'junegunn/fzf.vim' " search through multiple files

call vundle#end()            " required
filetype plugin indent on    " required

" START RACKET
set lisp " improves basic for indentation and web word hopping
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": split($TMUX, ",")[0], "target_pane": "0.1"}
xmap <leader>q <Plug>SlimeRegionSend
nmap <leader>q <Plug>SlimeParagraphSend
nmap <leader>rb :RainbowParenthesesToggle<CR> :RainbowParenthesesLoadSquare<CR>
nmap <leader>cr :!racket %<CR>
" END for RACKET

" tabs and other settings
set tabstop=3
set shiftwidth=3
set softtabstop=0
set expandtab
set smarttab

" set line numbers to true
set relativenumber
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

" Ctrl + F for visually searching highlited text
vnoremap <C-f> y<ESC>/<C-r>"<CR>

" some suggestions from thoughtbot, everything below this line is from there bby
" The ones I like will be kept and sorted
nmap 0 ^

" some mappings
map <C-t> <esc>:tabnew<CR>
map <C-x> <C-w>c

" leader key setting
let mapleader = ","
nmap <leader>vr :tabedit $MYVIMRC<CR>
nmap <leader>so :source $MYVIMRC<CR> 

" some general configurations
set scrolloff=4 " Keep at lease 4 lines below cursor

" show cursor position at all times
set ruler

" moving down within the same line
nmap k gk
nmap j gj

" command aliases for typoed commands
command! Q q " both :q and :Q work identically

" CtrlP configuration
let g:ctrl_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0
