

-- ~/.config/nvim/lua/plugins/init.lua
vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)

    -- Packer
    use 'wbthomason/packer.nvim' -- Packer manages itself

    -- Telescope
    use {
        "nvim-telescope/telescope-file-browser.nvim",
        requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    }
    
    -- Theme
    use 'marko-cerovac/material.nvim'

end)

