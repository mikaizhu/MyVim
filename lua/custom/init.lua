-- 参考
-- https://github.com/Eatsolx/nvim-lua/tree/master/custom
-- https://github.com/qixinbo/NvChad/tree/custom/lua/custom
-- overwrite options
vim.g.mapleader = ";"
vim.g.auto_save = 1
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

-- treesitter 代码折叠
vim.o.foldmethod='expr'
vim.o.foldexpr='nvim_treesitter#foldexpr()'
-- ref:https://github.com/nvim-treesitter/nvim-treesitter/issues/4152
-- 打开文件时代码不折叠
vim.o.foldlevelstart=99

-- 打开时自动定位到上次关闭位置
vim.api.nvim_create_autocmd(
  { "BufReadPost" },
  { pattern = "*", command = [[if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]] }
)

-- 取消自动注释
vim.api.nvim_create_autocmd("FileType", { command = "set formatoptions-=o" })

-- 因为我的方案是rime中Control+Space切换中英文，这里在vim中切换，会检测到这两个按键
-- 所以使用下面设置取消这两个按键的作用
vim.api.nvim_set_keymap('n', '<C-Space>', '', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 's', '', { silent = true })


-- nvim tree auto close, nvim tree在作为最后一个选项卡时，不不会自动关闭
-- https://github.com/nvim-tree/nvim-tree.lua/wiki/Auto-Close
vim.api.nvim_create_autocmd("BufEnter", {
  nested = true,
  callback = function()
    if #vim.api.nvim_list_wins() == 1 and require("nvim-tree.utils").is_nvim_tree_buf() then
      vim.cmd "quit"
    end
  end
})


-- markdown快捷键, 只在md文件中起作用
local vim = vim
vim.api.nvim_exec(
  [[
  autocmd Filetype markdown inoremap <buffer> ,f <Esc>/<++><CR>:nohlsearch<CR>"_c4l
  autocmd Filetype markdown inoremap <buffer> ,w <Esc>/ <++><CR>:nohlsearch<CR>"_c5l<CR>
  autocmd Filetype markdown inoremap <buffer> ,n ---<Enter><Enter>
  autocmd Filetype markdown inoremap <buffer> ,v ---- <++>
  autocmd Filetype markdown inoremap <buffer> ,b **** <++><Esc>F*hi
  autocmd Filetype markdown inoremap <buffer> ,s ~~~~ <++><Esc>F~hi
  autocmd Filetype markdown inoremap <buffer> ,i ** <++><Esc>F*i
  autocmd Filetype markdown inoremap <buffer> ,d `` <++><Esc>F`i
  autocmd Filetype markdown inoremap <buffer> ,c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
  autocmd Filetype markdown inoremap <buffer> ,t - [ ] 
  autocmd Filetype markdown inoremap <buffer> ,p ![](<++>) <++><Esc>F[a
  autocmd Filetype markdown inoremap <buffer> ,a [](<++>) <++><Esc>F[a
  autocmd Filetype markdown inoremap <buffer> ,1 #<Space><Enter><++><Esc>kA
  autocmd Filetype markdown inoremap <buffer> ,2 ##<Space><Enter><++><Esc>kA
  autocmd Filetype markdown inoremap <buffer> ,3 ###<Space><Enter><++><Esc>kA
  autocmd Filetype markdown inoremap <buffer> ,4 ####<Space><Enter><++><Esc>kA
  autocmd Filetype markdown inoremap <buffer> ,5 #####<Space><Enter><++><Esc>kA
  autocmd Filetype markdown inoremap <buffer> ,6 ######<Space><Enter><++><Esc>kA
  autocmd Filetype markdown inoremap <buffer> ,l --------<Enter>
]],
  false
)
