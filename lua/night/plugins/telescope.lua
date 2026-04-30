return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local telescope = require("telescope")

        local function setup_telescope_colors()
            local cursorline = vim.api.nvim_get_hl(0, { name = "CursorLine" })
            local normal = vim.api.nvim_get_hl(0, { name = "Normal" })

            local bg_color = cursorline.bg or "#2e3440"
            local text_fg = normal.fg or "#d8dee9"
            local accent = "#81a1c1"

            local hl_groups = {
                TelescopeNormal        = { bg = bg_color, fg = text_fg },
                TelescopeBorder        = { bg = bg_color, fg = bg_color },
                TelescopeResultsNormal = { bg = bg_color, fg = text_fg },
                TelescopeResultsBorder = { bg = bg_color, fg = bg_color },
                TelescopeResultsTitle  = { bg = bg_color, fg = bg_color },
                TelescopePromptNormal  = { bg = bg_color, fg = text_fg },
                TelescopePromptBorder  = { bg = bg_color, fg = bg_color },
                TelescopePromptTitle   = { bg = bg_color, fg = bg_color },
                TelescopePromptPrefix  = { fg = accent, bg = bg_color },
                TelescopePreviewNormal = { bg = bg_color },
                TelescopePreviewBorder = { bg = bg_color, fg = bg_color },
                TelescopePreviewTitle  = { bg = bg_color, fg = bg_color },
                TelescopeSelection      = { bg = "#4c566a", fg = "#ffffff", bold = true },
                TelescopeSelectionCaret = { bg = "#4c566a", fg = accent },
                TelescopeMatching       = { fg = accent, bold = true },
            }

            for group, settings in pairs(hl_groups) do
                vim.api.nvim_set_hl(0, group, settings)
            end
        end

        setup_telescope_colors()

        vim.api.nvim_create_autocmd("ColorScheme", {
            callback = setup_telescope_colors,
        })

        telescope.setup({
            defaults = {
                preview = { treesitter = true },
                borderchars = {
                    prompt  = { " ", " ", " ", " ", " ", " ", " ", " " },
                    results = { " ", " ", " ", " ", " ", " ", " ", " " },
                    preview = { " ", " ", " ", " ", " ", " ", " ", " " },
                },
                prompt_prefix = "   ",
                selection_caret = "▎ ",
                entry_prefix = "  ",
                sorting_strategy = "ascending",
                layout_config = {
                    horizontal = {
                        prompt_position = "top",
                        preview_width = 0.5,
                    },
                },
            },
        })

        pcall(telescope.load_extension, "fzf")
    end,
}
