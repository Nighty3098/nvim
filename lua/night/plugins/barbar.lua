return {
    "romgrk/barbar.nvim",
    dependencies = {
        "lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
        "nvim-tree/nvim-web-devicons" -- OPTIONAL: for file icons
    },
    config = function()
        require("barbar").setup(
            {
                maximum_padding = 1,
                minimum_padding = 1,
                maximum_length = 30,
                minimum_length = 0,
                highlight_visible = true,
                tabpages = true,
                auto_hide = false,
                animation = true,
                icons = {
                    -- Configure the base icons on the bufferline.
                    -- Valid options to display the buffer index and -number are `true`, 'superscript' and 'subscript'
                    buffer_index = false,
                    buffer_number = false,
                    button = "",
                    -- Enables / disables diagnostic symbols
                    diagnostics = {
                        [vim.diagnostic.severity.ERROR] = {enabled = false},
                        [vim.diagnostic.severity.WARN] = {enabled = false},
                        [vim.diagnostic.severity.INFO] = {enabled = false},
                        [vim.diagnostic.severity.HINT] = {enabled = false}
                    },
                    filetype = {
                        -- Sets the icon's highlight group.
                        -- If false, will use nvim-web-devicons colors
                        custom_colors = false,
                        -- Requires `nvim-web-devicons` if `true`
                        enabled = true
                    },
                    separator = {left = "▎", right = ""},
                    -- If true, add an additional separator at the end of the buffer list
                    separator_at_end = false,
                    -- Configure the icons on the bufferline when modified or pinned.
                    -- Supports all the base icon options.
                    modified = {button = "●"},
                    pinned = {button = "", filename = true},
                    -- Use a preconfigured buffer appearance— can be 'default', 'powerline', or 'slanted'
                    preset = "default",
                    -- Configure the icons on the bufferline based on the visibility of a buffer.
                    -- Supports all the base icon options, plus `modified` and `pinned`.
                    alternate = {filetype = {enabled = false}},
                    current = {buffer_index = false},
                    inactive = {button = "×"},
                    visible = {modified = {buffer_number = false}}
                },
                sidebar_filetypes = {
                    -- Use the default values: {event = 'BufWinLeave', text = '', align = 'left'}
                    NvimTree = true,
                    -- Or, specify the text used for the offset:
                    undotree = {
                        text = "undotree",
                        align = "center" -- *optionally* specify an alignment (either 'left', 'center', or 'right')
                    },
                    -- Or, specify the event which the sidebar executes when leaving:
                    ["neo-tree"] = {event = "BufWipeout"},
                    neotree = {
                        text = "NeoTree",
                        align = "center" -- *optionally* specify an alignment (either 'left', 'center', or 'right')
                    },
                    -- Or, specify all three
                    Outline = {event = "BufWinLeave", text = "symbols-outline", align = "right"}
                }
            }
        )
    end
}
