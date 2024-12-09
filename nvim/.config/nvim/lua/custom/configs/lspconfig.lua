local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "ts_ls", "clangd", "templ" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- 
-- lspconfig.pyright.setup { blabla}

lspconfig.rust_analyzer.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  root_dir = function()
    return vim.loop.cwd()
  end,
}

lspconfig.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.bashls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.gleam.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.svelte.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.gleam.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.jdtls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
