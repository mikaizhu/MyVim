-- reference:
-- https://github.com/NvChad/example_config/blob/main/plugins/init.lua
-- https://github.com/maolonglong/nvchad-go/blob/main/lua/custom/plugins/init.lua
-- local overrides = require "custom.plugins.overrides"
local overrides = require "custom.plugins.overrides"
local plugins = {
    -- overrde plugin configs
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },
  -- lsp
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.configs.lspconfig"
    end,
  },

  ["williamboman/mason-lspconfig.nvim"] = {
   after = "mason.nvim",
   config = function()
     require "custom.plugins.configs.mason-lspconfig"
     require "plugins.configs.lspconfig"
   end,
  },

  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.configs.null-ls"
    end,
  },
  ["jay-babu/mason-null-ls.nvim"] = {
    after = {"mason.nvim"},
    config = function ()
      require("custom.plugins.configs.mason-null")
    end
  },

  -- easymotion
  ['ggandor/leap.nvim'] = {
    config = function()
      require("leap").add_default_mappings(true) --强制覆盖其他按键，否则可能不工作
    end,
  },

  -- dashboard
  ["goolord/alpha-nvim"] = {
    disable = false,
    override_options = overrides.alpha,
  },

  ["nvim-tree/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },

  -- trouble
  ["folke/trouble.nvim"] = {
    -- after = "nvim-tree/nvim-web-devicons",
    config = function()
      require('custom.plugins.configs.trouble_config')
    end
  },
  -- code outline
  ["simrat39/symbols-outline.nvim"] = {
    config = function()
      require "custom.plugins.configs.symbols-outline"
    end,
  },
  -- indent line
  ['echasnovski/mini.indentscope'] = {
    config = function()
      require "custom.plugins.configs.indentscope"
    end,
  }
}

return plugins
