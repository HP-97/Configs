-- Use the native 0.12 enable function
-- It will automatically look for the config in after/lsp/lua_ls.lua
vim.lsp.enable('lua_ls')

-- Optional: Set local settings for Lua files
vim.opt_local.shiftwidth = 2
vim.opt_local.tabstop = 2
vim.opt_local.softtabstop = 2
vim.opt_local.expandtab = true
