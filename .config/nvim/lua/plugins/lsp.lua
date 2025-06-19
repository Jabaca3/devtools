local lsp = require("lsp-zero")

-- Mason Setup
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "pyright",
        "eslint",
        "ruff",
        "eslint",
        "ast_grep",
    },
    handlers = {
        lsp.default_setup,
        ["ruff_lsp"] = function()
            require("lspconfig").ruff_lsp.setup({
                on_attach = function(client)
                    client.server_capabilities.documentFormattingProvider = false -- optional
                end
            })
        end,
        ["eslint"] = function()
            require("lspconfig").eslint.setup({
                on_attach = function(client, bufnr)
                    client.server_capabilities.documentFormattingProvider = true
                    -- Optional: auto-fix on save
                    vim.api.nvim_create_autocmd("BufWritePre", {
                        buffer = bufnr,
                        command = "EslintFixAll",
                    })
                end
            })
        end,
        ["sg"] = function()
            require("lspconfig").sg.setup({
                on_attach = function(client, bufnr)
                    client.server_capabilities.documentFormattingProvider = true
                end
            })
        end,
    }
})


lsp.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
    vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
    vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
    vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
    vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
    vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
end)

-- Null-ls only for things not handled by LSP
local null_ls = require("null-ls")
null_ls.setup({
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = vim.api.nvim_create_augroup("LspFormatting", { clear = true }),
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({ bufnr = bufnr })
                end,
            })
        end
    end,
})

vim.keymap.set("n", "<leader>lf", function()
    vim.lsp.buf.format({ async = true })
end, { desc = "Format file with LSP" })

lsp.preset("recommended")
lsp.setup()
