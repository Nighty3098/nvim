# Neovim Plugins

> Список всех используемых плагинов (кроме тем оформления).

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

## Редактирование

- **mg979/vim-visual-multi** — множественные курсоры (multi-cursor)
- **kylechui/nvim-surround** — добавление/изменение/удаление окружения (скобки, кавычки и т.д.)
- **inkarkat/vim-ReplaceWithRegister** — замена текста содержимым регистра (`gr` + motion)
- **numToStr/Comment.nvim** — комментирование кода через motions
- **JoosepAlviste/nvim-ts-context-commentstring** — контекстно-зависимые строки комментариев (для Comment.nvim)
- **windwp/nvim-autopairs** — автоматическое закрытие скобок и кавычек
- **lukas-reineke/indent-blankline.nvim** — направляющие отступов (indent guides)
- **echasnovski/mini.bracketed** — навигация по скобкам (файлы, окна, quickfix, yank, treesitter)
- **psliwka/vim-smoothie** — плавная прокрутка
- **xiyaowong/transparent.nvim** — прозрачный фон для различных highlight-групп
- **s1n7ax/nvim-window-picker** — выбор окна для открытия файла

## Файловый менеджер

- **nvim-neo-tree/neo-tree.nvim** — файловый менеджер (tree, buffers, git status)

## Поиск / Fuzzy Finder

- **nvim-telescope/telescope.nvim** — расширяемый fuzzy finder
- **nvim-telescope/telescope-fzf-native.nvim** — нативный fzf-сортировщик для telescope

## Автодополнение (nvim-cmp)

- **hrsh7th/nvim-cmp** — движок автодополнения
- **hrsh7th/cmp-buffer** — автодополнение из буфера
- **hrsh7th/cmp-path** — автодополнение путей
- **hrsh7th/cmp-nvim-lsp** — автодополнение от LSP
- **rafamadriz/friendly-snippets** — коллекция готовых сниппетов
- **onsails/lspkind.nvim** — иконки для видов автодополнения
- **brenoprata10/nvim-highlight-colors** — подсветка цветовых кодов в буфере

## LSP

- **neovim/nvim-lspconfig** — конфигурация LSP-клиента
- **williamboman/mason.nvim** — установщик LSP/DAP/линтеров
- **williamboman/mason-lspconfig.nvim** — мост между mason и lspconfig
- **WhoIsSethDaniel/mason-tool-installer.nvim** — гарантированная установка инструментов через mason
- **antosha417/nvim-lsp-file-operations** — LSP-операции с файлами (rename, create, delete)
- **folke/neodev.nvim** — настройка Lua/LuaLS (типы для Neovim API)

## Отладка

- **mfussenegger/nvim-dap** — клиент протокола DAP (Debug Adapter Protocol)

## Форматирование и линтинг

- **stevearc/conform.nvim** — форматтер кода
- **mfussenegger/nvim-lint** — асинхронный линтер
- **rhysd/vim-clang-format** — форматирование C/C++ через clang-format

## Treesitter

- **nvim-treesitter/nvim-treesitter** — парсеры Treesitter (подсветка, auto-tag)
- **nvim-treesitter/nvim-treesitter-textobjects** — текстовые объекты на основе Treesitter

## Git

- **lewis6991/gitsigns.nvim** — git-символы в gutter (добавлено, изменено, удалено)
- **dinhhuy258/git.nvim** — git-команды и операции

## Аннотации / Документация

- **danymat/neogen** — генератор аннотаций (документация)

## Markdown

- **OXY2DEV/markview.nvim** — предпросмотр и рендеринг Markdown (с поддержкой LaTeX)

## Подсветка синтаксиса

- **bfrg/vim-cpp-modern** — современная подсветка C++
- **maxmellon/vim-jsx-pretty** — подсветка JSX/TSX

## Lazy development

- **folke/lazydev.nvim** — подсказки и автодополнение для настроек lazy.nvim
