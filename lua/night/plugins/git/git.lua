return {
    {
        "lewis6991/gitsigns.nvim",
        enabled = vim.fn.executable("git") == 1,
        event = { "BufReadPre", "BufNewFile" }, -- git signs on the first file, not at startup
        opts = {
            worktrees = vim.g.git_worktrees,
        },
    },
}
