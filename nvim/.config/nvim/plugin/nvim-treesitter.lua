require('nvim-treesitter').setup({
  ensure_installed = { "rust", "lua", "toml", "go", "java" },
  highlight = { enable = true },
})
