-- Парсеры: C/C++, CMake, Python, JS/TS + то, что нужно самому конфигу и разметке
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
  -- Новый API (ветка main): плагин НЕ поддерживает ленивую загрузку
  lazy = false,
  config = function()
    require("nvim-treesitter").setup({})

    -- Доустанавливает отсутствующие парсеры (асинхронно; no-op для уже стоящих)
    require("nvim-treesitter").install(parsers)

    -- Подсветку теперь обеспечивает сам Neovim — её нужно включить вручную
    vim.api.nvim_create_autocmd("FileType", {
      desc = "Включить treesitter-подсветку для текущего buffer",
      callback = function(ev)
        -- pcall: для языков без парсера просто остаёмся на regexp-подсветке
        pcall(vim.treesitter.start, ev.buf)
      end,
    })
  end,
}
