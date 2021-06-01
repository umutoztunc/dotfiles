" Plugins {{{
" Use vim-plug to manage.
call plug#begin('~/.vim/plugged')

" Status line {{{
Plug 'vim-airline/vim-airline'
" }}}

" Color theme {{{
Plug 'morhetz/gruvbox'
" }}}

" Syntax highlight {{{
Plug 'sheerun/vim-polyglot'
" Smali syntax highlight
Plug 'kelwin/vim-smali'
" }}}

" Indent line {{{
Plug 'Yggdroot/indentLine'
" }}}

call plug#end()
" }}}

" True colors {{{
set termguicolors
" Fix colors on alacritty
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" }}}

" gruvbox {{{
let g:gruvbox_italic = 1
set background=dark
colorscheme gruvbox
"}}}

" vim-airline {{{
let g:airline_powerline_fonts = 1
let g:airline_theme = 'gruvbox'
" }}}

" vim-polyglot {{{
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0
" }}}

syntax on
set number
set cursorline
set foldmethod=marker
set wildmenu

set autoindent
set smartindent
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

set mouse=a
" Fix mouse on alacritty
set ttymouse=sgr

set incsearch
set ignorecase
set smartcase
set hlsearch
nnoremap <silent> <ESC><ESC> :nohlsearch<CR>

set autoread
set backspace=indent,eol,start
set encoding=utf-8
set pastetoggle=<F2>

autocmd FileType Makefile set noexpandtab
autocmd FileType c,cpp,cc set cindent shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType rst set shiftwidth=3 tabstop=3 softtabstop=3

let mapleader="\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>x :x<CR>
" Reindent all code, while preserving cursor location
nnoremap <Leader>= mqHmwgg=G`wzt`q
