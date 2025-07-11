local opt = vim.opt -- for conciseness

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" })

vim.opt.clipboard = "unnamedplus"

vim.opt.fillchars =
    { eob = " ", fold = " ", foldopen = "", foldsep = " ", foldclose = "", lastline = " " }, -- make EndOfBuffer invisible
    vim.opt.fillchars:append({ eob = " " })

vim.diagnostic.config({
    float = { border = "rounded" },
})

vim.diagnostic.config({
    virtual_text = {
        enabled = true,
        prefix = function(diagnostic)
            if diagnostic.severity == vim.diagnostic.severity.ERROR then
                return "🭰× "
            elseif diagnostic.severity == vim.diagnostic.severity.WARN then
                return "🭰▲ "
            else
                return "🭰• "
            end
        end,
        suffix = "🭵",
    },
    underline = true,
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = " ×",
            [vim.diagnostic.severity.WARN] = " ▲",
            [vim.diagnostic.severity.HINT] = " •",
            [vim.diagnostic.severity.INFO] = " •",
        },
    },
})

opt.undofile = true -- Enable undo file

vim.diagnostic.enable(true)
vim.diagnostic.config({ virtual_text = false })
-- vim.diagnostic.get(0, { severity = { min = vim.diagnostic.severity.CRIT } })

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
opt.tabstop = 4 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 4 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
opt.wrap = false -- disable line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- appearance
opt.scrolloff = 10
opt.sidescrolloff = 10

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

-- fix bug with lualine
opt.laststatus = 3
