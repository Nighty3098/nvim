return {
    {
        "goolord/alpha-nvim",
        event = "VimEnter",
        enabled = true,
        init = false,
        opts = function()
            local dashboard = require("alpha.themes.dashboard")

            math.randomseed(os.time())

            local logo = {
                {
                    " .              +   .                .   . .     .  .",
                    "                   .                    .       .     *",
                    "  .       *                        . . . .  .   .  + .",
                    "             You Are Here             .   .  +  . . .",
                    ".                 |             .  .   .    .    . .",
                    "                  |           .     .     . +.    +  .",
                    "                  |             .       .   . .",
                    "        . .       V          .    * . . .  .  +   .",
                    "           +      .           .   .      +",
                    "                            .       . +  .+. .",
                    "  .                      .     . + .  . .     .      .",
                    "                    .     .    .  +   . .  *  .       . ",
                    "                    . + .  .  .  .. +  .",
                    "     .      .  .  .  *   .  *  . +..  .            *",
                    "      .      .   . .   .   .   . .  +   .    .            +",
                },

                {
                    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⠤⠤⠤⠤⠤⠤⣀⡀⠀⠀⠀",
                    "⠀⠀⠀⠀⠀⠀⠀⢀⣠⢤⡶⠞⠋⠉⠀⣀⣀⣀⣀⣀⣀⣀⠀⠉⠲⡀⠀",
                    "⠀⠀⠀⠀⣀⠴⢊⡥⠚⠁⣀⠤⠖⠊⠉⠀⠀⠀⠀⠈⢧⡸⡀⠀⠀⢹⠀",
                    "⠀⢀⡴⠊⣡⠖⠁⢀⠴⠊⣁⣀⡠⠔⠒⠊⠉⠉⠓⢦⠀⠀⢱⠀⠀⢀⡇",
                    "⡴⠋⢀⠞⠁⢀⠔⠁⢀⡼⠤⠇⣀⡤⠤⠤⡀⠀⠀⢸⠀⠀⡸⠀⠀⡸⠀",
                    "⠀⣰⠃⠀⡰⠃⠀⡴⠋⠀⡠⠊⠁⠀⠀⣠⠇⠀⢠⠎⠀⢠⠋⠀⣰⠃⠀",
                    "⣰⠃⢠⡚⡗⠀⡜⠀⠀⢸⡀⠀⣀⣼⣹⠁⢀⠔⠁⢀⡴⠃⢀⡴⠁⠀⠀",
                    "⡇⠀⠀⡏⠁⠀⣇⠀⠀⠀⠈⠉⠀⣀⠤⠚⠁⢀⡤⠋⠀⡠⠊⣠⠞⠀⠀",
                    "⡇⠀⠀⢻⡀⠀⠈⠓⠲⠖⠒⠚⠉⠀⢰⡋⢙⠏⢀⡤⢊⡠⠚⠁⠀⠀⠀",
                    "⢳⡀⠀⠀⠙⠲⠤⠄⠀⠠⠤⠤⠒⠊⠁⣉⣭⣚⡥⠒⠉⠀⠀⠀⠀⠀⠀",
                    "⠀⠙⡞⠉⣆⠀⠀⠀⠀⢀⣀⡤⠤⠶⠛⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                    "⠀⠀⠉⠚⠁⠉⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                },

                {
                    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⢠⢀⡐⢄⢢⡐⢢⢁⠂⠄⠠⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⡄⣌⠰⣘⣆⢧⡜⣮⣱⣎⠷⣌⡞⣌⡒⠤⣈⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠒⠊⠀⠀⠀⠀⢀⠢⠱⡜⣞⣳⠝⣘⣭⣼⣾⣷⣶⣶⣮⣬⣥⣙⠲⢡⢂⠡⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                    "⠀⠀⠀⠀⠀⠀⠀⠃⠀⠀⠀⠀⠀⠀⢀⠢⣑⢣⠝⣪⣵⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣯⣻⢦⣍⠢⢅⢂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⢆⡱⠌⣡⢞⣵⣿⣿⣿⠿⠛⠛⠉⠉⠛⠛⠿⢷⣽⣻⣦⣎⢳⣌⠆⡱⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠂⠠⠌⢢⢃⡾⣱⣿⢿⡾⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⢻⣏⠻⣷⣬⡳⣤⡂⠜⢠⡀⣀⠀⠀⡀⠀⠀⠀⠀⠀⠀",
                    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⢀⠂⣌⢃⡾⢡⣿⢣⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⡇⡊⣿⣿⣾⣽⣛⠶⣶⣬⣭⣥⣙⣚⢷⣶⠦⡤⢀",
                    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⢁⠂⠰⡌⡼⠡⣼⢃⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣾⡿⠿⣛⣯⡴⢏⠳⠁⠀",
                    "⠀⠀⠀⠀⠀⠀⠀⠀⠠⠑⡌⠀⣉⣾⣩⣼⣿⣾⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣠⣤⣤⣿⣿⣿⣿⡿⢛⣛⣯⣭⠶⣞⠻⣉⠒⠀⠂⠀⠀⠀",
                    "⠀⠀⠀⠀⠀⠀⢀⣀⡶⢝⣢⣾⣿⣼⣿⣿⣿⣿⣿⣀⣼⣀⣀⣀⣤⣴⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⣿⠿⡛⠏⠍⠂⠁⢠⠁⠀⠀⠀⠀⠀⠀⠀",
                    "⠀⠠⢀⢥⣰⣾⣿⣯⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⣽⠟⣿⠐⠨⠑⡀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                    "⡐⢢⣟⣾⣿⣿⣟⣛⣿⣿⣿⣿⢿⣝⠻⠿⢿⣯⣛⢿⣿⣿⣿⡛⠻⠿⣛⠻⠛⡛⠩⢁⣴⡾⢃⣾⠇⢀⠡⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                    "⠈⠁⠊⠙⠉⠩⠌⠉⠢⠉⠐⠈⠂⠈⠁⠉⠂⠐⠉⣻⣷⣭⠛⠿⣶⣦⣤⣤⣴⣴⡾⠟⣫⣾⣿⡏⠀⠂⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⢻⢿⢶⣤⣬⣉⣉⣭⣤⣴⣿⣿⡿⠃⠄⡈⠁⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠘⢊⠳⠭⡽⣿⠿⠿⠟⠛⠉⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠁⠈⠐⠀⠘⠀⠈⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                },
            }

            local function pick_color()
                local colors = {"String", "Identifier", "Keyword", "Number"}
                return colors[math.random(#colors)]
            end

            local function getRandomBanner()
                local randomIndex = math.random(1, #logo)
                return logo[randomIndex]
            end
            dashboard.section.header.val = getRandomBanner()
            dashboard.section.header.opts.hl = pick_color()

            dashboard.section.buttons.val = {
                dashboard.button("gc", "   Git commits", "<cmd>:Telescope git_commits<cr>"),
                dashboard.button("gO", "   Git branches", "<cmd>:Telescope git_branches<cr>"),
            }
            for _, button in ipairs(dashboard.section.buttons.val) do
                button.opts.hl = "Comment"
                button.opts.hl_shortcut = ""
                button.opts.position = "center"
                button.opts.width = 25
            end
            dashboard.section.header.opts.hl = ""
            dashboard.section.footer.opts.hl = "Keyword"
            dashboard.opts.layout[1].val = 8
            return dashboard
        end,

        config = function(_, dashboard)
            if vim.o.filetype == "lazy" then
                vim.cmd.close()
                vim.api.nvim_create_autocmd("User", {
                    once = true,
                    pattern = "AlphaReady",
                    callback = function()
                        require("lazy").show()
                    end,
                })
            end

            require("alpha").setup(dashboard.opts)

            vim.api.nvim_create_autocmd("User", {
                once = true,
                pattern = "LazyVimStarted",
                callback = function()
                    local current_hour = tonumber(os.date("%H"))
                    local greeting
                    local greeting_2

                    if current_hour < 5 then
                        greeting = "    Good night!"
                    elseif current_hour < 12 then
                        greeting = "  󰼰 Good morning!"
                    elseif current_hour < 17 then
                        greeting = "    Good afternoon!"
                    elseif current_hour < 20 then
                        greeting = "  󰖝  Good evening!"
                    else
                        greeting = "  󰖔  Good night!"
                    end

                    local stats = require("lazy").stats()
                    local ms = math.floor(stats.startuptime * 100) / 100

                    local fg_color = tostring(math.random(0, 12))

                    dashboard.section.footer.val = greeting

                    pcall(vim.cmd.AlphaRedraw)
                end,
            })
        end,
    },
}
