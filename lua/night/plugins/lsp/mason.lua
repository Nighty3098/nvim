return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim"
    },
    config = function()
        local mason = require("mason")

        local mason_tool_installer = require("mason-tool-installer")

        mason.setup(
            {
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                }
            }
        )

        mason_tool_installer.setup(
            {
                ensure_installed = {
                    "html",
                    "pyright",
                    "cssls",
                    "lua_ls",
                    "prettier", -- prettier formatter
                    "stylua", -- lua formatter
                    "isort", -- python formatter
                    "black", -- python formatter
                    "pylint",
                    "eslint_d"
                }
            }
        )
    end
}
