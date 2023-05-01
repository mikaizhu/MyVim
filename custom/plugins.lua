local overrides = require("custom.configs.overrides")

local plugins = {
  -- ssh copy
  {
    'ojroques/nvim-osc52',
    event = "VeryLazy", --让lazy插件自己判断要不要加载
  },

  -- Override plugin definition options
  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
    event = "VeryLazy", --让lazy插件自己判断要不要加载
    --laze = false,
  },

  -- 防止与indentscope插件冲突
  { "lukas-reineke/indent-blankline.nvim",
    enabled = false,
  },

  -- 快速跳转leap
  -- easymotion
  ['ggandor/leap.nvim'] = {
    event = "VeryLazy",
    config = function()
      -- require "custom.config.leap"
      require("leap").add_default_mappings(true)
    end,
  },

  {
    "ggandor/flit.nvim",
    event = "VeryLazy",
    dependencies = {
      "ggandor/leap.nvim",
    },
    config = function()
      require "custom.configs.flit"
    end,
  },


  -- 对齐线
  {
    'echasnovski/mini.indentscope',
    config = function()
      require "custom.configs.indentscope"
    end,
    event = "VeryLazy",
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

  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

}

return plugins
