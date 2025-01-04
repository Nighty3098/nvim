return {
    "nvim-lualine/lualine.nvim",
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
        lualine.setup({
            options = {
                theme = auto,
                component_separators = "",
                section_separators = { left = "", right = "" },
                disabled_filetypes = { "alpha" },
            },
            sections = {
                lualine_a = {
                    { "mode", separator = { left = "", right = "" }, right_padding = 2 },
                },
                lualine_b = {
                    "branch",
                    "diff",
                    "diagnostics",
                },
                lualine_c = { "" },
                lualine_x = { "" },
                lualine_y = { "" },
                lualine_z = {
                    { "filename", separator = { right = "", left = "" }, left_padding = 2 },
                },
            },
            extensions = { "nvim-tree", "fzf" },
        })
    end,
}
