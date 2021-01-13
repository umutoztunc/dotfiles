" Plugins {{{
" Use vim-plug to manage.
call plug#begin('~/.vim/plugged')

" Status line {{{
Plug 'vim-airline/vim-airline'
" }}}

" Color theme {{{
Plug 'morhetz/gruvbox'
" }}}

" Smali syntax highlight {{{
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

syntax on
set number
set cursorline

set autoindent
set smartindent
set shiftwidth=4
set tabstop=4
set expandtab

set mouse=a
" Fix mouse on alacritty
set ttymouse=xterm2

set incsearch
set ignorecase
set smartcase

set autoread
