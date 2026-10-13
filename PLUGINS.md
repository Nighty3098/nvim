# Neovim Plugins

> List of plugins in use (excluding color themes).

## Plugin Manager

- **folke/lazy.nvim** — plugin manager with lazy loading

## Dependencies / Utilities

- **nvim-lua/plenary.nvim** — collection of Lua functions used by many plugins
- **MunifTanjim/nui.nvim** — UI component library
- **nvim-tree/nvim-web-devicons** — file type icons

## UI Enhancements

- **folke/noice.nvim** — improved cmdline, messages and popups
- **folke/which-key.nvim** — hints for available keys
- **hoob3rt/lualine.nvim** — custom statusline
- **goolord/alpha-nvim** — welcome screen (dashboard)
- **folke/zen-mode.nvim** — distraction-free mode
- **zaldih/themery.nvim** — theme switcher (UI for choosing a color scheme)
- **rachartier/tiny-inline-diagnostic.nvim** — inline diagnostics (error messages in the text)
- **xiyaowong/transparent.nvim** — transparent background for various highlight groups

## Editing

- **mg979/vim-visual-multi** — multiple cursors (multi-cursor)
- **kylechui/nvim-surround** — add/change/delete surroundings (brackets, quotes, etc.)
- **numToStr/Comment.nvim** — comment code via motions
- **JoosepAlviste/nvim-ts-context-commentstring** — context-aware comment strings (for Comment.nvim)
- **windwp/nvim-autopairs** — automatic closing of brackets and quotes
- **lukas-reineke/indent-blankline.nvim** — indent guides
- **echasnovski/mini.bracketed** — navigation by brackets (files, windows, quickfix, yank, treesitter)

## File Manager

- **nvim-neo-tree/neo-tree.nvim** — file manager (tree, buffers, git status)

## Search / Fuzzy Finder

- **nvim-telescope/telescope.nvim** — extensible fuzzy finder
- **nvim-telescope/telescope-fzf-native.nvim** — native fzf sorter for telescope

## Completion (blink.cmp)

- **saghen/blink.cmp** — completion engine (LSP, path, snippets, buffer)
- **rafamadriz/friendly-snippets** — collection of ready-made snippets (loaded by blink.cmp itself)
- **brenoprata10/nvim-highlight-colors** — highlight color codes in the buffer

## LSP

- **neovim/nvim-lspconfig** — LSP client configuration
- **williamboman/mason.nvim** — LSP/linter/formatter installer
- **williamboman/mason-lspconfig.nvim** — bridge between mason and lspconfig
- **WhoIsSethDaniel/mason-tool-installer.nvim** — guaranteed tool installation via mason
- **antosha417/nvim-lsp-file-operations** — LSP file operations (rename, create, delete)
- **folke/lazydev.nvim** — hints and completion for Neovim config (Lua types, lazy.nvim)

## Formatting and Linting

- **stevearc/conform.nvim** — code formatter
- **mfussenegger/nvim-lint** — asynchronous linter

## Treesitter

- **nvim-treesitter/nvim-treesitter** — Treesitter parsers and highlighting (main branch, highlighting enabled via `vim.treesitter.start()`)
- **nvim-treesitter/nvim-treesitter-textobjects** — Treesitter-based text objects

## Git

- **lewis6991/gitsigns.nvim** — git signs in the gutter (added, changed, deleted)
- **kdheepak/lazygit.nvim** — open lazygit from nvim (requires lazygit installed)

## Notes / Markdown / Python

- **obsidian-nvim/obsidian.nvim** — work with an Obsidian vault
- **blackhat-7/vellum.nvim** — fast Markdown rendering (enabled for ft=markdown)
- **2giosangmitom/sqmeow.nvim** — notes and personal WIP plugin (`<leader>D*`)
- **linux-cultist/venv-selector.nvim** — select a Python virtual environment
