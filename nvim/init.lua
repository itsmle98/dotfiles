-- Prepare dependencies
require('deps')

-- Installing packages through Packer
local use = require("packer").use
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

  -- lspconfig & friends
  use 'neovim/nvim-lspconfig'
end)

-- Remaining configuration through modules
vim.cmd [[
  set expandtab
  set autoindent
  set shiftwidth=2
  set tabstop=2
  set softtabstop=2
]]

require('theme')
require('keys')
require('tree')
require('telescope')
require('lsp-lua')
