local M = {}

M.disabled = {
  n = {
    ["<C-Space>"] = "",
    ["<C-n>"] = "",
    ["<leader>tk"] = "",
    ["<C-s>"] = "",
    ["<C-c>"] = "",
  },
}

M.general = {
  n = {
    -- ["?"] = { ":Telescope keymaps<cr>", "help key" },
    -- 查找当前文件中所有变量
    ["?"] = {
      function()
        require("telescope.builtin").lsp_document_symbols()
      end,
    },
    ["W"] = { ":w<CR>", "save the file" },
    ["q"] = { ":q<cr>", "" },
    ["Q"] = { ":qa<cr>", "" },
    ["U"] = { "<c-r>", "undo" },
    ["<A-up>"] = { ":resize +10<CR>", "resize" },
    ["<A-down>"] = { ":resize -10<CR>", "resize" },
    ["<A-left>"] = { ":vertical resize -10<CR>", "" },
    ["<A-right>"] = { ":vertical resize +10<CR>", "" },
    ["J"] = { "5j", "fast move" },
    ["K"] = { "5k", "fast move" },
    -- ["H"] = { "5h", "fast move" },
    -- ["L"] = { "5l", "fast move" },
  },
  v = {
    ["J"] = { "5j", "fast move" },
    ["K"] = { "5k", "fast move" },
    -- ["H"] = { "5h", "fast move" },
    -- ["L"] = { "5l", "fast move" },
  },
}

M.align = {
  x = {
    ["aa"] = {
      function()
        require("align").align_to_char(1, true)
      end,
    },
    ["as"] = {
      function()
        require("align").align_to_char(2, true, true)
      end,
    },
    ["aw"] = {
      function()
        require("align").align_to_string(false, true, true)
      end,
    },
    ["ar"] = {
      function()
        require("align").align_to_string(true, true, true)
      end,
    },
  },
}

M.nvimtree = {
  n = {
    ["tt"] = { ":NvimTreeToggle<cr>", "open or close nvim tree" },
  },
}

M.telescope = {
  n = {
    ["<leader>f"] = { "<cmd> Telescope find_files <CR>", "find files" },
    ["<leader>g"] = { "<cmd> Telescope live_grep <CR>", "live grep" },
  },
}

M.comment = {
  plugin = true,
  -- toggle comment in both modes
  n = {
    ["<leader>c"] = {
      function()
        require("Comment.api").toggle.linewise.current()
      end,
      "toggle comment",
    },
  },

  v = {
    ["<leader>c"] = {
      "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
      "toggle comment",
    },
  },
}

M.aerial = {
  n = {
    ['<leader>a'] = {"<cmd>AerialToggle!<CR>", "code outline"}
  },
}

M.lspconfig = {
  n = {
    ["="] = {
      function()
        vim.lsp.buf.format { async = true }
      end,
      "lsp formatting",
    },

    ["H"] = {
      function()
        vim.lsp.buf.hover()
      end,
      "   lsp hover, use hjkl to quit",
    },
  },
}

return M
