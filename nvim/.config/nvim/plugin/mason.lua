require("mason").setup()

require("mason-lspconfig").setup({
  -- Specify your required LSPs here
      ensure_installed = {
          "ansiblels",
          "bashls",
          "cssls",
          "gopls",
          "html",
          "jdtls",
          "lua_ls",
          "pyright",
          "tsgo",
          "rust_analyzer",
      },
})
