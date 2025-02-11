return {
    "hoob3rt/lualine.nvim",
    event = "VeryLazy",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    init = function()
        vim.opt.laststatus = 0
    end,
    config = function()
        vim.opt.laststatus = 3
        local lualine = require("lualine")

        local custom_theme = require("lualine.themes.auto")
        custom_theme.normal.c.bg = "NONE" -- Прозрачный фон для секции C

        lualine.setup({
            options = {
                theme = custom_theme,
                component_separators = "",
                section_separators = { left = "", right = "" },
                disabled_filetypes = { "alpha" },
            },
            sections = {
                lualine_a = {
                    -- { "mode", separator = { left = "", right = "" }, right_padding = 2 },
                },
                lualine_b = {},
                lualine_c = {
                    "mode",
                    "branch",
                    "diff",
                },
                lualine_x = { "diagnostics", "filetype" },
                lualine_y = {},
                lualine_z = {
                    -- { "filename", separator = { right = "", left = "" }, left_padding = 2 },
                },
            },
            extensions = { "nvim-tree", "fzf" },
        })
    end,
}
