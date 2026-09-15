local config = function()
    require("nvim-treesitter.config").setup({
        auto_install = true,
        ensure_installed = { "python", "c", "cpp", "typescript", "javascript" },
        highlight = {
            enable = true,
        },
        autotag = {
            enable = true,
        },
    })
end

return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = {
        "BufReadPre",
        "BufNewFile",
    },
    config = config,
}
