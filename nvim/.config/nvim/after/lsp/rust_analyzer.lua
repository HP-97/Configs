return {
  cmd = { "rust-analyzer" },
  filetypes = { 'rust' },
  settings = {
    ["rust-analyzer"] = {
      cargo = { allFeatures = true },
      inlayHints = {
        bindingModeHints = { enabled = true },
        closureReturnTypeHints = { enable = "always" },
      },
    },
  },
  root_markers = { "Cargo.toml", ".git" },
}

