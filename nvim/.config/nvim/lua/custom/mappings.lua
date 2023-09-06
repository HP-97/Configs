---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-d>"] = { "<C-d>zz", "centre cursor after scrolling downwards"},
    ["<C-u>"] = { "<C-u>zz", "centre cursor after scrolling upwards"},
  },
}

-- more keybinds!

return M
