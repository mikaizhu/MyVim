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
  ["phaazon/hop.nvim"] = {
    opt = true,
    event = "BufReadPost",
    branch = "v2",
    config = function()
      require "custom.plugins.configs.hop"
    end,
  },
  -- dashboard
  ["goolord/alpha-nvim"] = {
    disable = false,
    override_options = overrides.alpha,
  },

}

return plugins
