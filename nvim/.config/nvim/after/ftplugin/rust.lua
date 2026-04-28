local root_markers = { 'Cargo.toml', 'rust-project.json', '.git' }
local root_dir = vim.fs.root(vim.api.nvim_buf_get_name(0), root_markers)

if root_dir then
  vim.lsp.enable('rust_analyzer')
end
