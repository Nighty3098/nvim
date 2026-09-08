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

        local sections = { "a", "b", "c", "x", "y", "z" }

        local function apply_transparent_hl()
            local hl = vim.api.nvim_get_hl(0, { name = "Normal" })
            local fg = hl.fg and string.format("#%06x", hl.fg) or "#ffffff"
            local modes = { "normal", "insert", "visual", "replace", "command", "inactive", "terminal" }
            for _, mode in ipairs(modes) do
                for _, sec in ipairs(sections) do
                    local group = "lualine_" .. sec .. "_" .. mode
                    local ok, cur = pcall(vim.api.nvim_get_hl, 0, { name = group })
                    if ok and cur then
                        vim.api.nvim_set_hl(0, group, {
                            fg = cur.fg or fg,
                            bg = "NONE",
                            bold = cur.bold,
                            italic = cur.italic,
                        })
                    end
                end
            end
            -- Empty/leftover lualine sections and the global statusline render
            -- with the StatusLine background, so clear those too.
            local base_groups = {
                "StatusLine",
                "StatusLineNC",
                "WinBar",
                "WinBarNC",
                "StatusLineTerm",
                "StatusLineTermNC",
            }
            for _, group in ipairs(base_groups) do
                local ok, cur = pcall(vim.api.nvim_get_hl, 0, { name = group })
                if ok and cur then
                    vim.api.nvim_set_hl(0, group, {
                        fg = cur.fg or fg,
                        bg = "NONE",
                        bold = cur.bold,
                        italic = cur.italic,
                    })
                end
            end
        end

        apply_transparent_hl()

        local function schedule_transparent()
            -- Apply in a loop to make sure we win the race against theme
            -- integrations that also touch lualine groups after ColorScheme.
            local count = 0
            vim.defer_fn(function()
                apply_transparent_hl()
                require("lualine").refresh()
                count = count + 1
                if count < 5 then
                    vim.defer_fn(function()
                        apply_transparent_hl()
                        require("lualine").refresh()
                        count = count + 1
                    end, 100)
                end
            end, 100)
        end

        vim.api.nvim_create_autocmd("ColorScheme", {
            callback = function()
                local new_theme = build_theme()
                require("lualine").setup({ options = { theme = new_theme } })
                apply_transparent_hl()
                require("lualine").refresh()
                schedule_transparent()
            end,
        })
    end,
}
