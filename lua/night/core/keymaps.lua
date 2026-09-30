-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- для краткости
local opts = { noremap = true, silent = true }

---------------------
-- Общие сопоставления
---------------------

-- выход из режима вставки по jk
keymap.set("i", "jk", "<ESC>", opts)

-- очистка подсветки поиска
keymap.set("n", "<leader>nh", ":nohl<CR>", opts)

-- удалить символ без копирования в регистр
keymap.set("n", "x", '"_x', opts)

-- инкремент/декремент чисел
keymap.set("n", "<leader>+", "<C-a>", opts)
keymap.set("n", "<leader>-", "<C-x>", opts)

-- управление окнами
keymap.set("n", "<leader>sv", "<C-w>v", opts) -- вертикальное разделение
keymap.set("n", "<leader>sh", "<C-w>s", opts) -- горизонтальное разделение
keymap.set("n", "<leader>se", "<C-w>=", opts) -- выравнивание окон
keymap.set("n", "<leader>cs", ":close<CR>", opts) -- закрыть окно

-- Alt+стрелки — переход между окнами (NeoTree, сплиты, код и т.д.)
-- Через wincmd, а не <C-w>: у тебя <C-w> перемаплен ниже, а tmux шлёт
-- сырые esc-последовательности вместо <M-Left>, поэтому мапим и их.
local function win_move(dir)
    return function()
        vim.cmd("wincmd " .. dir)
    end
end
local win_keys = {
    -- h/l: "Left/Right" для обычных терминалов + "b/f", потому что
    -- kitty.conf (строки 86-87) шлёт Alt+Left/Right как ESC b / ESC f
    h = { "Left", "b", "<Esc>[1;3D" },
    l = { "Right", "f", "<Esc>[1;3C" },
    k = { "Up", "<Esc>[1;3A" },
    j = { "Down", "<Esc>[1;3B" },
}
for dir, keys in pairs(win_keys) do
    for _, k in ipairs(keys) do
        local lhs = k:match("^<Esc>") and k or ("<M-" .. k .. ">")
        keymap.set("n", lhs, win_move(dir), opts)
        keymap.set("i", lhs, "<Esc><Cmd>wincmd " .. dir .. "<CR>", opts)
        keymap.set("v", lhs, "<Esc><Cmd>wincmd " .. dir .. "<CR>", opts)
        keymap.set("t", lhs, "<C-\\><C-n><Cmd>wincmd " .. dir .. "<CR>", opts)
        -- дубликат через <A-...> (синоним <M-...>, на случай другого terminfo)
        if not k:match("^<Esc>") then
            keymap.set("n", "<A-" .. k .. ">", win_move(dir), opts)
            keymap.set("i", "<A-" .. k .. ">", "<Esc><Cmd>wincmd " .. dir .. "<CR>", opts)
            keymap.set("v", "<A-" .. k .. ">", "<Esc><Cmd>wincmd " .. dir .. "<CR>", opts)
            keymap.set("t", "<A-" .. k .. ">", "<C-\\><C-n><Cmd>wincmd " .. dir .. "<CR>", opts)
        end
    end
end

-- вкладки
keymap.set("n", "<leader>nt", ":tabnew<CR>", opts) -- новая вкладка
keymap.set("n", "<C-q>", ":BufferClose<CR>", opts) -- закрыть вкладку
keymap.set("n", "<leader>tn", ":tabn<CR>", opts) -- следующая вкладка
keymap.set("n", "<leader>tp", ":tabp<CR>", opts) -- предыдущая вкладка

for i = 1, 9 do
    keymap.set("n", "<A-" .. i .. ">", function()
        vim.cmd("BufferLineGoToBuffer " .. (i - 1))
    end, { desc = "Tab " .. i, noremap = true, silent = true })
end

----------------------
-- Плагины и LSP
----------------------

keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts)
keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)
keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)
keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)
keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts)
keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)
keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
keymap.set("n", "K", vim.lsp.buf.hover, opts)
keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts)

-- zen mode
keymap.set("n", "<leader>zm", ":ZenMode<CR>", opts)

-- maximizer toggle
keymap.set("n", "<leader>mt", ":MaximizerToggle<CR>", opts)

-- NeoTree (файловый проводник)
keymap.set("n", "<leader>e", ":Neotree left<CR>", opts)
keymap.set("n", "<leader>ef", ":Neotree float<CR>", opts)
keymap.set("n", "<leader>ec", ":Neotree close<CR>", opts)
keymap.set("n", "<leader>ee", ":Neotree float git_status git_base=main<CR>", opts)

-- tagbar
keymap.set("n", "<leader>t", ":TagbarToggle<CR>", opts)

-- терминал
keymap.set("n", "<leader>ot", ":terminal<CR>", opts)

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
keymap.set("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", opts)
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>", opts)
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opts)
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", opts)

-- git через telescope
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<CR>", opts)
keymap.set("n", "<leader>gbc", "<cmd>Telescope git_bcommits<CR>", opts)
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<CR>", opts)
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<CR>", opts)

-- сессии
keymap.set(
    "n",
    "<leader>wr",
    "<cmd>SessionRestore<CR>",
    { desc = "Restore session for cwd", noremap = true, silent = true }
)
keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for cwd", noremap = true, silent = true })

-- темы
keymap.set("n", "<leader>cc", ":Themery<CR>", opts)

-- удаление строки (dd)
keymap.set("n", "<leader>dd", "dd", opts)

---------------------
-- VS Code-подобные сочетания
---------------------

-- Ctrl+w — поиск символа вперед (как w)
keymap.set("n", "<C-w>", function()
    vim.api.nvim_feedkeys("w", "n", false)
end, opts)

-- Ctrl+b — перейти назад по словам (как b)
keymap.set("n", "<C-b>", function()
    vim.api.nvim_feedkeys("b", "n", false)
end, opts)

-- Home — начало строки
keymap.set("n", "<Home>", "0", opts)
keymap.set("i", "<Home>", "<C-o>0", opts)

-- End — конец строки
keymap.set("n", "<End>", "$", opts)
keymap.set("i", "<End>", "<C-o>$", opts)

-- Ctrl+a — выделить всё (как Ctrl+A в VS Code)
keymap.set("n", "<C-a>", "ggVG", opts)
keymap.set("i", "<C-a>", "<ESC>ggVG", opts)

-- Копирование и вставка с системного буфера (clipboard)
keymap.set("v", "<C-c>", '"+y', opts) -- копировать в visual режиме
keymap.set("n", "<C-c>", '"+yy', opts) -- копировать текущую строку
keymap.set("n", "<C-v>", '"+p', opts) -- вставить после курсора
keymap.set("i", "<C-v>", "<C-r>+", opts) -- вставить в режиме вставки
keymap.set("v", "<C-v>", '"+p', opts) -- вставить в visual режиме

-- Диагностика
keymap.set(
    "n",
    "<leader>ch",
    ":lua vim.diagnostic.open_float()<CR>",
    { desc = "Diagnostic", noremap = true, silent = true }
)

keymap.set("n", "<leader>vs", ":VenvSelect<cr>")
keymap.set("n", "<leader>gg", ":LazyGit<CR>")

keymap.set("n", "<leader>mm", ":Vellum<CR>")
