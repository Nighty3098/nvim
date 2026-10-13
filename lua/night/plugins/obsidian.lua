return {
    "obsidian-nvim/obsidian.nvim",
    version = "*",
    ft = "markdown", -- грузим только для markdown, а не на старте
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
