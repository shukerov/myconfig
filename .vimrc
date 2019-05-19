set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
   Plugin 'airblade/vim-gitgutter'        " just a git gutter
   Plugin 'connorholyday/vim-snazzy'      " vim colorscheme
   Plugin 'ctrlpvim/ctrlp.vim'            " enables ctrl+p functionality similar to sublime
   Plugin 'eugen0329/vim-esearch'         " searching through multiple files
   Plugin 'flazz/vim-colorschemes'        " colorschemes for vim
   Plugin 'jpalardy/vim-slime'            " sending text from vim to a tmux pane
   Plugin 'junegunn/rainbow_parentheses.vim'  " parentheses are colored, really useful for LISP languages
   " Plugin 'kien/rainbow_parentheses.vim'  " parentheses are colored, really useful for LISP languages
   Plugin 'machakann/vim-highlightedyank' " flashes when you yank something
   Plugin 'rhysd/committia.vim'           " really nice split screen in vim, with git changes and etc
   Plugin 'RRethy/vim-hexokinase'         " adds colors rgb, and hex vals
   Plugin 'tpope/vim-commentary'          " for commenting lines out
   Plugin 'tpope/vim-fugitive'            " a fancy git wrapper
   Plugin 'tpope/vim-repeat'              " lets you use . for repeating non-native commands
   Plugin 'tpope/vim-surround'            " surrounds text objects, words or lines
   Plugin 'VundleVim/Vundle.vim'          " manages all plugins and etc
   Plugin 'wlangstroth/vim-racket'        " package for racket
   Plugin 'scrooloose/nerdtree' " nerd tree stuff
call vundle#end()

filetype on
filetype indent on
filetype plugin on

" START RACKET
" let g:rbpt_colorpairs = [
"     \ ['brown',       'RoyalBlue3'],
"     \ ['Darkblue',    'SeaGreen3'],
"     \ ['darkgray',    'DarkOrchid3'],
"     \ ['darkgreen',   'firebrick3'],
"     \ ['darkcyan',    'RoyalBlue3'],
"     \ ['darkred',     'SeaGreen3'],
"     \ ['darkmagenta', 'DarkOrchid3'],
"     \ ['brown',       'firebrick3'],
"     \ ['bray',        'RoyalBlue3'],
"     \ ['black',       'SeaGreen3'],
"     \ ['darkmagenta', 'DarkOrchid3'],
"     \ ['Darkblue',    'firebrick3'],
"     \ ['darkcyan',    'SeaGreen3'],
"     \ ['darkred',     'DarkOrchid3'],
"     \ ['darkgreen',   'RoyalBlue3'],
"     \ ['red',         'firebrick3'],
"     \ ]

" let g:rbpt_max = 16
" let g:rbpt_loadcmd_toggle = 0
" nmap <leader>rb :RainbowParenthesesToggle<CR>:RainbowParenthesesLoadSquare<CR>:RainbowParenthesesLoadSquare<CR>
" setting up rainbow parentheses
" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces
nmap <leader>r :RainbowParentheses!!<CR>

" let g:slime_target = "tmux"
" let g:slime_default_config = {"socket_name": split($TMUX, ",")[0], "target_pane": ".1"}
xmap <leader>q <Plug>SlimeRegionSend
nmap <leader>q <Plug>SlimeParagraphSend
nmap <leader>cr :!racket %<CR>

" there is a lot of repetition, below
" need a better way to do this
augroup myfiletypes
   autocmd!

   " Ruby
   " autoindent with two spaces, always expand tabs
   autocmd FileType ruby,eruby,yaml setlocal ai sw=2 sts=2 et
   autocmd FileType ruby,eruby,yaml setlocal path+=lib
   " Make ?s part of words
   autocmd FileType ruby,eruby,yaml setlocal iskeyword+=?

   " Python
   autocmd FileType python setlocal ai sw=2 sts=2 et
   autocmd FileType python setlocal colorcolumn=80

   " SQL
   au BufReadPost *.sql set filetype=sql
   autocmd FileType sql setlocal commentstring=--\ %s
   autocmd FileType sql setlocal colorcolumn=120

   " Racket   
   au BufReadPost *.rkt,*.rktl set filetype=racket
   " au filetype racket set lisp
   " set lisp " improves basic for indentation and web word hopping
   " autocmd FileType racket setlocal iskeyword+=?
   autocmd FileType racket setlocal commentstring=;\ %s
   autocmd FileType racket setlocal colorcolumn=120

   " C
   nmap <leader>cc :!make<CR>
   nmap <leader>ct :!make test<CR>
   autocmd FileType c,cpp setlocal commentstring=//\ %s
   autocmd FileType c,cpp setlocal colorcolumn=80

   " HTML/JS
   autocmd FileType html setlocal ai sw=2 sts=2 et

   " GIT 
   autocmd Filetype gitcommit setlocal spell textwidth=72
   
   " Others
   " Don't automatically continue comments after newline
   autocmd BufNewFile,BufRead * setlocal formatoptions-=cro

augroup END
      
" tabs and other settings
set tabstop=3
set shiftwidth=3
set softtabstop=0
set expandtab
set smarttab
set smartindent

" set line numbers to true
set relativenumber
set number
" opens splits the the right by default

set splitright

" disbale bell sound
set noeb vb t_vb=

" some general configurations
set scrolloff=4 " Keep at lease 4 lines below cursor

" show cursor position at all times
set ruler

" colors
colorscheme lena
" colorscheme snazzy

" enable syntax highlighting
if !exists("g:syntax_on")
   syntax enable
endif

" Ctrl + s for escape and write
noremap <C-s> <esc>:w<CR>
inoremap <C-s> <esc>:w<CR>

" Ctrl + F for visually searching highlited text
vnoremap <C-f> y<ESC>/<C-r>"<CR>

" The ones I like will be kept and sorted
nmap 0 ^

" some mappings
map <C-t> <esc>:tabnew<CR>

map <C-x> <C-w>c
" leader key setting
let mapleader = ","
nmap <leader>vr :tabedit $MYVIMRC<CR>
nmap <leader>so :source $MYVIMRC<CR> 
nmap <leader>sy "+y

" moving down within the same line
nmap k gk
nmap j gj

" Fix alt keys
execute "set <M-j>=\ej"
nnoremap <M-j> j
execute "set <M-k>=\ek"
nnoremap <M-k> k

" Shift lines up and down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" command aliases for typoed commands
command! Q q " both :q and :Q work identically

" CtrlP configuration
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0

" set termguicolors
" new things, should be distributed as you go
" let g:Hexokinase_highlighters = ['background']
" Enable for all filetypes
" let g:Hexokinase_ftAutoload = ['*']
" Close nerdtreewindow. Makes nerdtree and ctrlp play a bit more nicely
" doesn't open in a split pane
let g:ctrlp_dont_split = 'NERD'

" toggle NERDtree
nmap <Leader>kb :NERDTreeToggle<CR>
