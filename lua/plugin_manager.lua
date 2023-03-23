local lazy = require 'lazy'

local plugins = {
  'windwp/nvim-ts-autotag',
  'windwp/nvim-autopairs',
  'folke/which-key.nvim',
  {
    'folke/tokyonight.nvim',
    config = function ()
      vim.cmd 'colorscheme tokyonight-night'
    end
  },
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    }
  },
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
  },
  {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.1',
    dependencies = { 
      'nvim-lua/plenary.nvim'
    },
  },   
}

lazy.setup(plugins)
