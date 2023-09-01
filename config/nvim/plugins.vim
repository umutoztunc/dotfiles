call plug#begin()

" status bar
Plug 'vim-airline/vim-airline'

" color scheme
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

" AST highlight
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" indention level indicator
Plug 'Yggdroot/indentLine'

" langguage server protocol
Plug 'neovim/nvim-lspconfig'

" fast comment
Plug 'preservim/nerdcommenter'

" fuzzy file search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

lua require('lsp_config')
lua require('treesitter_config')
