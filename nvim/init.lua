-- Prepare dependencies
require('deps')

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

  -- Fugitive
  use 'tpope/vim-fugitive'

  -- gv (git view)
  use 'junegunn/gv.vim'
end)

-- Remaining configuration through modules
require('theme')
require('keys')
require('tree')
require('telescope')
