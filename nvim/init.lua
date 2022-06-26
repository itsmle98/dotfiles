-- Prepare dependencies
require('lua/deps')

-- Installing packages through Packer
use = require("packer").use
require("packer").startup(function()
  -- Package manager
  use 'wbthomason/packer.nvim'

  -- OneDark Theme
  use 'navarasu/onedark.nvim'

  -- NVim-tree (file explorer)
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    }
  }

  -- Telescope (find files)
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }


end)

-- Remaining configuration through modules
require('lua/theme')
require('lua/keys')
require('lua/tree')
require('lua/telescope')
