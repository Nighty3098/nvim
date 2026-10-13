return {
    {
        "lewis6991/gitsigns.nvim",
        enabled = vim.fn.executable("git") == 1,
        event = { "BufReadPre", "BufNewFile" }, -- знаки git на первом файле, не на старте
        opts = {
            worktrees = vim.g.git_worktrees,
        },
    },
}
