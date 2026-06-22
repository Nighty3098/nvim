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

        local function build_theme()
            local hl = vim.api.nvim_get_hl(0, { name = "Normal" })
            local fg_color = hl.fg and string.format("#%06x", hl.fg) or "#ffffff"

            local theme = require("lualine.themes.auto")
            local modes = { "normal", "insert", "visual", "replace", "command", "inactive" }

            for _, mode in ipairs(modes) do
                if theme[mode] then
                    for _, section in pairs(theme[mode]) do
                        if section then
                            section.fg = fg_color
                            section.bg = "NONE"
                        end
                    end
                end
            end
            return theme
        end

        local current_theme = build_theme()

        lualine.setup({
            options = {
                theme = current_theme,
                component_separators = "",
                section_separators = "",
                disabled_filetypes = { "alpha" },
                globalstatus = true,
                icons_enabled = true,
            },
            sections = {
                lualine_a = {},
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

        vim.api.nvim_create_autocmd("ColorScheme", {
            callback = function()
                local new_theme = build_theme()
                require("lualine").setup({ options = { theme = new_theme } })
                require("lualine").refresh()
            end,
        })
    end,
}
