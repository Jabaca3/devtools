

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

    -- Tree Sitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }


    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
          --- LSP Support
          { 'neovim/nvim-lspconfig' },
          { 'williamboman/mason.nvim' },
          { 'williamboman/mason-lspconfig.nvim' },

          --- Autocompletion
          { 'hrsh7th/nvim-cmp' },
          { 'hrsh7th/cmp-nvim-lsp' },
          { 'hrsh7th/cmp-buffer' },
          { 'hrsh7th/cmp-path' },
          { 'hrsh7th/cmp-nvim-lua' },

          --- Snippets
          { 'L3MON4D3/LuaSnip' },
          { 'saadparwaiz1/cmp_luasnip' },
        }
    }

    use("nvimtools/none-ls.nvim")

end)

