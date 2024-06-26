---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "highlights"

--require("base46").toggle_transparency()

M.ui = {
  theme = "gruvchad",
  theme_toggle = { "gruvbox", "gruvchad" },

  hl_override = highlights.override,
  hl_add = highlights.add,
  transparency = false,

  statusline = {
    theme = "vscode_colored",
    separator_style = 'default',
  },
  cmp = {
    style = "default",
  }
}

M.plugins = "plugins"

-- check core.mappings for table structure
M.mappings = require "mappings"

return M
