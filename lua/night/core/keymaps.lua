-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for brevity
local opts = { noremap = true, silent = true }

---------------------
-- General mappings
---------------------

-- leave insert mode with jk
keymap.set("i", "jk", "<ESC>", opts)

-- clear search highlight
keymap.set("n", "<leader>nh", ":nohl<CR>", opts)

-- delete char without yanking to register
keymap.set("n", "x", '"_x', opts)

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", opts)
keymap.set("n", "<leader>-", "<C-x>", opts)

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", opts) -- vertical split
keymap.set("n", "<leader>sh", "<C-w>s", opts) -- horizontal split
keymap.set("n", "<leader>se", "<C-w>=", opts) -- equalize windows
keymap.set("n", "<leader>cs", ":close<CR>", opts) -- close window

-- Alt+arrows: move between windows (NeoTree, splits, code, etc.)
-- Uses wincmd instead of <C-w>: <C-w> is remapped below, and tmux sends
-- raw escape sequences instead of <M-Left>, so we map those too.
local function win_move(dir)
    return function()
        vim.cmd("wincmd " .. dir)
    end
end
local win_keys = {
    -- h/l: "Left/Right" for regular terminals plus "b/f", because
    -- kitty.conf (lines 86-87) sends Alt+Left/Right as ESC b / ESC f
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
        -- duplicate via <A-...> (alias of <M-...>, in case of different terminfo)
        if not k:match("^<Esc>") then
            keymap.set("n", "<A-" .. k .. ">", win_move(dir), opts)
            keymap.set("i", "<A-" .. k .. ">", "<Esc><Cmd>wincmd " .. dir .. "<CR>", opts)
            keymap.set("v", "<A-" .. k .. ">", "<Esc><Cmd>wincmd " .. dir .. "<CR>", opts)
            keymap.set("t", "<A-" .. k .. ">", "<C-\\><C-n><Cmd>wincmd " .. dir .. "<CR>", opts)
        end
    end
end

-- tabs
keymap.set("n", "<leader>nt", ":tabnew<CR>", opts) -- new tab
-- close current buffer (used to be the bufdelete plugin; now built-in :bdelete)
keymap.set("n", "<C-q>", function()
    if vim.api.nvim_buf_get_option(0, "modified") then
        local answer = vim.fn.confirm("Buffer modified. Close anyway?", "&Yes\n&No")
        if answer ~= 1 then
            return
        end
    end
    vim.cmd("bdelete")
end, opts)
keymap.set("n", "<leader>tn", ":tabn<CR>", opts) -- next tab
keymap.set("n", "<leader>tp", ":tabp<CR>", opts) -- previous tab

-- Alt+1..9: jump to the i-th listed buffer (used to be bufferline.nvim)
local listed_buffers = function()
    local bufs = vim.tbl_filter(function(b)
        return vim.fn.buflisted(b) == 1
    end, vim.api.nvim_list_bufs())
    table.sort(bufs)
    return bufs
end
for i = 1, 9 do
    keymap.set("n", "<A-" .. i .. ">", function()
        local bufs = listed_buffers()
        if bufs[i] then
            vim.api.nvim_win_set_buf(0, bufs[i])
        end
    end, { desc = "Buffer " .. i, noremap = true, silent = true })
end

----------------------
-- Plugins and LSP
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

-- maximize/restore window (used to be the vim-maximizer plugin)
local maximized = false
keymap.set("n", "<leader>mt", function()
    maximized = not maximized
    if maximized then
        vim.cmd("wincmd _") -- full height
        vim.cmd("wincmd |") -- full width
    else
        vim.cmd("wincmd =") -- equal sizes again
    end
end, opts)

-- NeoTree (file explorer)
keymap.set("n", "<leader>e", ":Neotree left<CR>", opts)
keymap.set("n", "<leader>ef", ":Neotree float<CR>", opts)
keymap.set("n", "<leader>ec", ":Neotree close<CR>", opts)
keymap.set("n", "<leader>ee", ":Neotree float git_status git_base=main<CR>", opts)

-- file symbols via Telescope (used to be the tagbar plugin)
keymap.set("n", "<leader>t", "<cmd>Telescope lsp_document_symbols<CR>", opts)

-- terminal
keymap.set("n", "<leader>ot", ":terminal<CR>", opts)

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
keymap.set("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", opts)
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>", opts)
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opts)
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", opts)

