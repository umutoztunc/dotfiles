runtime plugins.vim

set autowrite
set clipboard=unnamed
set cursorline
set listchars=space:·,tab:→\ ,
set mouse=a
set noswapfile
set nowrap
set number
set relativenumber

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set ignorecase
set smartcase
nnoremap <silent> <ESC> <ESC>:nohlsearch<CR>

set splitbelow
set splitright

set termguicolors
let g:airline_theme = "catppuccin"
colorscheme catppuccin-macchiato

let mapleader="\<Space>"

" Reindent all code, while preserving cursor location.
nnoremap <Leader>= mqHmwgg=G`wzt`q

nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>e :Files<CR>

autocmd BufRead,BufNewFile *.sb setlocal filetype=scheme lisp
autocmd FileType c,objc setlocal tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab list

autocmd FileType cpp nnoremap <silent> <F5> :!g++ -std=c++20 -Wall -Wshadow -g -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG % -o %:r<CR>
autocmd FileType cpp nnoremap <silent> <F9> :!g++ -std=c++20 -Wall -Wshadow -O2 % -o %:r<CR>


