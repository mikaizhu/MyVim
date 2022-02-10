vim.opt.termguicolors = true
require("bufferline").setup {
    options = {
    left_mouse_command = "buffer %d",
    close_command = "bdelete! %d",
    -- 使用 nvim 内置lsp
    diagnostics = "nvim_lsp",
    -- 左侧让出 nvim-tree 的位置
    offsets = {{
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        text_align = "left"
    }}
    }
}
