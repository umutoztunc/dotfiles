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

" Log file highlight
Plug 'mtdl9/vim-log-highlighting'
" }}}

" Indent line {{{
Plug 'Yggdroot/indentLine'
" }}}

" Fast comment {{{
Plug 'preservim/nerdcommenter'
" }}}

" File navigator {{{
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" }}}

" Language Server {{{
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" }}}

" Async run {{{
Plug 'skywind3000/asyncrun.vim'
" }}}

call plug#end()
" }}}

" True colors {{{
set termguicolors
" Fix colors on alacritty.
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

" NERDCommenter {{{
" Add spaces after comment delimiters by default.
let g:NERDSpaceDelims = 1

" Align line-wise comment delimiters flush left instead of following code indentation.
let g:NERDDefaultAlign = 'left'
" }}}

" AsyncRun {{{
" Automatically open quickfix window when AsyncRun command is executed.
" Set the quickfix window 12 lines length.
let g:asyncrun_open = 12
" }}}

" Language Server {{{
let g:coc_global_extensions = ['coc-clangd', 'coc-pyright', 'coc-rust-analyzer', 'coc-solargraph']
" }}}

syntax on
set number
set relativenumber
set cursorline
set foldmethod=marker
set wildmenu

set linebreak       " don't break at words
set breakindent     " keep the indent for wrapped lines
let &showbreak='↪ ' " to be shown at start of wrapped lines

set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab

set mouse=a
" Fix mouse on alacritty.
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

set splitbelow      " new window at bottom
set splitright      " new window on the right

autocmd FileType Makefile set noexpandtab
autocmd FileType c,cpp,cc set shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType rst set shiftwidth=3 tabstop=3 softtabstop=3

autocmd FileType c,cpp,cc nnoremap <silent> <F5> :AsyncRun -save=1 g++ -std=c++20 -Wall -Wshadow -g -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG % -o %:r<CR>
autocmd FileType c,cpp,cc nnoremap <silent> <F9> :AsyncRun -save=1 g++ -std=c++20 -Wall -Wshadow -O2 % -o %:r<CR>
nnoremap <silent> <F10> :call asyncrun#quickfix_toggle(12)<CR>

let mapleader="\<Space>"
" Quick save/quit {{{
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>x :x<CR>
" }}}

" Reindent all code, while preserving cursor location.
nnoremap <Leader>= mqHmwgg=G`wzt`q

" Cut/copy/paste for system clipboard {{{
vnoremap <Leader>d "+d
vnoremap <Leader>y "+y
nnoremap <Leader>p "+p
" }}}
