" 基础设置
lua require('basic')

" 快捷键映射
lua require('keybindings')

" 插件管理
lua require('plugins')
lua require('plugin-config/bufferline')
lua require('plugin-config/nvim-tree')
lua require('plugin-config/nvim-treesitter')
lua require('lsp/setup')
lua require('lsp/nvim-cmp')


" 主题设置
let g:sonokai_style = 'andromeda'
colorscheme sonokai

" 取消换行自动注释
autocmd BufEnter * setl formatoptions-=o
