-- 重写默认的插件配置
-- 可以在config文件中写配置，也可以在这里写配置，并且这里的配置会覆盖掉config中的配置
local M = {}

M.alpha = {
  header = {
    val = {
      "             ___            ___  ",
      "            (o o)          (o o) ",
      "           (  V  ) bkalbs (  V  ) ",
      "           --m-m------------m-m--",
      "                                     ",
      "    Your day is going to be a real hoot!  ",
    },
  },
}

M.treesitter = {
  indent = {
    enable = false
  },
  ensure_installed = {
    -- HTML CSS
    "html",
    "css",
    "scss",

    -- TypeScript, JavaScript
    "javascript",
    "typescript",
    "tsx",
    -- "tailwindcss-language-server",

    -- Rust
    "rust",

    -- Go
    "go",
    "gomod",

    -- Vim
    "vim",
    "lua",

    -- PHP
    "php",

    -- Json
    "json",

    -- Markdown
    "markdown",

    -- Yaml
    "yaml",

    -- Docker
    "dockerfile",

    -- SQL
    "sql",
  },
}

M.mason = {
  ui = {
    icons = {
      package_pending = " ",
      package_installed = " ",
      package_uninstalled = " ",
    },
  },

  ensure_installed = {
    -- python
    "pyright",

    -- cpp
    "clangd",

    -- Lua
    "lua-language-server",
    "stylua",

    -- HTML CSS
    "css-lsp",
    "html-lsp",

    -- TypeScript, JavaScript
    "deno",
    "typescript-language-server",
    "eslint_d",

    -- Rust
    "rust-analyzer",
    "rustfmt",

    -- Go
    "gopls",
    "goimports",

    -- Shell
    "shfmt",
    "shellcheck",

    -- PHP
    "intelephense",
    "php-cs-fixer",
    "phpcs",

    -- Yaml
    "yaml-language-server",

    -- Json
    "json-lsp",

    -- Docker
    "dockerfile-language-server",
  },
}

return M
