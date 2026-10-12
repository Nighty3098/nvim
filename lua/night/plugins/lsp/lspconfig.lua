return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        { "antosha417/nvim-lsp-file-operations", config = true },
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        local capabilities = require("blink.cmp").get_lsp_capabilities()

        local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
        for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
        end

        vim.lsp.config("*", {
            capabilities = capabilities,
        })

        vim.lsp.config("svelte", {
            on_attach = function(client, bufnr)
                vim.api.nvim_create_autocmd("BufWritePost", {
                    pattern = { "*.js", "*.ts" },
                    callback = function(ctx)
                        client:notify("$/onDidChangeTsOrJsFile", { uri = ctx.match })
                    end,
                })
            end,
        })

        vim.lsp.config("graphql", {
            filetypes = { "graphql", "gql", "svelte", "typescriptreact", "javascriptreact" },
        })

        vim.lsp.config("emmet_ls", {
            filetypes = {
                "html",
                "typescriptreact",
                "javascriptreact",
                "css",
                "sass",
                "scss",
                "less",
                "svelte",
            },
        })

        vim.lsp.config("lua_ls", {
            settings = {
                Lua = {
                    diagnostics = { globals = { "vim" } },
                    completion = { callSnippet = "Replace" },
                },
            },
        })

        vim.lsp.config("clangd", {
            cmd = {
                "clangd",
                "--background-index",
                "--clang-tidy",
                "--header-insertion=iwyu",
                "--completion-style=detailed",
            },
        })

        vim.lsp.config("neocmake", {})

        vim.lsp.config("pyright", {
            settings = {
                python = {
                    analysis = {
                        typeCheckingMode = "basic",
                        autoSearchPaths = true,
                        useLibraryCodeForTypes = true,
                    },
                },
            },
        })

        require("mason-lspconfig").setup({
            automatic_enable = {
                exclude = { "stylua" },
            },
        })
    end,
}
