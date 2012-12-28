set tabstop=4
set expandtab
set ruler

colorscheme default
syntax on

" Make search nicer
set hlsearch
set incsearch
set ignorecase
set smartcase

" Make REs much more magic
nnoremap / /\v
cnoremap %s/ %s/\v

