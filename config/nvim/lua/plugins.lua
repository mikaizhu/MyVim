return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'sainnhe/sonokai'
  -- 使用本地的，直接将插件下载到该目录下即可
  use 'sainnhe/sonokai'
  use 'kyazdani42/nvim-tree.lua'
  use {'akinsho/bufferline.nvim', requires = {'kyazdani42/nvim-web-devicons', "moll/vim-bbye"}}
  -- treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  -- lspconfig
  use {'neovim/nvim-lspconfig', 'williamboman/nvim-lsp-installer'}

  -- nvim-cmp
  use 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }
  use 'hrsh7th/cmp-buffer'   -- { name = 'buffer' },
  use 'hrsh7th/cmp-path'     -- { name = 'path' }
  use 'hrsh7th/cmp-cmdline'  -- { name = 'cmdline' }
  use 'hrsh7th/nvim-cmp'
  -- vsnip
  use 'hrsh7th/cmp-vsnip'    -- { name = 'vsnip' }
  use 'hrsh7th/vim-vsnip'
  use 'rafamadriz/friendly-snippets'
  -- lspkind
  use 'onsails/lspkind-nvim'

  -- terminal
  use {"akinsho/toggleterm.nvim"}

  -- yank
  use "ojroques/vim-oscyank"

  -- auto pairs
  use "jiangmiao/auto-pairs"

  -- comments
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }
  use "JoosepAlviste/nvim-ts-context-commentstring"

  -- status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use "lukas-reineke/indent-blankline.nvim"

  -- search highlight
  use "kevinhwang91/nvim-hlslens"

end)
