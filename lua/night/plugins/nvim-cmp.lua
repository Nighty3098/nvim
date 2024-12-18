return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "neovim/nvim-lspconfig",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/nvim-cmp",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "onsails/lspkind.nvim",
    },
    config = function()
        -- Set up nvim-cmp.
        local cmp = require("cmp")

        cmp.setup({
            formatting = {
                format = require("lspkind").cmp_format({
                    mode = "symbol",
                    maxwidth = 50,
                    ellipsis_char = "...",
                    symbol_map = { Codeium = "" },
                }),
                fields = { "kind", "abbr", "menu" },
                max_width = 0,
                source_names = {
                    nvim_lsp = "(LSP)",
                    emoji = "(Emoji)",
                    path = "(Path)",
                    calc = "(Calc)",
                    cmp_tabnine = "(Tabnine)",
                    vsnip = "(Snippet)",
                    luasnip = "(Snippet)",
                    buffer = "(Buffer)",
                    tmux = "(TMUX)",
                    copilot = "(Copilot)",
                    treesitter = "(TreeSitter)",
                },
            },
            window = {
                completion = {
                    border = "rounded",
                    winhighlight = "Normal:Normal,FloatBorder:Normal,CursorLine:Visual,Search:None",
                },
                documentation = {
                    border = "rounded",
                    winhighlight = "Normal:Normal,FloatBorder:Normal,CursorLine:Visual,Search:None",
                },
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<C-e>"] = cmp.mapping.abort(),
                ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
            }),
            sources = cmp.config.sources({
                { name = "nvim_lsp", max_item_count = 10 },
                { name = "codeium" },
                { name = "vsnip" }, -- For vsnip users.
                -- { name = 'luasnip' }, -- For luasnip users.
                { name = "ultisnips" }, -- For ultisnips users.
                { name = "snippy" }, -- For snippy users.
            }, {
                { name = "buffer" },
            }),
        })

        -- Set configuration for specific filetype.
        cmp.setup.filetype("gitcommit", {
            sources = cmp.config.sources({
                { name = "git" }, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
            }, {
                { name = "buffer" },
            }),
        })

        -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
        cmp.setup.cmdline({ "/", "?" }, {
            mapping = cmp.mapping.preset.cmdline(),
            sources = {
                { name = "buffer" },
            },
        })

        -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
        cmp.setup.cmdline(":", {
            mapping = cmp.mapping.preset.cmdline(),
            sources = cmp.config.sources({
                { name = "path" },
            }, {
                { name = "cmdline" },
            }),
        })

        -- Set up lspconfig.
        local capabilities = require("cmp_nvim_lsp").default_capabilities()
        -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
        --require("lspconfig")["<YOUR_LSP_SERVER>"].setup({
        --  capabilities = capabilities,
        --})
    end,
}
