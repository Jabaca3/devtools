

-- ~/.config/nvim/lua/plugins/init.lua
vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
    use 'wbthomason/packer.nvim' -- Packer manages itself

      -- packer
    use {
        "nvim-telescope/telescope-file-browser.nvim",
        requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    }

  
end)

