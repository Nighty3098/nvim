return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        {
            "L3MON4D3/LuaSnip",
            version = "v2.*",
            build = "make install_jsregexp",
        },
        "saadparwaiz1/cmp_luasnip",
        "rafamadriz/friendly-snippets",
        "onsails/lspkind.nvim",
        "brenoprata10/nvim-highlight-colors",
    },
    config = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")
        local lspkind = require("lspkind")

        require("luasnip.loaders.from_vscode").lazy_load()

        local function set_cmp_colors()
            local cursorline = vim.api.nvim_get_hl(0, { name = "CursorLine" })
            local normal = vim.api.nvim_get_hl(0, { name = "Normal" })
            local selection = vim.api.nvim_get_hl(0, { name = "Visual" })

            local bg = cursorline.bg or "#2e3440"
            local fg = normal.fg or "#d8dee9"
            local sel_bg = selection.bg or "#4c566a"

            vim.api.nvim_set_hl(0, "CmpPmenu", { bg = bg, fg = fg })
            vim.api.nvim_set_hl(0, "CmpPmenuSel", { bg = sel_bg, fg = "#ffffff", bold = true })
            vim.api.nvim_set_hl(0, "CmpDoc", { bg = bg, fg = fg })
        end

        set_cmp_colors()

        vim.api.nvim_create_autocmd("ColorScheme", {
            callback = set_cmp_colors,
        })

        cmp.setup({
            completion = {
                completeopt = "menu,menuone,preview,noselect",
            },
            window = {
                completion = {
                    border = { " ", " ", " ", " ", " ", " ", " ", " " },
                    winhighlight = "Normal:CmpPmenu,FloatBorder:CmpPmenu,CursorLine:CmpPmenuSel,Search:None",
                },
                documentation = {
                    border = { " ", " ", " ", " ", " ", " ", " ", " " },
                    winhighlight = "Normal:CmpDoc,FloatBorder:CmpDoc,Search:None",
                },
            },
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-k>"] = cmp.mapping.select_prev_item(),
                ["<C-j>"] = cmp.mapping.select_next_item(),
                ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<C-e>"] = cmp.mapping.abort(),
                ["<CR>"] = cmp.mapping.confirm({ select = false }),
            }),
            sources = cmp.config.sources({
                { name = "nvim_lsp" },
                { name = "luasnip" },
                { name = "buffer" },
                { name = "path" },
            }),
            formatting = {
                fields = { "kind", "abbr", "menu" },
                format = function(entry, vim_item)
                    local kind = lspkind.cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
                    local strings = vim.split(kind.kind, "%s", { trimempty = true })
                    kind.kind = " " .. (strings[1] or "") .. " "
                    kind.menu = "    [" .. (strings[2] or "") .. "]"
                    return kind
                end,
            },
        })
    end,
}
