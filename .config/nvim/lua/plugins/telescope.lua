require('telescope').setup{}
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fk', builtin.keymaps, {})



require('telescope').setup{
  defaults = {
    mappings = {
      i = { -- insert mode
        ["<C-j>"] = require('telescope.actions').move_selection_next,
        ["<C-k>"] = require('telescope.actions').move_selection_previous,
      },
      n = { -- normal mode
        ["j"] = require('telescope.actions').move_selection_next,
        ["k"] = require('telescope.actions').move_selection_previous,
      },
    },
  },
}


