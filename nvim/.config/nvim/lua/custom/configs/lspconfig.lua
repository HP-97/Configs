local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "ts_ls", "clangd", "templ" }

for _, lsp in ipairs(servers) do
  vim.lsp.config(lsp, {
    config = {
      on_attach = on_attach,
      capabilities = capabilities,
    }
  })
end

-- 
-- lspconfig.pyright.setup { blabla}

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

vim.lsp.config('pyright', {
  config = {
    on_attach = on_attach,
    capabilities = capabilities,
  }
})

vim.lsp.config('gopls', {
  config = {
    on_attach = on_attach,
    capabilities = capabilities,
  }
})

vim.lsp.config('bashls', {
  config = {
    on_attach = on_attach,
    capabilities = capabilities,
  }
})

vim.lsp.config('gleam', {
  config = {
    on_attach = on_attach,
    capabilities = capabilities,
  }
})

vim.lsp.config('svelte', {
  config = {
    on_attach = on_attach,
    capabilities = capabilities,
  }
})

vim.lsp.config('gleam', {
  config = {
    on_attach = on_attach,
    capabilities = capabilities,
  }
})

vim.lsp.config('jdtls', {
  config = {
    on_attach = on_attach,
    capabilities = capabilities,
  }
})
