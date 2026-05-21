return {
    "obsidian-nvim/obsidian.nvim",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
        -- "hrsh7th/nvim-cmp", -- autocomplete
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
