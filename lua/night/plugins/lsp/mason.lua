return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        local mason = require("mason")

        local mason_tool_installer = require("mason-tool-installer")

        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })

        mason_tool_installer.setup({
            ensure_installed = {
                "clangd", -- C/C++ language server (with built-in clang-tidy)
                "clang-format", -- C/C++ formatter
                "neocmakelsp", -- CMakeLists.txt language server (Rust, no python)
                "tree-sitter-cli", -- builds parsers for nvim-treesitter (main branch)
                "pyright", -- python language server
                "prettier", -- prettier formatter
                "stylua", -- lua formatter
                "isort", -- python formatter
                "black", -- python formatter
                "pylint",
                "eslint_d",
            },
        })
    end,
}
