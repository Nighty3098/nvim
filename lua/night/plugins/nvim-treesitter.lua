-- Parsers: C/C++, CMake, Python, JS/TS plus what the config and markup need
local parsers = {
  "c",
  "cpp",
  "cmake",
  "python",
  "javascript",
  "typescript",
  "tsx",
  "lua",
  "vim",
  "vimdoc",
  "query",
  "markdown",
  "markdown_inline",
  "bash",
  "json",
  "yaml",
}

return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  -- New API (main branch): the plugin does NOT support lazy-loading
  lazy = false,
  config = function()
    require("nvim-treesitter").setup({})

    -- Installs missing parsers (async; no-op for already installed ones)
    require("nvim-treesitter").install(parsers)

    -- Highlighting is now provided by Neovim itself and must be enabled manually
    vim.api.nvim_create_autocmd("FileType", {
      desc = "Enable treesitter highlighting for the current buffer",
      callback = function(ev)
        -- pcall: for languages without a parser just fall back to regexp highlighting
        pcall(vim.treesitter.start, ev.buf)
      end,
    })
  end,
}
