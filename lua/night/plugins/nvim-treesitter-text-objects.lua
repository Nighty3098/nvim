return {
  "nvim-treesitter/nvim-treesitter-textobjects",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  -- Маппинги задаются в config, поэтому плагин должен быть загружен
  lazy = false,
  init = function()
    -- Встроенный ftplugin Python объявляет ]m/[m/]M/[M/]]/[[ и перебивает наши
    -- textobjects. Отключаем только его (не глобальный no_plugin_maps).
    vim.g.no_python_maps = true
  end,
  config = function()
    require("nvim-treesitter-textobjects").setup({
      select = {
        -- Автоматически прыгать вперёд к textobj, как в targets.vim
        lookahead = true,
      },
      move = {
        set_jumps = true, -- писать прыжки в jumplist
      },
    })

    local select = require("nvim-treesitter-textobjects.select")
    local move = require("nvim-treesitter-textobjects.move")
    local swap = require("nvim-treesitter-textobjects.swap")
    local ts_repeat_move = require("nvim-treesitter-textobjects.repeatable_move")

    -- Выбор textobjects (x = visual, o = operator-pending)
    local function select_textobj(lhs, query, desc)
      vim.keymap.set({ "x", "o" }, lhs, function()
        select.select_textobject(query, "textobjects")
      end, { desc = desc })
    end

    select_textobj("a=", "@assignment.outer", "Select outer part of an assignment")
    select_textobj("i=", "@assignment.inner", "Select inner part of an assignment")
    select_textobj("l=", "@assignment.lhs", "Select left hand side of an assignment")
    select_textobj("r=", "@assignment.rhs", "Select right hand side of an assignment")

    -- Работает для js/ts (capture @property.* из textobjects.scm)
    select_textobj("a:", "@property.outer", "Select outer part of an object property")
    select_textobj("i:", "@property.inner", "Select inner part of an object property")
    select_textobj("l:", "@property.lhs", "Select left part of an object property")
    select_textobj("r:", "@property.rhs", "Select right part of an object property")

    select_textobj("aa", "@parameter.outer", "Select outer part of a parameter/argument")
    select_textobj("ia", "@parameter.inner", "Select inner part of a parameter/argument")

    select_textobj("ai", "@conditional.outer", "Select outer part of a conditional")
    select_textobj("ii", "@conditional.inner", "Select inner part of a conditional")

    select_textobj("al", "@loop.outer", "Select outer part of a loop")
    select_textobj("il", "@loop.inner", "Select inner part of a loop")

    select_textobj("af", "@call.outer", "Select outer part of a function call")
    select_textobj("if", "@call.inner", "Select inner part of a function call")

    select_textobj("am", "@function.outer", "Select outer part of a method/function definition")
    select_textobj("im", "@function.inner", "Select inner part of a method/function definition")

    select_textobj("ac", "@class.outer", "Select outer part of a class")
    select_textobj("ic", "@class.inner", "Select inner part of a class")

    -- Обмен (swap) узлов
    local function swap_textobj(lhs, fn, query, desc)
      vim.keymap.set("n", lhs, function()
        fn(query)
      end, { desc = desc })
    end

    swap_textobj("<leader>na", swap.swap_next, "@parameter.inner", "Swap parameter/argument with next")
    swap_textobj("<leader>n:", swap.swap_next, "@property.outer", "Swap object property with next")
    swap_textobj("<leader>nm", swap.swap_next, "@function.outer", "Swap function with next")

    swap_textobj("<leader>pa", swap.swap_previous, "@parameter.inner", "Swap parameter/argument with prev")
    swap_textobj("<leader>p:", swap.swap_previous, "@property.outer", "Swap object property with prev")
    swap_textobj("<leader>pm", swap.swap_previous, "@function.outer", "Swap function with previous")

    -- Перемещение (move) между textobjects
    local function move_textobj(lhs, fn, query, desc, group)
      vim.keymap.set({ "n", "x", "o" }, lhs, function()
        fn(query, group or "textobjects")
      end, { desc = desc })
    end

    move_textobj("]f", move.goto_next_start, "@call.outer", "Next function call start")
    move_textobj("]m", move.goto_next_start, "@function.outer", "Next method/function def start")
    move_textobj("]c", move.goto_next_start, "@class.outer", "Next class start")
    move_textobj("]i", move.goto_next_start, "@conditional.outer", "Next conditional start")
    move_textobj("]l", move.goto_next_start, "@loop.outer", "Next loop start")
    -- query_group: файл queries/<lang>/<group>.scm из runtimepath
    move_textobj("]s", move.goto_next_start, "@local.scope", "Next scope", "locals")
    move_textobj("]z", move.goto_next_start, "@fold", "Next fold", "folds")

    move_textobj("]F", move.goto_next_end, "@call.outer", "Next function call end")
    move_textobj("]M", move.goto_next_end, "@function.outer", "Next method/function def end")
    move_textobj("]C", move.goto_next_end, "@class.outer", "Next class end")
    move_textobj("]I", move.goto_next_end, "@conditional.outer", "Next conditional end")
    move_textobj("]L", move.goto_next_end, "@loop.outer", "Next loop end")

    move_textobj("[f", move.goto_previous_start, "@call.outer", "Prev function call start")
    move_textobj("[m", move.goto_previous_start, "@function.outer", "Prev method/function def start")
    move_textobj("[c", move.goto_previous_start, "@class.outer", "Prev class start")
    move_textobj("[i", move.goto_previous_start, "@conditional.outer", "Prev conditional start")
    move_textobj("[l", move.goto_previous_start, "@loop.outer", "Prev loop start")

    move_textobj("[F", move.goto_previous_end, "@call.outer", "Prev function call end")
    move_textobj("[M", move.goto_previous_end, "@function.outer", "Prev method/function def end")
    move_textobj("[C", move.goto_previous_end, "@class.outer", "Prev class end")
    move_textobj("[I", move.goto_previous_end, "@conditional.outer", "Prev conditional end")
    move_textobj("[L", move.goto_previous_end, "@loop.outer", "Prev loop end")

    -- vim way: ; двигается в ту же сторону, что и последнее движение
    vim.keymap.set({ "n", "x", "o" }, ";", ts_repeat_move.repeat_last_move)
    vim.keymap.set({ "n", "x", "o" }, ",", ts_repeat_move.repeat_last_move_opposite)

    -- f/F/t/T тоже повторяются через ; и ,
    vim.keymap.set({ "n", "x", "o" }, "f", ts_repeat_move.builtin_f_expr, { expr = true })
    vim.keymap.set({ "n", "x", "o" }, "F", ts_repeat_move.builtin_F_expr, { expr = true })
    vim.keymap.set({ "n", "x", "o" }, "t", ts_repeat_move.builtin_t_expr, { expr = true })
    vim.keymap.set({ "n", "x", "o" }, "T", ts_repeat_move.builtin_T_expr, { expr = true })
  end,
}
