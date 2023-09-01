require('nvim-treesitter.configs').setup {
  ensure_installed = {"c", "cpp", "objc", "python", "rust"},
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
