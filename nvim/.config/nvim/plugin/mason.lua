require("mason").setup()

require("mason-lspconfig").setup({
  -- Specify your required LSPs here
      ensure_installed = {
          "bashls",
          "gopls",
          "jdtls",
          "lua_ls",
          "pyright",
          "tsgo",
          "rust_analyzer",
      },
})
