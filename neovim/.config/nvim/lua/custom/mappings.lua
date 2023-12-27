---@type MappingsTable
local M = {}

M.disabled = {
  n = {
    ["<leader>n"] = "",
  },
}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-q>"] = { "<cmd> q <cr>" },
    ["<C-/>"] = { "<cmd> q <cr>" },
    ["<leader>o"] = { "<cmd> NnnPicker <cr>" },
    -- ["<C-n>"] = {"<cmd> NnnExplorer <cr>"},
  },
  v = {
    [">"] = { ">gv", "indent" },
    ["<C-q>"] = { "<cmd> q <cr>" },
    ["<leader>o"] = { "<cmd> NnnPicker <cr>" },
    -- ["<C-n>"] = {"<cmd> NnnExplorer <cr>"},
  },
}

-- more keybinds!

return M
