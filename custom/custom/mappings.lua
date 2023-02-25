local M = {}

M.other = {
  n = {
    -- ["?"] = { ":Telescope keymaps<cr>", "help key" },
    ["?"] = {
      function()
        require('telescope.builtin').lsp_document_symbols()
      end,
    },
    ["q"] = { ":q<cr>", "" },
    ["Q"] = { ":qa<cr>", "" },
    ["U"] = { "<c-r>", "undo" },
    ["sv"] = { ":vsp<cr>", "split window v" },
    ["sh"] = { ":sp<cr>", "split window h" },
    ["s,"] = { ":vertical resize -10<CR>", "resize" },
    ["s."] = { ":vertical resize +10<CR>", "resize" },
    ["sj"] = { ":resize +10<CR>", "resize" },
    ["sk"] = { ":resize -10<CR>", "resize" },
    ["J"] = { "5j", "fast move" },
    ["K"] = { "5k", "fast move" },
    -- ["H"] = { "5h", "fast move" },
    -- ["L"] = { "5l", "fast move" },
  },
  v = {
    ["sc"] = { "<c-w>c<cr>", "close current window" },
    ["so"] = { "<c-w>c<cr>", "close others window" },
    ["sq"] = { "<c-w>c<cr>", "close all window" },
    ["J"] = { "5j", "fast move" },
    ["K"] = { "5k", "fast move" },
    -- ["H"] = { "5h", "fast move" },
    -- ["L"] = { "5l", "fast move" },
  },
}

M.telescope = {
  n = {
    ["<leader>f"] = { "<cmd> Telescope find_files <CR>", "find files" },
    ["<leader>g"] = { "<cmd> Telescope live_grep <CR>", "live grep" },
  },
}

M.trouble = {
  n = {
    [",x"] = {"<cmd>TroubleToggle<cr>"},
    [",w"] = {"<cmd>TroubleToggle workspace_diagnostics<cr>"},
  },
}

M.nvimtree = {
  n = {
    ["tt"] = { ":NvimTreeToggle<cr>", "open or close nvim tree" },
  },
}

-- M.hop = {
--   n = {
--     ["f"] = { ":HopWord<cr>", "hop hit all words" },
--   },
--   v = {
--     ["f"] = { ":HopWord<cr>", "hop hit all words" },
--   },
-- }

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
