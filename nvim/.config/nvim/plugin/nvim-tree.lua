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
