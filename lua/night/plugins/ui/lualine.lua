local function setup_macro_refresh(lualine)
    vim.api.nvim_create_autocmd("RecordingEnter", {
        callback = function()
            lualine.refresh({
                place = { "statusline" },
            })
        end,
    })
    vim.api.nvim_create_autocmd("RecordingLeave", {
        callback = function()
            local timer = vim.loop.new_timer()
            timer:start(
                50,
                0,
                vim.schedule_wrap(function()
                    lualine.refresh({
                        place = { "statusline" },
                    })
                end)
            )
        end,
    })
end

local function macro_recording_status()
    local function current_status()
        local register = vim.fn.reg_recording()
        return register == "" and "" or "RECORDING @" .. register
    end
    return { "macro-recording", fmt = current_status }
end

return {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    init = function()
        vim.opt.laststatus = 0
    end,
    config = function()
        vim.opt.laststatus = 3
        local lualine = require("lualine")
        setup_macro_refresh(lualine)
        lualine.setup({
            options = {
                theme = auto,
                component_separators = "",
                section_separators = { left = "", right = "" },
                disabled_filetypes = { "alpha" },
            },
            sections = {
                lualine_a = {
                    { "mode", separator = { left = "", right = "" }, right_padding = 2 },
                    macro_recording_status(),
                },
                lualine_b = {
                    "branch",
                    "diff",
                    "diagnostics",
                },
                lualine_c = { "filename" },
                lualine_x = { "filetype" },
                lualine_y = { "progress" },
                lualine_z = {
                    { "location", separator = { right = "", left = "" }, left_padding = 2 },
                },
            },
            extensions = { "nvim-tree", "fzf" },
        })
    end,
}
