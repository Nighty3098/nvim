return {
    "hoob3rt/lualine.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    init = function()
        vim.opt.laststatus = 0
    end,
    config = function()
        vim.opt.laststatus = 3
        local lualine = require("lualine")

        local custom_theme = require("lualine.themes.auto")
        local function clear_bg(section)
            if section then
                section.bg = "NONE"
            end
        end

        local modes = { "normal", "insert", "visual", "replace", "command", "inactive" }
        for _, mode in ipairs(modes) do
            if custom_theme[mode] then
                for _, section in pairs(custom_theme[mode]) do
                    clear_bg(section)
                end
            end
        end

        lualine.setup({
            options = {
                theme = custom_theme,
                component_separators = "",
                section_separators = "",
                disabled_filetypes = { "alpha" },
                globalstatus = true,
                icons_enabled = true,
            },
            sections = {
                lualine_a = {
                    -- { "mode", fmt = function(str) return str:sub(1,1) end, padding = { left = 0, right = 1 } }
                },
                lualine_b = { "branch" },
                lualine_c = {
                    { "filename", icon_enabled = false, symbols = { modified = "●", readonly = "" } },
                    { "filesize", padding = { left = 0, right = 1 } },
                    "%=",
                    {
                        "diagnostics",
                        symbols = { error = "• ", warn = "• ", info = "• ", hint = "• " },
                    },
                },
                lualine_x = {
                    {
                        function()
                            return vim.bo.filetype
                        end,
                        padding = { left = 1, right = 0 },
                    },
                },
                lualine_y = {
                    {
                        function()
                            local clients = vim.lsp.get_active_clients({ bufnr = 0 })
                            if #clients == 0 then
                                return ""
                            end
                            return "   " .. clients[1].name
                        end,
                        padding = { left = 1, right = 1 },
                    },
                    "location",
                },
                lualine_z = {},
            },
        })
    end,
}
