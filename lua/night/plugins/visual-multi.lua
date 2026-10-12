return {
    "mg979/vim-visual-multi",
    branch = "master",
    init = function()
        -- Глобальные настройки VM должны быть выставлены ДО загрузки плагина,
        -- т.к. постоянные маппинги строятся при его старте — поэтому в init().
        --
        -- VSCode-подобный Ctrl+D: первое нажатие выделяет слово под курсором,
        -- следующие — добавляют следующие вхождения по файлу.
        vim.g.VM_maps = {
            ["Find Under"] = "<C-d>", -- normal: слово под курсором
            ["Find Subword Under"] = "<C-d>", -- visual: берёт выделение, ищет следующее
            ["Select All"] = "<C-S-l>", -- все вхождения слова под курсором
            ["Visual All"] = "<C-S-l>", -- все вхождения выделенного текста
            -- Мультикурсор мышкой: Alt+ЛКМ — добавить курсор, Alt+ПКМ — слово
            ["Mouse Cursor"] = "<M-LeftMouse>",
            ["Mouse Word"] = "<M-RightMouse>",
        }
        vim.g.VM_mouse_mappings = 1 -- включить мышиные маппинги VM
    end,
    config = function()
        local keymap = vim.keymap -- как в core/keymaps.lua
        local opts = { noremap = true, silent = true }

        -- Надёжные фолбэки: работают везде, даже там, где Ctrl+Shift не доходит
        -- (внутри tmux терминал не отличает <C-S-l> от <C-l>).
        keymap.set("n", "<leader>sa", "<Plug>(VM-Select-All)", opts)
        keymap.set("x", "<leader>sa", "<Plug>(VM-Visual-All)", opts)

        -- Отдельно выделить слово под курсором (без мультикурсора)
        keymap.set("n", "<leader>w", "viw", opts)
    end,
}