require("mason").setup()

require("mason-lspconfig").setup({
  -- Specify your required LSPs here
      ensure_installed = {
          "ansiblels",
          "bashls",
          "cssls",
          "gopls",
          "html",
          "htmx",
          "jdtls",
          "lua_ls",
          "nil_ls",
          "pyright",
          "tsgo",
          "rust_analyzer",
      },
})
