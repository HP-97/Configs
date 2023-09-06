local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	{"folke/trouble.nvim", dependencies = { "nvim-tree/nvim-web-devicons" }},
	{"nvim-lua/plenary.nvim"},
	{'nvim-telescope/telescope.nvim', tag = '0.1.2'}, dependencies = { "nvim-lua/plenary.nvim" },
})
