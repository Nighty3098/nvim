return {
    "akinsho/bufferline.nvim",
    -- event = "VeryLazy",
    event = { "BufReadPost", "BufNewFile" },
    version = "*",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local bufferline = require("bufferline")
        bufferline.setup({
            highlights = {
                fill = { bg = "NONE" },
                background = {},
                close_button = {},
                offset_separator = {},
                -- selected
                buffer_selected = {
                    bold = true,
                    italic = true,
                    bg = "NONE",
                },
                buffer_visible = {
                    bg = "NONE",
                    bold = true,
                    italic = true,
                },
                tab_selected = {
                    bg = "NONE",
                },
            },
            options = {
                separator_style = { "", "" },
                indicator = {
                    icon = " ",
                    style = "icon",
                },
                diagnostics = "nvim_lsp",
                offsets = {
                    {
                        separator = " ",
                        highlight = "NvimTreeNormal",
                        filetype = "NvimTree",
                        text = "",
                        text_align = "center",
                    },
                },
            },
        })
    end,
}