-- git via telescope
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<CR>", opts)
keymap.set("n", "<leader>gbc", "<cmd>Telescope git_bcommits<CR>", opts)
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<CR>", opts)
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<CR>", opts)

-- sessions (built-in :mksession; used to be the auto-session plugin)
local session_dir = vim.fn.stdpath("state") .. "/sessions"
vim.fn.mkdir(session_dir, "p")
local function session_file()
    local name = vim.fn.getcwd():gsub("/", "_"):gsub("[^%w_-]", "")
    if name == "" then
        name = "default"
    end
    return session_dir .. "/" .. name .. ".vim"
end
keymap.set("n", "<leader>wr", function()
    vim.cmd("source " .. vim.fn.fnameescape(session_file()))
end, { desc = "Restore session for cwd", noremap = true, silent = true })
keymap.set("n", "<leader>ws", function()
    vim.cmd("mksession! " .. vim.fn.fnameescape(session_file()))
end, { desc = "Save session for cwd", noremap = true, silent = true })

-- themes
keymap.set("n", "<leader>cc", ":Themery<CR>", opts)

-- delete line (dd)
keymap.set("n", "<leader>dd", "dd", opts)

---------------------
-- VS Code-like combos
---------------------

-- Ctrl+w: move forward by word (like w)
keymap.set("n", "<C-w>", function()
    vim.api.nvim_feedkeys("w", "n", false)
end, opts)

-- Ctrl+b: move backward by word (like b)
keymap.set("n", "<C-b>", function()
    vim.api.nvim_feedkeys("b", "n", false)
end, opts)

-- Ctrl+Left/Right: move by words (like in VS Code/browsers)
-- Kitty/tmux may send raw escape sequences instead of <C-Left>/<C-Right>,
-- so we map those too (same as Alt+arrows above).
local word_motion = {
    { "<C-Left>", "<Esc>[1;5D", "b" },
    { "<C-Right>", "<Esc>[1;5C", "w" },
}
for _, m in ipairs(word_motion) do
    for _, key in ipairs({ m[1], m[2] }) do
        keymap.set({ "n", "v" }, key, m[3], opts)
        keymap.set("i", key, "<C-o>" .. m[3], opts)
    end
end

-- Home: start of line
keymap.set("n", "<Home>", "0", opts)
keymap.set("i", "<Home>", "<C-o>0", opts)

-- End: end of line
keymap.set("n", "<End>", "$", opts)
keymap.set("i", "<End>", "<C-o>$", opts)

-- Ctrl+a: select all (like Ctrl+A in VS Code)
keymap.set("n", "<C-a>", "ggVG", opts)
keymap.set("i", "<C-a>", "<ESC>ggVG", opts)

-- Copy/paste using the system clipboard
keymap.set("v", "<C-c>", '"+y', opts) -- copy in visual mode
keymap.set("n", "<C-c>", '"+yy', opts) -- copy current line
keymap.set("n", "<C-v>", '"+p', opts) -- paste after cursor
keymap.set("i", "<C-v>", "<C-r>+", opts) -- paste in insert mode
keymap.set("v", "<C-v>", '"+p', opts) -- paste in visual mode

-- Diagnostics
keymap.set(
    "n",
    "<leader>ch",
    ":lua vim.diagnostic.open_float()<CR>",
    { desc = "Diagnostic", noremap = true, silent = true }
)

keymap.set("n", "<leader>vs", ":VenvSelect<cr>")
keymap.set("n", "<leader>gg", ":LazyGit<CR>")

keymap.set("n", "<leader>mm", ":Vellum<CR>")

keymap.set("n", "<leader>Dd", ":Sqmeow toggle<cr>")
keymap.set("n", "<leader>Dc", ":Sqmeow cancel<cr>")
keymap.set("n", "<leader>Da", ":Sqmeow add<cr>")
keymap.set("n", "<leader>Ds", ":Sqmeow scratch<cr>")
