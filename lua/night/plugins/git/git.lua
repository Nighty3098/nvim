return {
    {
        "lewis6991/gitsigns.nvim",
        enabled = vim.fn.executable("git") == 1,
        opts = {
            worktrees = vim.g.git_worktrees,
        },
    },
}
