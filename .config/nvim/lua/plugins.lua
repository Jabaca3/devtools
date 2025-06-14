

-- ~/.config/nvim/lua/plugins/init.lua
vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- Packer manages itself

end)

