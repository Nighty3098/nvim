return {
    "saghen/blink.cmp",
    branch = "v1", -- stable V1 (V2 keeps breaking the API)
    event = "InsertEnter",
    dependencies = {
        -- blink loads friendly-snippets itself via the built-in snippets source
        "rafamadriz/friendly-snippets",
    },
    opts = {
        sources = {
            default = { "lsp", "path", "snippets", "buffer" },
        },
        snippets = {
            preset = "default", -- vim.snippet; friendly-snippets is picked up automatically
        },
        completion = {
            list = {
                -- as with nvim-cmp: do not auto-select/auto-insert anything
                selection = { preselect = false, auto_insert = false },
                cycle = { from_bottom = true, from_top = true },
            },
            menu = {
                border = { " ", " ", " ", " ", " ", " ", " ", " " },
                draw = {
                    columns = {
                        { "kind_icon" },
                        { "label", "label_description", gap = 1 },
                        { "source_name" },
                    },
                },
            },
            documentation = {
                auto_show = true,
                window = { border = { " ", " ", " ", " ", " ", " ", " ", " " } },
            },
        },
        signature = {
            enabled = true,
            window = { border = { " ", " ", " ", " ", " ", " ", " ", " " } },
        },
        keymap = {
            ["<C-Space>"] = { "show", "show_documentation", "hide_documentation" },
            ["<C-e>"] = { "cancel", "fallback" },
            ["<C-j>"] = { "select_next", "fallback" },
            ["<C-k>"] = { "select_prev", "fallback" },
            ["<C-b>"] = { "scroll_documentation_up", "fallback" },
            ["<C-f>"] = { "scroll_documentation_down", "fallback" },
            ["<CR>"] = { "accept", "fallback" },
            ["<Tab>"] = { "snippet_forward", "fallback" },
            ["<S-Tab>"] = { "snippet_backward", "fallback" },
        },
    },
    config = function(_, opts)
        -- completion menu colors matching the current theme (like the old CmpPmenu)
        local function set_colors()
            local cursorline = vim.api.nvim_get_hl(0, { name = "CursorLine" })
            local normal = vim.api.nvim_get_hl(0, { name = "Normal" })
            local visual = vim.api.nvim_get_hl(0, { name = "Visual" })

            local bg = cursorline.bg or "#2e3440"
            local fg = normal.fg or "#d8dee9"
            local sel = visual.bg or "#4c566a"

            vim.api.nvim_set_hl(0, "BlinkCmpMenu", { bg = bg, fg = fg })
            vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder", { fg = bg, bg = bg })
            vim.api.nvim_set_hl(0, "BlinkCmpMenuSelection", { bg = sel, fg = "#ffffff", bold = true })
            vim.api.nvim_set_hl(0, "BlinkCmpDoc", { bg = bg, fg = fg })
            vim.api.nvim_set_hl(0, "BlinkCmpDocBorder", { fg = bg, bg = bg })
            vim.api.nvim_set_hl(0, "BlinkCmpSignatureHelp", { bg = bg, fg = fg })
            vim.api.nvim_set_hl(0, "BlinkCmpSignatureHelpBorder", { fg = bg, bg = bg })
        end

        set_colors()
        vim.api.nvim_create_autocmd("ColorScheme", { callback = set_colors })

        require("blink.cmp").setup(opts)
    end,
}
