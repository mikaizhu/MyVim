-- leader key 为空格
vim.g.mapleader = ";"
vim.g.maplocalleader = ";"
-- 本地变量
local map = vim.api.nvim_set_keymap
local opt = {
  noremap = true,
  silent = true
}
-- map函数的作用域
map("i", "jj", "<ESC>:w<CR>", opt)
map("n", "q", ":w | qa<CR>", opt)
map("n", "<leader>q", ":Bdelete!<CR>", opt) -- close current buffer
map("n", "U", "<C-r>", opt)
map("n", "J", "5j", opt)
map("n", "K", "5k", opt)
map("n", "<C-[>", ":noh<CR>", opt)

map("v", "J", "5j", opt)
map("v", "K", "5k", opt)
map("v", "H", "5h", opt)
map("v", "L", "5l", opt)

-- oscyank
map("v", "y", ":OSCYank<CR>", opt)

-- ctrl u / ctrl + d  只移动9行，默认移动半屏
map("n", "<C-u>", "9k", opt)
map("n", "<C-d>", "9j", opt)

-- visual模式下缩进代码
-- gv表示选择和之前一样的区域，这样才能连续缩进
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)

-- magic search
map("n", "/", "/\\v", { noremap = true , silent = false})
map("v", "/", "/\\v", { noremap = true , silent = false})

------------------------------------------------------------------
-- 取消s按键，s会替换当前字符
map("n", "s", "", opt)
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)

-- 关闭当前
map("n", "sc", "<C-w>c", opt)
-- 关闭其他
map("n", "so", "<C-w>o", opt) -- close others
map("n", "sq", ":qa", opt) -- close all

-- 比例控制
-- . 表示> , 表示<
map("n", "<s-Right>", ":vertical resize +10<CR>", opt)
map("n", "<s-Left>", ":vertical resize -10<CR>", opt)
map("n", "<s-Down>", ":resize +5<CR>", opt)
map("n", "<s-Up>", ":resize -5<CR>", opt)

-- alt + hjkl  窗口之间跳转
-- z键比较好按，且映射比较少 h j k l 
map("n", "<C-h>", "<C-w>h", opt)
map("n", "<C-j>", "<C-w>j", opt)
map("n", "<C-k>", "<C-w>k", opt)
map("n", "<C-l>", "<C-w>l", opt)

--------------------------------------------------------------------
-- 插件快捷键

map("n", "tt", ":NvimTreeToggle<CR>", opt)
-- bufferline 左右Tab切换
map("n", "<S-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<S-l>", ":BufferLineCycleNext<CR>", opt)

-- nvim-treesitter 代码格式化
map("n", "<leader>i", "gg=G", opt)
map("n", "zz", "zc", opt) -- 
-- 

-- Telescope
map("n", "<C-p>", ":Telescope find_files<CR>", opt)
-- map("n", "<leader>f", ":Telescope find_files<CR>", opt)
map("n", "<leader>g", ":Telescope live_grep<CR>", opt)

-- map函数的作用域
local pluginKeys = {}

-- 代码注释插件
-- see ./lua/plugin-config/comment.lua
-- pluginKeys.comment = {
--   toggler = {
--     line = 'gcc',
--     block = 'gbc',
--   },
--   opleader = {
--     line = '<C-/><Esc>',
--     bock = 'gb'
--   }
-- }

-- ctrl + /
map("n", "<C-_>", "gcc", {noremap = false})
map("v", "<C-_>", "gcc", {noremap = false})

-- lsp 回调函数快捷键设置
pluginKeys.maplsp = function(mapbuf)
  -- rename
  mapbuf('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opt)
  -- code action
  mapbuf('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opt)

  -- go xx
  mapbuf('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opt)
  mapbuf('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', opt)
  mapbuf('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opt)
  mapbuf('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opt)
  mapbuf('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opt)
  -- diagnostic
  mapbuf('n', 'go', '<cmd>lua vim.diagnostic.open_float()<CR>', opt)
  mapbuf('n', 'gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opt)
  mapbuf('n', 'gn', '<cmd>lua vim.diagnostic.goto_next()<CR>', opt)
  -- mapbuf('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opt)
  mapbuf('n', '<gk>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opt)
  -- leader + =
  mapbuf('n', '<leader>=', '<cmd>lua vim.lsp.buf.formatting()<CR>', opt)
  -- mapbuf('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opt)
  -- mapbuf('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opt)
  -- mapbuf('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opt)
  -- mapbuf('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opt)
end

