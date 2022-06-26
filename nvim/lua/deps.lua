-- Will install dependencies used across the board
-- Try to be as cross-platform as possible eventually, but for now just macOS is the main target

-- Packer for installing packages
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  packer_bootstrap = vim.fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

-- Remaining ones use :checkhealth and address manually
-- As issues come up, address them here
