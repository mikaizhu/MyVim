require("nvchad.mappings")

local map = vim.keymap.set
local del = vim.keymap.del

map("n", "<C-Space>", "")
map("n", "<C-n>", "")
map("n", "<leader>tk", "")
map("n", "<C-s>", "")
map("n", "<C-c>", "")
map('n','K', "")

map("n", "?", function()
        require("telescope.builtin").lsp_document_symbols()
      end, {desc = "查看当前文件中所有变量"}
)
map('n', 'W',  ":w<CR>")
map('n','q', ":q<cr>")
map('n','Q', ":qa<cr>")
map('n','U', "<c-r>")
map('n','<A-up>', ":resize +10<CR>")
map('n','<A-down>', ":resize -10<CR>")
map('n','<A-right>', ":vertical resize +10<CR>")
map('n','J', "5j")
map('n','K', "5k")

map('v','J', "5j")
map('v','K', "5k")

--M.align = {
--  x = {
--    ["aa"] = {
--      function()
--        require("align").align_to_char(1, true)
--      end,
--    },
--    ["as"] = {
--      function()
--        require("align").align_to_char(2, true, true)
--      end,
--    },
--    ["aw"] = {
--      function()
--        require("align").align_to_string(false, true, true)
--      end,
--    },
--    ["ar"] = {
--      function()
--        require("align").align_to_string(true, true, true)
--      end,
--    },
--  },
--}
--
map("n", "tt", ":NvimTreeToggle<cr>")
--M.nvimtree = {
--  n = {
--    ["tt"] = { ":NvimTreeToggle<cr>", "open or close nvim tree" },
--  },
--}
--
map("n", "<leader>f", "<cmd> Telescope find_files <CR>")
map("n", "<leader>g", "<cmd> Telescope live_grep <CR>")
--M.telescope = {
--  n = {
--    ["<leader>f"] = { "<cmd> Telescope find_files <CR>", "find files" },
--    ["<leader>g"] = { "<cmd> Telescope live_grep <CR>", "live grep" },
--  },
--}
--
map("n", "<leader>c",function()
        require("Comment.api").toggle.linewise.current()
      end
)
map("v", "<leader>c", "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>")
--M.comment = {
--  plugin = true,
--  -- toggle comment in both modes
--  n = {
--    ["<leader>c"] = {
--      function()
--        require("Comment.api").toggle.linewise.current()
--      end,
--      "toggle comment",
--    },
--  },
--
--  v = {
--    ["<leader>c"] = {
--      "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
--      "toggle comment",
--    },
--  },
--}
--
map("n", "<leader>a", "<cmd>AerialToggle!<CR>")
--M.aerial = {
--  n = {
--    ['<leader>a'] = {"<cmd>AerialToggle!<CR>", "code outline"}
--  },
--}
--
map("n", "=", function()
        vim.lsp.buf.format { async = true }
      end
)
map("n", "H", function()
        vim.lsp.buf.hover()
      end
)
--M.lspconfig = {
--  n = {
--    ["="] = {
--      function()
--        vim.lsp.buf.format { async = true }
--      end,
--      "lsp formatting",
--    },
--
--    ["H"] = {
--      function()
--        vim.lsp.buf.hover()
--      end,
--      "   lsp hover, use hjkl to quit",
--    },
--  },
--}
--
--return M
