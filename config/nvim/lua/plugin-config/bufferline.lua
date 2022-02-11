vim.opt.termguicolors = true
require("bufferline").setup {
    options = {
        left_mouse_command = "Bdelete! %d",
        -- 使用 nvim 内置lsp
        close_command = "Bdelete! %d",
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
