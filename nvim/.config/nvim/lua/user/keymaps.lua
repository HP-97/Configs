local map = vim.keymap.set

vim.g.mapleader = " "
vim.g.localleader = " " -- Optional: set localleader too
--------------------------------------------------------------------------------
-- Standard Operations
--------------------------------------------------------------------------------
map("n", ";", ":", { desc = "Alias for ':'"})
map("n", "<Tab>", ":bnext<CR>", { desc = "Go to next buffer", noremap = true})
map("n", "<S-Tab>", ":bprev<CR>", { desc = "Go to previous buffer", noremap = true})
map("n", "<leader>x", ":bd<CR>", { desc = "Close current buffer", noremap = true})
map("n", "<leader>X", ":%bd|e#|bd#<CR>", { desc = "Close all buffers except current", noremap = true})

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
map("n", "<leader>ta", "<cmd> Trouble diagnostics toggle focus=false <CR>", { desc  = "Trouble diagnostics for whole project" })

--------------------------------------------------------------------------------
-- nvimtree
--------------------------------------------------------------------------------
map("n", "<C-n>", "<cmd> NvimTreeToggle <CR>", { desc = "Toggle nvimtree" })
map("n", "<leader>e", "<cmd> NvimTreeFindFile <CR>", { desc = "Focus nvimtree" })

--------------------------------------------------------------------------------
-- lazygit
--------------------------------------------------------------------------------
map("n", "<leader>lg", function ()
  Snacks.lazygit.open()
end, { desc = "Open lazygit" })

--------------------------------------------------------------------------------
-- Aerial
--------------------------------------------------------------------------------
map("n", "<leader>a", "<cmd> AerialToggle<CR>", { desc = "Toggle aerial" })
map("n", "{", "<cmd> AerialPrev<CR>", { desc = "Aerial previous" })
map("n", "}", "<cmd> AerialNext<CR>", { desc = "Aerial next" })

--------------------------------------------------------------------------------
-- Flash
--------------------------------------------------------------------------------
map("n", "s", function() require("flash").jump() end, {desc = "Flash" })
map({"n", "x", "o"}, "S", function() require("flash").treesitter() end, {desc = "Flash Treesitter" })
map("o", "r", function() require("flash").remote() end, {desc = "Remote Flash" })
map("c", "<C-s>", function() require("flash").toggle() end, {desc = "Toggle Flash search" })

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

