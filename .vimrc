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
let g:solarized_termcolors=256

" git configuration
autocmd Filetype gitcommit setlocal spell textwidth=72

" Ctrl + s for escape and write
noremap <C-s> <esc>:w<CR>
inoremap <C-s> <esc>:w<CR>
