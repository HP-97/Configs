vim.pack.add({
  { src = 'https://github.com/nvim-treesitter/nvim-treesitter' },
  { src = 'https://github.com/nvim-tree/nvim-tree.lua'},
})

-- 2. Native LSP Setup
-- 0.12 allows enabling servers directly if installed on your system (via rustup/cargo)
vim.lsp.enable('rust_analyzer')

-- 4. Tree-sitter for Highlighting
require('nvim-treesitter').setup({
  ensure_installed = { "rust", "lua", "toml" },
  highlight = { enable = true },
})

-- Recommended nvim-tree setup for 0.12 compatibility
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
    -- 0.12 supports better floating window configurations
    -- if you prefer a floating explorer
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
})
