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

        local section_names = { "a", "b", "c", "x", "y", "z" }
        local accent_groups = { "Keyword", "String", "Function", "Type", "Constant", "Comment" }
        local default_accents = { "#bd93f9", "#98c379", "#61afef", "#e5c07b", "#e06c75", "#5c6370" }
        local palette = {}

        local window_bg = "#000000"

        local function hl_color(group)
            local hl = vim.api.nvim_get_hl(0, { name = group })
            if hl.fg and hl.fg ~= 0 then
                return string.format("#%06x", hl.fg)
            end
            return nil
        end

        local function hl_bg(group)
            local hl = vim.api.nvim_get_hl(0, { name = group })
            if hl.bg and hl.bg ~= 0 then
                return string.format("#%06x", hl.bg)
            end
            return nil
        end

        local function luminance(hex)
            local function chan(v)
                v = v / 255
                if v <= 0.03928 then
                    return v / 12.92
                end
                return ((v + 0.055) / 1.055) ^ 2.4
            end
            local r = chan(tonumber(hex:sub(2, 3), 16))
            local g = chan(tonumber(hex:sub(4, 5), 16))
            local b = chan(tonumber(hex:sub(6, 7), 16))
            return 0.2126 * r + 0.7152 * g + 0.0722 * b
        end

        local function build_palette()
            for i, group in ipairs(accent_groups) do
                palette[i] = hl_color(group) or default_accents[i]
            end
            local bg = hl_bg("Normal")
            if bg then
                window_bg = bg
            else
                local hl = vim.api.nvim_get_hl(0, { name = "Normal" })
                local dark = hl.fg and hl.fg ~= 0 and luminance(string.format("#%06x", hl.fg)) < 0.5 or true
                window_bg = dark and "#000000" or "#ffffff"
            end
        end

        -- Color for a single block. idx is an index into `palette`.
        -- Kept as a function so it re-evaluates after every statusline refresh.
        local function block(idx)
            local bg = palette[idx] or "#ffffff"
            return { fg = window_bg, bg = bg }
        end

        local function build_theme()
            local normal_bg = hl_color("Normal")
            local dark = not normal_bg or luminance(normal_bg) < 0.5
            local fg = dark and "#ffffff" or "#111118"
            local modes = { "normal", "insert", "visual", "replace", "command", "terminal", "inactive" }
            local theme = {}
            for _, mode in ipairs(modes) do
                theme[mode] = {}
                for _, sec in ipairs(section_names) do
                    theme[mode][sec] = { fg = fg, bg = "NONE" }
                end
            end
            return theme
        end

        build_palette()

        lualine.setup({
            options = {
                theme = build_theme(),
                component_separators = "",
                section_separators = "",
                disabled_filetypes = { "alpha" },
                globalstatus = true,
                icons_enabled = true,
            },
            sections = {
                lualine_a = {},
                lualine_b = {
                    {
                        "branch",
                        padding = { left = 1, right = 1 },
                        color = function()
                            return block(2)
                        end,
                    },
                },
                lualine_c = {
                    {
                        "filename",
                        padding = { left = 1, right = 0 },
                        icon_enabled = false,
                        symbols = { modified = "●", readonly = "" },
                        color = function()
                            return block(3)
                        end,
                    },
                    {
                        "filesize",
                        padding = { left = 1, right = 1 },
                        color = function()
                            return block(3)
                        end,
                    },
                    "%=",
                    {
                        "diagnostics",
                        colored = false,
                        symbols = { error = " ", warn = " ", info = " ", hint = " " },
                        padding = { left = 1, right = 1 },
                        color = function()
                            return block(5)
                        end,
                    },
                },
                lualine_x = {
                    {
                        function()
                            return vim.bo.filetype
                        end,
                        padding = { left = 1, right = 1 },
                        color = function()
                            return block(4)
                        end,
                    },
                },
                lualine_y = {
                    {
                        function()
                            local clients = vim.lsp.get_active_clients({ bufnr = 0 })
                            return clients[1].name
                        end,
                        padding = { left = 1, right = 1 },
                        color = function()
                            return block(1)
                        end,
                    },
                    {
                        "location",
                        padding = { left = 1, right = 1 },
                        color = function()
                            return block(6)
                        end,
                    },
                },
                lualine_z = {},
            },
        })

        local base_groups = {
            "StatusLine",
            "StatusLineNC",
            "WinBar",
            "WinBarNC",
            "StatusLineTerm",
            "StatusLineTermNC",
        }

        local function apply_transparent_hl()
            local hl = vim.api.nvim_get_hl(0, { name = "Normal" })
            local fg = hl.fg and string.format("#%06x", hl.fg) or "#ffffff"
            local modes = { "normal", "insert", "visual", "replace", "command", "inactive", "terminal" }
            for _, mode in ipairs(modes) do
                for _, sec in ipairs(section_names) do
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

        local function schedule_refresh()
            -- Apply in a loop to make sure we win the race against theme
            -- integrations that also touch lualine groups after ColorScheme.
            local count = 0
            local function tick()
                apply_transparent_hl()
                require("lualine").refresh()
                count = count + 1
                if count < 5 then
                    vim.defer_fn(tick, 100)
                end
            end
            vim.defer_fn(tick, 100)
        end

        vim.api.nvim_create_autocmd("ColorScheme", {
            callback = function()
                build_palette()
                require("lualine").setup({ options = { theme = build_theme() } })
                apply_transparent_hl()
                require("lualine").refresh()
                schedule_refresh()
            end,
        })
    end,
}
