-- test alpha
-- /Users/mikizhu/.local/share/nvim/site/pack/packer/opt
-- nvim -u mini.test
vim.o.runtimepath = vim.o.runtimepath .. "," .. os.getenv("HOME") .. '/.local/share/nvim/lazy/alpha.nvim'
local status, telescope = pcall(require, "alpha")
if not status then
  vim.notify("没有找到 alpah")
  return
end

-- dynamic header padding

local options = {

  header = {
    type = "text",
    val = {
      "             ___            ___  ",
      "            (o o)          (o o) ",
      "           (  V  ) bkalbs (  V  ) ",
      "           --m-m------------m-m--",
      "                                     ",
      "    Your day is going to be a real hoot!  ",
    },
    opts = {
      position = "center",
      hl = "AlphaHeader",
    },
  },

  buttons = {
    type = "group",
    val = {
     button("f", " Find File  ", ":Telescope find_files<CR>"),
     button("o", "  Recent File  ", ":Telescope oldfiles<CR>"),
     button("w", " Find Word  ", ":Telescope live_grep<CR>"),
     button("q", "  Quit  ", ":q<CR>"),
    },
    opts = {
      spacing = 1,
    },
  },
}

options = require("core.utils").load_override(options, "goolord/alpha-nvim")

alpha.setup {
  layout = {
    options.header,
    options.buttons,
  },
  opts = {},
}
