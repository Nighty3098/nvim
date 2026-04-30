return {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = { "MunifTanjim/nui.nvim" },
    opts = {
        cmdline = {
            enabled = true,
            view = "cmdline_popup",
            format = {
                cmdline = { pattern = "^:", icon = "", lang = "vim" },
                search_down = { kind = "search", pattern = "^/", icon = " ", lang = "regex" },
                search_up = { kind = "search", pattern = "^%?", icon = " ", lang = "regex" },
                filter = { pattern = "^:%s*!", icon = "$", lang = "bash" },
                lua = { pattern = { "^:%s*lua%s+", "^:%s*lua%s*=%s*", "^:%s*=%s*" }, icon = "", lang = "lua" },
                help = { pattern = "^:%s*he?l?p?%s+", icon = "   " },
                input = { view = "cmdline_input", icon = "   " },
            },
        },
        popupmenu = {
            enabled = true,
            backend = "nui",
        },
        presets = {
            command_palette = true,
            long_message_to_split = true,
            lsp_doc_border = false,
        },
        views = {
            cmdline_popup = {
                border = { style = "none", padding = { 1, 3 } },
                win_options = {
                    winhighlight = {
                        Normal = "NoiceBg",
                        FloatBorder = "NoiceBg"
                    },
                },
            },
            popupmenu = {
                relative = "editor",
                position = { row = "50%", col = "50%" },
                size = { width = 60, height = "auto" },
                border = { style = "none", padding = { 1, 3 } },
                win_options = {
                    winhighlight = {
                        Normal = "NoiceBg",
                        FloatBorder = "NoiceBg",
                        CursorLine = "NoiceSel",

                        Pmenu = "NoiceBg",
                        PmenuKind = "NoiceBg",
                        PmenuExtra = "NoiceBg",
                    },
                },
            },
        },
    },
    config = function(_, opts)
        local function set_colors()
            local cursorline = vim.api.nvim_get_hl(0, { name = "CursorLine" })
            local normal = vim.api.nvim_get_hl(0, { name = "Normal" })
            local visual = vim.api.nvim_get_hl(0, { name = "Visual" })

            local bg = cursorline.bg or "#2e3440"
            local fg = normal.fg or "#d8dee9"
            local sel = visual.bg or "#4c566a"

            vim.api.nvim_set_hl(0, "NoiceBg", { bg = bg, fg = fg })
            vim.api.nvim_set_hl(0, "NoiceSel", { bg = sel, fg = "#ffffff", bold = true })

            vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorder", { fg = bg, bg = bg })
            vim.api.nvim_set_hl(0, "NoicePopupmenuBorder", { fg = bg, bg = bg })
        end

        set_colors()
        vim.api.nvim_create_autocmd("ColorScheme", { callback = set_colors })

        require("noice").setup(opts)
    end,
}
