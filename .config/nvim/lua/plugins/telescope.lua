require('telescope').setup {}
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>fk', builtin.keymaps, {})

vim.keymap.set('n', '<leader>ff', function()
    require('telescope.builtin').find_files({
        hidden = true,
        cwd = vim.loop.cwd(),
        file_ignore_patterns = { "%.git/*" },
    })
end)


require('telescope').setup {
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
