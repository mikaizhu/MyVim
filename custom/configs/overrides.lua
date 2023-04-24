local M = {}

M.lsp_server = {
  "lua_ls",
  "clangd",
  "pyright",
  -- "gopls",
  "omnisharp",
  "bashls",
}

M.treesitter = {
  -- ref: https://github.com/nvim-treesitter/nvim-treesitter#supported-languages
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "python",
  },
  indent = {
    enable = false,
    -- disable = {
    --   "python", --关闭treesitter在python中的indent，防止冲突
    -- },
  },
}

M.mason = {
  -- ref: https://mason-registry.dev/registry/list
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- python stuff
    "pyright", --lsp
    "autopep8", --formatter

    -- bash stuff
    "bash-language-server",
    "shfmt",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },
  view = {
    adaptive_size = true,
    side = "left",
    width = 25,
    hide_root_folder = false,
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
