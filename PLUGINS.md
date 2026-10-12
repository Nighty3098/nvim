# Neovim Plugins

> Список используемых плагинов (кроме тем оформления).

## Plugin Manager

- **folke/lazy.nvim** — менеджер плагинов с ленивой загрузкой

## Зависимости / Утилиты

- **nvim-lua/plenary.nvim** — набор Lua-функций, используемый многими плагинами
- **MunifTanjim/nui.nvim** — библиотека UI-компонентов
- **nvim-tree/nvim-web-devicons** — иконки типов файлов

## Улучшения интерфейса

- **folke/noice.nvim** — улучшенный cmdline, сообщения и всплывающие меню
- **folke/which-key.nvim** — подсказки доступных клавиш
- **hoob3rt/lualine.nvim** — кастомная строка статуса
- **goolord/alpha-nvim** — приветственный экран (dashboard)
- **folke/zen-mode.nvim** — режим без отвлечений (distraction-free)
- **zaldih/themery.nvim** — переключатель тем (UI для выбора цветовой схемы)
- **rachartier/tiny-inline-diagnostic.nvim** — инлайн-диагностика (сообщения об ошибках в тексте)
- **xiyaowong/transparent.nvim** — прозрачный фон для различных highlight-групп

## Редактирование

- **mg979/vim-visual-multi** — множественные курсоры (multi-cursor)
- **kylechui/nvim-surround** — добавление/изменение/удаление окружения (скобки, кавычки и т.д.)
- **numToStr/Comment.nvim** — комментирование кода через motions
- **JoosepAlviste/nvim-ts-context-commentstring** — контекстно-зависимые строки комментариев (для Comment.nvim)
- **windwp/nvim-autopairs** — автоматическое закрытие скобок и кавычек
- **lukas-reineke/indent-blankline.nvim** — направляющие отступов (indent guides)
- **echasnovski/mini.bracketed** — навигация по скобкам (файлы, окна, quickfix, yank, treesitter)

## Файловый менеджер

- **nvim-neo-tree/neo-tree.nvim** — файловый менеджер (tree, buffers, git status)

## Поиск / Fuzzy Finder

- **nvim-telescope/telescope.nvim** — расширяемый fuzzy finder
- **nvim-telescope/telescope-fzf-native.nvim** — нативный fzf-сортировщик для telescope

## Автодополнение (blink.cmp)

- **saghen/blink.cmp** — движок автодополнения (LSP, path, snippets, buffer)
- **rafamadriz/friendly-snippets** — коллекция готовых сниппетов (грузятся самим blink.cmp)
- **brenoprata10/nvim-highlight-colors** — подсветка цветовых кодов в буфере

## LSP

- **neovim/nvim-lspconfig** — конфигурация LSP-клиента
- **williamboman/mason.nvim** — установщик LSP/линтеров/форматтеров
- **williamboman/mason-lspconfig.nvim** — мост между mason и lspconfig
- **WhoIsSethDaniel/mason-tool-installer.nvim** — гарантированная установка инструментов через mason
- **antosha417/nvim-lsp-file-operations** — LSP-операции с файлами (rename, create, delete)
- **folke/lazydev.nvim** — подсказки и автодополнение для настроек Neovim (типы Lua, lazy.nvim)

## Форматирование и линтинг

- **stevearc/conform.nvim** — форматтер кода
- **mfussenegger/nvim-lint** — асинхронный линтер

## Treesitter

- **nvim-treesitter/nvim-treesitter** — парсеры Treesitter (подсветка, auto-tag)
- **nvim-treesitter/nvim-treesitter-textobjects** — текстовые объекты на основе Treesitter

## Git

- **lewis6991/gitsigns.nvim** — git-символы в gutter (добавлено, изменено, удалено)
- **kdheepak/lazygit.nvim** — открытие lazygit из nvim (требует установленный lazygit)

## Заметки / Markdown / Python

- **obsidian-nvim/obsidian.nvim** — работа с хранилищем Obsidian
- **blackhat-7/vellum.nvim** — быстрый рендеринг Markdown (включён для ft=markdown)
- **2giosangmitom/sqmeow.nvim** — заметки и персональный WIP-плагин (`<leader>D*`)
- **linux-cultist/venv-selector.nvim** — выбор Python-виртуального окружения