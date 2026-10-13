return {
    "obsidian-nvim/obsidian.nvim",
    version = "*",
    ft = "markdown", -- load only for markdown instead of at startup
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
        -- "saghen/blink.cmp", -- autocomplete
    },
    opts = {
        legacy_commands = false,
        workspaces = {
            {
                name = "personal",
                path = "/home/nighty/MY_NOTES",
            },
        },
    },
}
