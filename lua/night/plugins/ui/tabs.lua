return {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    version = "*",
    opts = {
        options = {
            mode = "tabs", -- Режим вкладок
            always_show_bufferline = true, -- Всегда показывать
            show_buffer_close_icons = true,
            show_close_icon = true,

            diagnostics = false, -- Отключить LSP для теста
            offsets = { -- Закрепить NvimTree/Explorer
                {
                    filetype = "NvimTree",
                    text = "File Explorer",
                    text_align = "center",
                    separator = true,
                },
            },
        },
    },
}
