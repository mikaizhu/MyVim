local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options
  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
    laze = false,
  },

  -- 防止与indentscope插件冲突
  { "lukas-reineke/indent-blankline.nvim",
    enabled = false,
  },

  {
    "ggandor/leap.nvim",
    config = function()
      require("leap").add_default_mappings(true) --强制覆盖其他按键，否则可能不工作
    end,
    lazy = false,
  },

  {
    'echasnovski/mini.indentscope',
    config = function()
      require "custom.configs.indentscope"
    end,
    lazy = false,
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

}

return plugins
