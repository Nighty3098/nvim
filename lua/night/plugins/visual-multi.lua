return {
    "mg979/vim-visual-multi",
    branch = "master",
    event = "VeryLazy", -- init() still runs at startup (so VM_maps are set in time)
    init = function()
        -- VM globals must be set BEFORE the plugin loads,
        -- because its permanent mappings are built at startup — hence init().
        --
        -- VS Code-like Ctrl+D: the first press selects the word under the cursor,
        -- subsequent ones add the next occurrences in the file.
        vim.g.VM_maps = {
            ["Find Under"] = "<C-d>", -- normal: word under cursor
            ["Find Subword Under"] = "<C-d>", -- visual: takes the selection, finds the next one
            ["Select All"] = "<C-S-l>", -- all occurrences of the word under cursor
            ["Visual All"] = "<C-S-l>", -- all occurrences of the selected text
            -- Mouse multicursor: Alt+LMB adds a cursor, Alt+RMB selects a word
            ["Mouse Cursor"] = "<M-LeftMouse>",
            ["Mouse Word"] = "<M-RightMouse>",
        }
        vim.g.VM_mouse_mappings = 1 -- enable VM mouse mappings
    end,
    config = function()
        local keymap = vim.keymap -- same as core/keymaps.lua
        local opts = { noremap = true, silent = true }

        -- Reliable fallbacks: work everywhere, even where Ctrl+Shift does not arrive
        -- (inside tmux the terminal cannot tell <C-S-l> from <C-l>).
        keymap.set("n", "<leader>sa", "<Plug>(VM-Select-All)", opts)
        keymap.set("x", "<leader>sa", "<Plug>(VM-Visual-All)", opts)

        -- Select just the word under the cursor (no multicursor)
        keymap.set("n", "<leader>w", "viw", opts)
    end,
}