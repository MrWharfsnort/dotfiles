set encoding=utf-8
set laststatus=2
set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set cursorline
set showmatch
set hlsearch

" Pathogen
execute pathogen#infect()
filetype plugin indent on

" color options
colorscheme molokai
syntax on
set t_Co=256

" filetype options
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4
