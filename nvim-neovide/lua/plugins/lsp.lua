return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "saghen/blink.cmp" },
    config = function()
        local capabilities = require("blink.cmp").get_lsp_capabilities()

        vim.lsp.config["clangd"] = {
            cmd = { "clangd" },
            filetypes = { "c", "cpp" },
            capabilities = capabilities,
        }

        vim.lsp.enable("clangd")

        vim.api.nvim_create_autocmd("LspAttach", {
            callback = function(args)
                local opts = { buffer = args.buf }
                vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
                vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
                vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
                vim.keymap.set("n", "<leader>F", vim.lsp.buf.format, opts)
            end,
        })
    end,
}
