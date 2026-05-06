require("user.keymaps")

vim.pack.add({
  { src = 'https://github.com/nvim-treesitter/nvim-treesitter', version = 'main'},
  { src = 'https://github.com/nvim-tree/nvim-tree.lua'},
  { src = 'https://github.com/lukas-reineke/indent-blankline.nvim.git', version = 'v3.9.1'},
  { src = 'https://github.com/mason-org/mason.nvim.git'},
  { src = 'https://github.com/mason-org/mason-lspconfig.nvim.git'},
  { src = 'https://github.com/hrsh7th/nvim-cmp.git'},
  'https://github.com/nvim-tree/nvim-web-devicons',
  'https://github.com/nvim-lualine/lualine.nvim',
  'https://github.com/nvim-lua/plenary.nvim.git',
  'https://github.com/nvim-telescope/telescope.nvim',
  { src = 'https://github.com/rose-pine/neovim.git', name = 'rose-pine'},
  'https://github.com/lewis6991/gitsigns.nvim.git',
  'https://github.com/folke/trouble.nvim.git',
  'https://github.com/windwp/nvim-autopairs.git',
  'https://github.com/windwp/nvim-ts-autotag.git',
  'https://github.com/folke/snacks.nvim.git',
  'https://github.com/sphamba/smear-cursor.nvim.git',
  'https://github.com/folke/which-key.nvim.git',
  'https://github.com/stevearc/aerial.nvim.git',
})

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ignorecase = true
vim.opt.scrolloff = 5
vim.opt.colorcolumn = "80"
vim.opt.clipboard = "unnamedplus"

-- 0.12 Performance boost
vim.loader.enable()

-- Set colorscheme
vim.cmd('colorscheme rose-pine-moon')

vim.diagnostic.config({ virtual_text = true })
