-- 参考
-- https://github.com/Eatsolx/nvim-lua/tree/master/custom
-- https://github.com/qixinbo/NvChad/tree/custom/lua/custom
-- overwrite options
vim.g.mapleader = ";"
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
vim.wo.signcolumn = "yes"

vim.o.mouse = "a"

-- smart indent
vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

-- 打开时自动定位到上次关闭位置
vim.api.nvim_create_autocmd(
  { "BufReadPost" },
  { pattern = "*", command = [[if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]] }
)

-- 取消自动注释
vim.api.nvim_create_autocmd("FileType", { command = "set formatoptions-=o" })

-- nvim tree auto close
-- ref:https://github.com/nvim-tree/nvim-tree.lua/issues/1005#issuecomment-1115831363
vim.api.nvim_create_autocmd('BufEnter', {
    command = "if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif",
    nested = true,
})

