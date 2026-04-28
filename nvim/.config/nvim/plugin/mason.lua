require("mason").setup()

require("mason-lspconfig").setup({
  -- Specify your required LSPs here
      ensure_installed = {
          "gopls",
          "jdtls",
          "lua_ls",
          "pyright",
          "rust_analyzer",
      },
})
