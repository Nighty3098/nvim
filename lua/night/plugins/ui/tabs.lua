return {
    "romgrk/barbar.nvim",

    config = function()
        vim.g.barbar_auto_setup =
            false, require("barbar").setup({
                animation = true,
                auto_hide = false,
                clickable = true,
                highlight_alternate = false,
                separator_at_end = false,
                separator = { left = " ", right = " " },
            })
    end,
}
