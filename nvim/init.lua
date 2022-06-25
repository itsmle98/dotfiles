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

end)

-- Configuring packages

-- OneDark Theme
require("onedark").setup({
  style = "darker",
})
require('onedark').load()
