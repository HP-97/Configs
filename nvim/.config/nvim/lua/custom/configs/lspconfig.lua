local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "ts_ls", "clangd", "templ", "pyright", "gopls", "jdtls", "bashls", "gleam", "svelte", "lua_ls" }

for _, lsp in ipairs(servers) do
  vim.lsp.config(lsp, {
    config = {
      on_attach = on_attach,
      capabilities = capabilities,
    }
  })
  vim.lsp.enable(lsp)
end

vim.lsp.config('rust_analyzer', {
  config = {
    on_attach = on_attach,
    capabilities = capabilities,
    -- Required to stop rust-analzyer from displaying errors from libs.
    root_dir = function()
      return vim.loop.cwd()
    end,
    settings = {
      ["rust-analyzer"] = {
        inlayHints = {
          bindingModeHints = { enable = false },
          chainingHints = { enable = false },
          closingBraceHints = { enable = false },
          parameterHints = { enable = false },
          typeHints = { enable = false },
        },
      }
    },
  }
})
vim.lsp.enable("rust_analyzer")
