local map = vim.keymap.set

vim.g.mapleader = " "
vim.g.localleader = " " -- Optional: set localleader too
--------------------------------------------------------------------------------
-- Standard Operations
--------------------------------------------------------------------------------
map("n", ";", ":", { desc = "Alias for ':'"})

--------------------------------------------------------------------------------
-- Telescope
--------------------------------------------------------------------------------
map("n", "<leader>ff", "<cmd> Telescope find_files <CR>", { desc  = "Find files"})
map("n", "<leader>fa", "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", { desc  = "Find all"})
map("n", "<leader>fw", "<cmd> Telescope live_grep <CR>", { desc  = "Live grep"})

--------------------------------------------------------------------------------
-- Trouble
--------------------------------------------------------------------------------
map("n", "<leader>tt", "<cmd> Trouble diagnostics toggle focus=false filter.buf=0 <CR>", { desc  = "Trouble diagnostics for buffer idx 0"})
map("n", "<leader>ta", "<cmd> Trouble diagnostics toggle focus=false filter.buf=0 <CR>", { desc  = "Trouble diagnostics for buffer idx 0"})

--------------------------------------------------------------------------------
-- nvimtree
--------------------------------------------------------------------------------
map("n", "<C-n>", "<cmd> NvimTreeToggle <CR>", { desc = "Toggle nvimtree" })
map("n", "<leader>e", "<cmd> NvimTreeFocus <CR>", { desc = "Focus nvimtree" })

--------------------------------------------------------------------------------
-- nvimtree
--------------------------------------------------------------------------------
map("n", "<leader>lg", function ()
  Snacks.lazygit.open()
end, { desc = "Toggle nvimtree" })

--------------------------------------------------------------------------------
-- lspconfig
--------------------------------------------------------------------------------
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    -- Map 'K' to hover only in this buffer
    map('n', 'K', vim.lsp.buf.hover, { buffer = args.buf, desc = "LSP hover"})
    
    -- You can also map definition, references, etc. here
    map('n', 'gd', vim.lsp.buf.definition, { buffer = args.buf, desc = 'Go to definition' })
  end,
})

