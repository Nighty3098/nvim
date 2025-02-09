return {
    "romgrk/barbar.nvim",

    config = function()
        vim.g.barbar_auto_setup =
            false, require("barbar").setup({
                animation = true,
                auto_hide = true,
                clickable = true,
                highlight_alternate = true,
                separator_at_end = true,
                separator = { left = " ", right = "" },
            })
    end,
}
