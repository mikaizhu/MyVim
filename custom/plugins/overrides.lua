-- 重写默认的插件配置
-- 可以在config文件中写配置，也可以在这里写配置，并且这里的配置会覆盖掉config中的配置
local M = {}

M.alpha = {
  header = {
    val = {
      "             ___            ___  ",
      "            (o o)          (o o) ",
      "           (  V  ) bkalbs (  V  ) ",
      "           --m-m------------m-m--",
      "                                     ",
      "    Your day is going to be a real hoot!  ",
    },
  },
  -- buttons = {
  --  type = "group",
  --  val = {
  --    button("f", " Find File  ", ":Telescope find_files<CR>"),
  --    button("o", "  Recent File  ", ":Telescope oldfiles<CR>"),
  --    button("w", " Find Word  ", ":Telescope live_grep<CR>"),
  --    --button("q", "  Quit  ", ":q<CR>"),
  --  },
  -- opts = {
  --    spacing = 1,
  --  }
  -- }
}

M.treesitter = {
  indent = {
    -- 取消indent否则会和python的lsp发生冲突
    enable = false
  },
  ensure_installed = { "html", "css", "scss", "javascript", "typescript", "tsx", "rust", "go", "gomod", "vim", "lua", "php", "json", "markdown", "yaml", "dockerfile", "sql", "python" },
}

M.mason = {
  ui = {
    icons = {
      package_pending = " ",
      package_installed = " ",
      package_uninstalled = " ",
    },
  },
}

return M
