-- Install packer
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

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

-- Configuring packages

-- OneDark Theme
require("onedark").setup({
  style = "darker",
})
require('onedark').load()

-- NVim-tree
require("nvim-tree").setup()

-- Keybinds
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Space as leader key
vim.g.mapleader = ' '

-- Pane movement
map("n", "<Leader>l", "<C-W><C-L>", { silent = true })
map("n", "<Leader>h", "<C-W><C-H>", { silent = true })
map("n", "<Leader>k", "<C-W><C-K>", { silent = true })
map("n", "<Leader>j", "<C-W><C-J>", { silent = true })

-- Toggle NVim tree
map("n", "<Leader>t", ":NvimTreeToggle<CR>", { silent = true })

-- Tree-sitter find file
map("n", "<Leader>f", ":Telescope find_files<CR>", { silent = true })
