return {
    "linux-cultist/venv-selector.nvim",
    dependencies = {
        { "nvim-telescope/telescope.nvim", version = "*", dependencies = { "nvim-lua/plenary.nvim" } }, -- optional: you can also use fzf-lua, snacks, mini-pick instead.
    },
    ft = "python", -- Load when opening Python files
    opts = {
        auto_refresh = true,
        name = { "venv", ".venv", "Python_3_14_5venv", "Python_3_13_5venv" },
        options = {}, -- plugin-wide options
        search = {}, -- custom search definitions
    },
}
