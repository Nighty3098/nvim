return {
    "goolord/alpha-nvim",
    event = "VimEnter",
    dependencies = {"nvim-tree/nvim-web-devicons"},
    config = function()

        local A = {
            {
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⣠⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣡⣾⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣟⠻⣿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⡿⢫⣷⣿⣿⣿⣿⣿⣿⣿⣾⣯⣿⡿⢧⡚⢷⣌⣽⣿⣿⣿⣿⣿⣶⡌⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⠇⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣮⣇⣘⠿⢹⣿⣿⣿⣿⣿⣻⢿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⠀⢸⣿⣿⡇⣿⣿⣿⣿⣿⣿⣿⣿⡟⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣻⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⡇⠀⣬⠏⣿⡇⢻⣿⣿⣿⣿⣿⣿⣿⣷⣼⣿⣿⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⢻⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⠀⠈⠁⠀⣿⡇⠘⡟⣿⣿⣿⣿⣿⣿⣿⣿⡏⠿⣿⣟⣿⣿⣿⣿⣿⣿⣿⣿⣇⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⡏⠀⠀⠐⠀⢻⣇⠀⠀⠹⣿⣿⣿⣿⣿⣿⣩⡶⠼⠟⠻⠞⣿⡈⠻⣟⢻⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⢿⠀⡆⠀⠘⢿⢻⡿⣿⣧⣷⢣⣶⡃⢀⣾⡆⡋⣧⠙⢿⣿⣿⣟⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⡥⠂⡐⠀⠁⠑⣾⣿⣿⣾⣿⣿⣿⡿⣷⣷⣿⣧⣾⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⡿⣿⣍⡴⠆⠀⠀⠀⠀⠀⠀⠀⠀⣼⣄⣀⣷⡄⣙⢿⣿⣿⣿⣿⣯⣶⣿⣿⢟⣾⣿⣿⢡⣿⣿⣿⣿⣿",
                "⣿⡏⣾⣿⣿⣿⣷⣦⠀⠀⠀⢀⡀⠀⠀⠠⣭⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⣡⣾⣿⣿⢏⣾⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⡴⠀⠀⠀⠀⠀⠠⠀⠰⣿⣿⣿⣷⣿⠿⠿⣿⣿⣭⡶⣫⠔⢻⢿⢇⣾⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⡿⢫⣽⠟⣋⠀⠀⠀⠀⣶⣦⠀⠀⠀⠈⠻⣿⣿⣿⣾⣿⣿⣿⣿⡿⣣⣿⣿⢸⣾⣿⣿⣿⣿⣿⣿⣿",
                "⡿⠛⣹⣶⣶⣶⣾⣿⣷⣦⣤⣤⣀⣀⠀⠀⠀⠀⠀⠀⠉⠛⠻⢿⣿⡿⠫⠾⠿⠋⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣀⡆⣠⢀⣴⣏⡀⠀⠀⠀⠉⠀⠀⢀⣠⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⠿⠛⠛⠛⠛⠛⠛⠻⢿⣿⣿⣿⣿⣯⣟⠷⢷⣿⡿⠋⠀⠀⠀⠀⣵⡀⢠⡿⠋⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⢿⣿⣿⠂⠀⠀⠀⠀⠀⢀⣽⣿⣿⣿⣿⣿⣿⣿⣍⠛⠿⣿⣿⣿⣿⣿⣿",
            },

            {
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢴⣿⣿⣿⣿⣿⣿⣿⣿⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⡎⢻⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠠⢠⣿⣿⡓⣽⣿⣿⣿⣿⣏⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣿⣟⣧⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⠀⠀⠀⠀⠀⠀⠀⠀⢁⣼⡟⡯⡇⣿⣿⣿⣿⡿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣼⡇⣻⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⠀⠀⠀⠀⠀⠀⢠⠀⡄⣺⣿⢇⣏⣿⣿⢿⣿⣿⣿⣿⢻⣾⣿⣿⣿⣿⣿⣿⣿⣿⣻⢿⡇⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⠀⠀⠀⠀⠀⢀⣻⣾⠱⣽⢸⣼⣿⣿⣿⣼⡏⣿⣿⣿⡇⡿⣼⣿⣿⣿⡿⠻⣿⣿⣿⣿⣼⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⠀⠀⠀⠀⠀⣴⣿⡿⣺⣿⣰⣯⣸⣿⣿⣟⣇⣿⣿⣻⣷⣿⣿⣭⣿⣷⠝⣮⣻⣿⣯⢷⣿⢸⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⠀⠀⠀⠀⣰⣿⣿⣟⣿⣟⣿⡏⣺⣿⣿⣿⢹⢿⣿⣿⣿⣶⣿⣿⣾⣟⠕⠐⣿⣿⠎⢽⡻⣸⣿⠟⣿⣿⡟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⠀⠀⠀⢠⠟⢸⣿⣸⣿⣿⣿⡀⣧⣟⢿⣿⣇⠛⣿⣿⣿⣿⣻⣿⣷⣷⣳⡕⢿⢫⢿⣷⡟⣟⣞⣦⣘⢿⢱⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⠀⠀⠀⠎⠰⢸⣿⣿⣿⢻⣿⢳⣏⣷⣷⣝⢿⣆⢙⡻⣿⣿⣯⢿⣟⣻⡍⣿⢰⣯⣿⣿⠛⡻⢟⠲⣯⢞⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⠀⠀⠘⠀⠀⠸⣿⡃⣻⢸⣿⢸⣽⣽⣷⠻⣷⣽⣳⣿⣾⡻⣳⣿⢿⢸⡿⠹⡈⢉⣤⡆⠐⠒⠠⠠⣰⡷⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⠹⣿⣿⣿⣿⣿⣿⣿",
                "⠀⠀⠂⠀⠀⣸⢻⣿⠁⢾⣿⣾⣿⢿⡯⠜⢞⡿⢿⣾⣟⣿⣿⡝⢯⣸⣷⣟⣷⣼⣿⣿⣆⠂⣊⣾⣾⣯⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿",
                "⠀⠀⡀⠀⠀⠇⢸⢿⡄⢸⣿⣿⣿⣿⠻⣇⠘⠹⠊⠉⠻⢿⣶⣽⣄⢱⣹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣏⣵⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⠀⠀⠐⠀⢸⠀⠸⠸⢹⡼⠸⣏⣿⣿⡇⠪⣣⡀⠀⠱⡄⠐⣾⡽⣟⣶⡝⢿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⢳⣿⣿⣿⣿⣾⣿⣸⣿⣿⣿⣿⣿⣿",
                "⠀⠀⠀⠀⢸⠀⠀⠀⢻⣷⢷⡽⣞⣿⣷⠀⠀⠁⠀⠘⣿⣶⣿⣿⣿⣿⣿⣯⣿⣾⣿⣿⢟⣽⣾⣿⣿⣿⣿⢻⣿⣿⣿⣳⣾⣿⣽⣿⡘⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⠀⠀⠀⠀⠘⣇⠀⠀⠀⠇⡹⣿⣿⡮⠙⠀⠀⠀⠀⠀⢸⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠷⣫⣿⣯⣾⢏⣿⣿⣿⡧⣷⣗⡿⣿⣿⡿⢼⣿⣿⣿⣿⣿⣿⣿⣿",
                "⠀⠀⠀⠀⠀⠘⠧⡀⠀⠘⡜⠈⠙⢿⣄⢄⠀⠀⠁⠀⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣹⣿⣿⣟⣻⣯⣿⣿⡛⠷⢫⢑⣤⣿⣿⢳⣮⣿⢼⣿⣿⣿⣿⣿⣿",
                "⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠳⠵⡠⠀⡀⠀⠘⢽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⡍⢯⣾⣻⣿⣿⢵⣿⣾⢻⣣⢿⣿⣧⣿⣿⣿⣿⣿⠟⠁",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠁⠈⠻⣿⣿⣭⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣻⡿⣫⣾⣿⣿⣝⣷⡣⣩⣿⣿⣿⣿⣿⣿⡟⠍⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣫⣾⣿⣿⢿⣿⣿⣿⣟⣾⣿⣿⣿⡿⢋⠌⠂⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⠟⣩⣾⣿⣿⣿⣿⣿⡾⡿⣿⣻⣿⣿⣿⣿⡇⠊⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⠟⠋⠀⢸⣿⣿⣿⣿⣿⣿⠿⠿⠿⠿⡻⡿⠋⡓⣿⣇⡀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⠟⠛⠉⠉⠀⠀⠠⠀⠐⡺⢲⢗⠛⠓⠉⠛⠻⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣤⣶⢰⣶⣾⣿⣿⣿⣷⣶⣶⣤⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⢠⣿⣿⠿⠛⠉⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣾⣿⣷⣶⣲⣦⣤⢤⣴⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣾⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⣤⣄⣲⣾⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣞⡿⣿⣿⣿⣧⡀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣯⣿⣿⡿⠛⡉⣡⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣄⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⡿⣫⢖⠜⠉⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿",
            },

            {
                "⣿⣿⣿⣿⣿⣿⡿⠋⠁⠀⠀⠀⢀⣾⡿⠋⠉⠁⢠⣿⠏⢁⣿⣿⣿⠏⠉⢸⣿⡏⠉⢻⣿⣿⡇⠈⠙⢿⣿⣿⣿⣷⡆⠀⠀⢇⠢⣈⡒⡤",
                "⣿⣿⣿⣿⣿⣏⣴⡇⠀⠀⠀⢠⡿⠋⠀⠀⠀⣰⣿⠋⠀⣼⣿⣿⠏⠀⠀⡾⣿⠁⠀⠀⣿⣿⣷⠀⠀⠀⠹⣿⣿⣿⣿⣄⢀⣿⣷⣿⣶⣶",
                "⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⢠⡟⠁⠀⠀⠀⢰⣿⠇⠀⢰⣿⣿⡷⠀⣀⣜⣁⣻⣀⣀⣀⣸⢻⣿⡇⠀⠀⠀⠘⣿⣿⣷⠹⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⠃⠀⠀⣠⣿⠀⠀⠀⠀⢠⣿⡏⠀⢀⣿⣿⡿⠛⣩⣿⠿⠛⢻⡏⠉⠉⢹⠉⢿⣿⡀⠀⠀⠀⠹⣿⣿⡆⠙⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⡏⠀⠀⣰⣿⡟⠀⠀⠀⢀⣾⣿⠀⠀⣸⣿⡿⢥⣶⠝⠁⠀⠀⠀⡇⠀⠀⡜⠰⡀⢻⡇⠀⠀⠀⠀⢿⣿⣿⠀⠸⣿⣿⣿⡿",
                "⣿⣿⢿⣿⣿⡃⠀⣼⣿⣿⡇⣀⣀⣤⣾⣿⡇⠀⠰⣼⡟⣠⠎⠁⠀⢀⣠⠔⠁⢹⣀⣠⣧⣶⣦⣤⣷⣤⣤⣠⣤⠼⣿⣿⡆⠀⢹⣿⣿⣿",
                "⣿⣿⣿⣿⣿⠀⣼⣿⣿⣿⣏⣁⣼⣿⣿⣿⠀⢠⣾⣟⡔⠁⠀⠀⠀⢸⠁⠀⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⣿⣿⣇⠀⠀⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣸⣿⣿⣿⣿⣟⣹⣿⣿⣿⡿⣴⣿⡿⠋⠀⠀⠀⠀⠀⠀⢰⣾⢟⣻⡿⠛⢻⢋⣻⣏⣱⠞⠙⣄⡀⠀⣿⡽⣿⠀⠀⢸⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠉⢘⡅⠚⠋⠉⠁⠀⠀⠀⠀⣔⣾⢏⢦⢄⣿⣧⣿⡆⠀⠈⣿⣿",
                "⣿⣿⣿⣿⣿⡿⢸⣿⣿⣿⡿⢻⣿⣿⡿⠋⠀⠀⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡾⠟⠉⠀⢂⢻⣿⣿⣿⡇⠀⠀⢽⣿",
                "⣿⣿⣿⣿⣿⢃⣿⣿⣿⣿⣷⣿⣿⣿⣿⡷⠀⠀⡸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠉⠀⢀⣠⣾⣟⡖⢻⣿⣿⠃⠀⠀⣿⣿",
                "⣿⣿⣿⣿⣟⣼⣿⣿⣿⣿⣿⣿⠟⣻⠿⠓⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡤⠾⠿⠛⠉⠁⢰⢸⣿⡿⠀⠀⠀⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⠋⠰⢟⣿⠌⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⠇⠀⠀⢠⡇⣿",
                "⣿⣿⣿⣿⣿⣿⣏⠓⠓⠚⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠿⠿⠿⢾⣿⡟⠀⠀⠀⣼⠃⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣷⢦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡤⠤⠤⠤⠤⠤⠄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⡿⠀⠀⠀⣰⠏⢰⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⡀⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⣠⢚⣡⣴⣾⣿⣿⣿⣿⡿⠿⢿⠀⠀⠀⠀⠀⠀⠀⠀⣼⡿⠁⠀⠀⣰⠏⣠⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣧⣤⣴⡾⠋⠀⠀⠀⠀⠀⠀⠀⣃⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⡸⠀⠀⠀⠀⠀⠀⠀⣼⣿⣃⠤⠚⠚⠉⠉⠉⠙⠛",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⠉⠀⢀⡄⠀⠀⠀⠀⠀⠀⠙⢽⣿⠿⠋⠉⠁⠀⢠⡆⢰⠃⠀⠀⠀⠀⠀⠀⣼⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣴⡿⠁⠀⠀⠀⠀⠀⠀⠀⠈⢯⠀⠀⠀⠀⢀⡞⢠⠋⠀⠀⠀⠀⠀⢀⣾⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⣿⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡄⠀⠀⠀⣸⢠⠃⠀⠀⠀⠀⠀⢠⣾⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⣿⡆⢠⠉⢿⣿⣿⡟⣿⣿⣿⣿⣿⣷⣤⡀⠀⠀⠀⠀⠀⠀⠀⠳⡀⠀⠀⡇⠇⠀⠀⠀⠀⠀⣠⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⣿⣿⣼⠀⠈⢿⣿⡇⢹⣿⣿⣿⣿⣿⣿⣿⡗⠤⣀⠀⠀⠀⠀⠀⠑⢄⣀⡞⠀⠀⠀⠀⢀⣴⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⣿⣿⣿⣷⠀⠀⠹⢇⠀⢻⣿⣿⣿⣿⣿⣿⣧⠀⠈⠻⣷⣦⣤⣀⡀⠀⠉⠀⠀⠀⣀⡴⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⣿⣿⣿⠟⠀⠀⠀⠈⠳⣄⢻⣿⣿⣿⣿⣿⣿⣆⠀⠀⠈⠻⢿⣿⣿⣿⣷⣶⣴⣾⣿⣿⣿⣿⡿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⣿⣿⣿⣄⠀⠀⠀⠀⠀⠈⠳⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⠉⡿⢿⣿⣿⣿⣿⣿⣿⣿⡿⢱⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            },

            {
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣶⣶⣦⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠤⣄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣤⣤⣤⣶⣦⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠘⢯⣗⣲⣤⣠⣤⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠋⠉⠀⠀⠀⠀⠀⢀⡤⠖⠚⠉⠉⠉⠉⠙⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⣠⣤⣶⣶⣶⡆⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⠛⠀⠀⠀⢀⡀⠀⠀⠐⠚⠁⣀⠀⠀⠀⣴⠚⠉⠀⠀⠀⠉⠻⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⣤⣾⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⡿⠛⠁⠀⠀⢀⡴⠋⠀⠀⠀⢀⣠⠚⠁⢀⣴⠖⠁⠀⢰⠀⢰⡀⠀⠀⠈⠻⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀",
                "⠀⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⡟⠁⠀⠀⠀⠀⠀⠀⢸⣿⣿⡟⠑⠀⠀⠀⣠⠟⠀⠀⠀⠀⣠⠞⠁⠀⣠⠞⠁⠀⠀⢠⡟⠀⢸⣧⠀⠀⢀⠀⠈⢿⣿⣿⠀⠀⠀⠀⠀⠀",
                "⠀⠀⣠⣿⣿⣿⣿⣿⣿⣿⠋⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⠏⠀⠀⠀⠀⣰⠋⠀⠀⠀⢠⡾⠃⠀⢀⣴⠋⠀⠀⠀⣴⢿⠃⠀⡎⠹⣧⠀⠈⣷⡀⠈⣿⡇⠀⠀⠀⠀⠀⠀",
                "⠀⢰⣿⣿⣿⣿⣿⣿⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀⣰⣶⠇⠀⠀⢀⡇⣰⠇⡔⠀⠀⣰⡟⠁⠀⣠⣾⠃⠀⠀⢀⡞⢁⡟⠀⣼⠁⠀⢻⡦⠄⠸⣷⠀⢹⣸⠀⠀⠀⠀⠀⠀",
                "⠀⣾⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⡏⠀⠀⠀⣼⢁⣏⡞⠀⢀⣼⠏⠀⣴⡿⢣⠏⠀⢀⣾⠋⠀⡼⠁⣼⠃⠀⠀⢸⣷⢤⣤⣿⠀⠈⣿⠀⠀⠀⠀⠀⠀",
                "⢰⣿⣿⣿⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⠀⠐⠀⢰⠇⡾⠺⣄⣰⠋⡏⣠⣾⡟⠁⡞⠀⣰⣿⠃⠀⣰⢃⡼⠁⠀⠀⠀⢸⢳⡶⠒⣿⠀⠀⣿⠀⠀⠀⠀⠀⠀",
                "⢸⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠶⠋⣾⡈⢠⣄⣀⣸⣰⡇⢀⡼⠙⢾⣴⣫⠏⠀⢠⠇⡴⠁⠃⠀⣰⣧⠞⠁⠀⠀⠀⠀⢸⠀⡇⠀⡇⠀⢀⢸⡀⠀⠀⠀⠀⠀",
                "⢸⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⡇⢸⣿⣿⠛⣿⣿⠿⢷⣶⣿⣶⣿⣭⣶⣾⣿⣁⣀⡀⣼⣽⡧⠶⠒⠉⠉⠉⠀⡎⢰⡇⢸⠁⠀⡞⢸⠀⠀⠀⠀⠀⠀",
                "⠸⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡇⢸⣿⣿⡀⢹⡟⢀⠀⣿⡏⢸⣿⣿⠏⠉⣿⣿⣿⡿⢿⣿⡿⠿⣶⣶⣶⣶⣾⣥⣼⣇⣞⣆⣸⠁⣿⠀⠀⠀⠀⠀⠀",
                "⠀⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⣴⢏⣇⣾⣿⣿⡇⠸⢀⣿⠀⡏⢀⣿⣿⠏⣰⡇⢸⣿⣿⠁⢸⣿⠁⣷⣶⣤⣾⡟⠉⣿⣿⡟⢹⣿⡏⣼⣿⠀⠀⠀⠀⠀⠀",
                "⠀⢸⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀⠀⡼⡃⢸⣿⣿⣿⣿⣇⣀⣼⣿⡇⠀⣼⣿⠋⢀⣉⣉⠀⢿⣿⠀⣸⡟⠀⣉⣉⣹⣿⡇⢰⣿⣿⠃⢸⣿⡿⠋⣿⡆⠀⠀⠀⠀⠀",
                "⠀⠀⠻⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⢠⠞⣹⢡⣿⢻⡏⢹⢿⣿⣟⠛⠻⠿⠿⠿⠷⣶⣿⣿⣿⣦⣸⣯⣀⣿⡇⢀⣿⣿⣿⣿⡇⠸⣿⡿⠀⣾⣿⠁⢰⣿⣷⡀⠀⠀⠀⠀",
                "⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⣶⣴⠏⢀⣧⡿⣿⠸⣿⠸⣎⢻⣿⡻⣄⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠉⠛⠛⠻⠿⠿⠿⢿⣿⣶⣤⣤⣾⣿⣿⢀⣿⠉⢧⡻⠄⠀⠀⠀",
                "⠀⠀⠀⠀⠈⠙⢿⣿⣿⣿⣿⣿⣿⠀⣾⡟⠀⣿⠀⢻⡇⢹⣆⠹⣧⠈⠳⠦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡤⢺⣿⡟⠉⣹⣿⣾⢿⡄⠈⢳⡀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠉⠻⢿⣿⣿⡏⡀⣿⠁⠀⠸⣧⠈⢷⢸⢻⣷⣬⣷⣀⠀⠀⠀⠀⢰⣶⣾⣯⣽⣳⣦⣤⠀⠀⠀⠀⠀⠀⣠⡿⢋⣠⣾⡷⢛⢻⣿⣇⡇⢸⣿⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⢇⠙⠾⣆⠀⠀⠘⢷⣿⡟⢀⡙⢧⣿⣿⣛⠲⠄⠀⠸⣿⡏⠀⠀⢙⣿⡇⠀⠀⠦⠤⢤⣶⣯⣾⢟⣫⡿⠁⣎⡾⠈⣿⢧⡞⢸⠇⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠴⠚⢧⡀⠈⠓⠄⢀⡴⠋⠙⠷⣶⡶⠾⣿⣿⣿⣃⡀⠀⠉⢅⣀⣀⣘⡿⠁⠀⠀⣀⣴⣿⡿⠟⣻⡿⠋⢀⣾⣟⡁⢠⣿⠟⣠⡟⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡏⠀⠀⠀⠉⠓⠶⠦⣤⣀⡠⢤⣀⣈⣽⡳⠯⣿⣿⣿⣿⣾⣄⡀⠀⠀⢀⣀⣤⣶⣿⡿⢟⡥⠴⠾⢥⣤⠞⣻⠋⠀⠙⣿⡵⢟⡁⠻⢤⡀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⢹⠀⠀⢠⠀⠀⠀⠀⣀⣀⡉⠛⡿⠋⠀⣿⣄⢸⡿⣇⠹⣿⣿⣿⣿⣿⣿⣿⣿⠟⠉⠉⣙⣇⠀⠀⠀⠙⡾⠁⠀⠀⣠⠋⠉⢳⡙⠲⣄⠁⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠈⡆⠀⠘⡇⠀⠀⢸⡁⠀⠙⣾⠁⠀⢸⠉⠻⣆⡇⢹⣀⠈⠙⢿⣿⣿⣿⢿⡏⠀⣠⠞⣡⢜⣳⡄⠀⢰⠁⠀⣠⠞⠁⠀⣠⠞⠉⡇⠈⢳⡀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⠀⠸⡄⠀⢹⡀⣤⠒⢧⡀⠀⠈⣇⠀⢸⡀⠀⢹⠇⣼⠉⢙⠦⢄⣈⡉⠀⠼⡄⣼⠃⣴⡟⠋⢹⠇⠀⣼⠀⢠⠇⠀⣠⠾⠁⠀⠀⠛⠀⠀⣷",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠼⡆⠀⠱⡄⠀⡧⢿⡀⠀⠳⡄⠀⠸⡦⠀⢳⣴⣫⠾⠛⣷⣸⡀⠀⢂⠀⠀⠀⣻⣿⣰⠋⠀⠀⣿⠀⠀⠹⠤⢾⣀⡾⠁⢀⡠⠀⠀⠀⠀⠀⡿",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡅⠀⠙⣄⠀⠙⢦⡀⣿⠀⠀⢹⡀⣀⣀⣼⡍⠻⠿⠙⢶⠞⠛⠉⣻⣿⠀⠀⠀⠘⢦⡀⠀⠀⠀⠈⠛⠒⠻⠄⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⠳⠆⠈⠳⠤⠨⠗⠛⠀⠀⠀⠏⠻⠇⠼⠁⠂⠀⠀⠀⠃⠀⠸⠋⠿⠷⠄⠀⠰⠃⠙⠲⠤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            },

            {
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠦⣄⣠⠴⠒⠒⠉⠒⠶⣄⡏⣶⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣠⡞⣡⠀⢠⡀⠀⢦⡀⢹⣷⣼⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⡿⠁⣿⠟⣷⣿⢦⡈⣇⠀⢻⣿⣈⢷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⡇⣶⣻⣀⠘⣿⣀⣹⣿⣰⣼⡟⣯⠟⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⣿⡿⠿⠋⠉⠋⠛⢿⣿⣿⡇⠈⢦⡸⣾⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⠛⣷⣄⠀⠀⠀⠀⣸⠟⠃⠉⠀⠈⢷⣩⡻⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⠹⡄⠈⠙⠒⢤⣴⣾⠉⠁⣀⡀⠀⠀⠀⠹⣟⢮⡳⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⠀⣿⠀⣀⣴⣿⡏⣀⡬⠟⠁⠈⣆⠀⠀⠀⠘⢧⡉⢿⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡿⣿⠀⢻⣫⠉⣽⡟⠉⡅⢀⣆⠀⢠⣿⠀⠀⠀⠀⠀⠹⣦⡉⠻⢦⡀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⢗⣿⢀⡷⠁⣸⡿⠁⠀⠀⢸⣿⠃⣄⣈⡆⠀⠀⠀⠀⠀⠈⠫⣱⠦⣌⡓⢤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣇⣾⣿⢟⡇⢀⣿⡇⠀⢀⣰⢸⡌⢿⣿⢻⡟⣃⠀⠀⠀⠰⡂⠠⠌⠲⢤⣙⣻⠛⠓⠶⢦⡤⣄⣀⡀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣻⣿⠏⣾⠃⢸⢽⡇⠀⡏⠁⡶⠁⠈⣿⣎⡷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⠒⠶⢤⣀⠈⠻⣄⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣴⣿⠟⠁⡼⠀⣿⠀⡟⢸⡇⢰⠃⢸⠇⠀⠀⢹⣷⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣷⣄⠘⣧⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣾⠟⠋⠀⣠⡼⢁⣼⣿⢠⣧⢾⡇⠘⡀⠸⡇⠀⠀⠘⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡉⠚⢧⠹⣷⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⡴⠖⢋⣽⡿⠥⠖⠚⠉⢁⣴⣾⣿⠃⢈⠀⢸⠇⠀⠁⠀⢳⡀⠀⠀⣿⣿⣽⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⠀⠀⠘⢧⡇⠀",
                "⠀⠀⠀⠀⠀⠀⣀⣤⣾⠛⠁⣠⡼⠋⠁⠀⢀⣀⢀⣴⣿⣿⠟⠁⠀⠀⣷⠋⠂⠀⠀⠀⠀⠳⡀⠀⢹⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡿⠀⠀⠀⢸⠧⠀",
                "⠀⠀⢀⡠⠖⠋⣩⠶⢋⡴⠋⠁⠀⠀⠿⣭⡿⣿⠿⠟⢉⣷⣄⠀⢀⣼⣿⡄⠀⠀⠀⠀⠀⢀⣹⠄⠀⢹⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠃⠀⠀⠀⠀⠐⡧",
                "⠀⠀⣸⣄⣴⣛⣡⠞⠋⠀⠀⠀⠀⠀⠀⠀⣭⣤⣴⣾⣿⣿⣿⣷⣿⣿⣿⣷⣤⣴⣶⣾⣿⣿⣿⣆⠀⢈⣿⣷⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⢑",
                "⠀⠰⣏⡿⢫⡞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣹⠿⠿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⢀",
                "⠀⢀⣿⡵⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⣿⣿⣿⣿⣿⣿⣿⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⠛⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⢀⡜⠀⠀⠀⠀⠀⠀⢀⠎",
                "⢠⢸⡟⠹⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡧⠤⢙⠛⠋⠛⠛⠿⠿⢿⡟⠛⠉⠁⠀⠀⠀⠀⠀⠠⠐⠀⠀⠀⠀⠀⠀⠀⢀⡼⢀⠀⠄⠀⠀⡀⡀⠀⠀",
                "⢸⣎⡇⠀⠳⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢷⠀⡀⢰⡅⠀⠀⠀⠀⠀⡝⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⡿⢋⠞⠀⢠⣮⠎⠀⠀⠀",
                "⠀⢿⣷⠀⠀⠈⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣶⣿⣇⠀⠀⠀⠀⣰⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡾⠋⣠⠋⢀⣴⠟⠁⠀⠀⠀⠀",
                "⠀⠘⣏⢧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⢹⣻⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⠟⢡⠞⣁⣴⠟⠁⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠸⡄⠳⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠳⢄⡀⠀⠀⠘⣿⣿⡯⢶⢧⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡾⢁⣴⠿⠚⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠹⡄⠙⢦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠢⣄⠈⢿⣿⡯⣝⣾⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⡯⢖⡿⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠹⡄⠀⠑⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⢻⣿⣿⣽⣿⡇⠀⠀⠀⠀⠀⠀⠀⣀⣀⣤⢴⣶⠿⠋⠁⣰⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠘⢦⡀⠀⠙⠢⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣻⢿⣿⡍⠑⠒⠒⣒⣾⣷⠿⠛⣋⡵⠚⠁⠀⣠⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠙⠢⣄⡀⠀⠙⠓⠒⠀⠀⣀⡀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⣷⡚⠛⠉⠁⠀⠀⠐⠋⢀⡀⢀⡤⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠙⠋⠛⠛⣹⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠛⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣻⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⢿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⡏⠸⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⠁⠀⢹⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⡏⠀⠀⠈⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⠀⠀⠀⠀⢼⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⠀⠀⠀⠀⣼⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⣿⣿⣿⠀⠀⠀⢀⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⡆⠀⠀⣾⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣷⠀⠀⠸⣿⣿⣿⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⣿⣻⡇⠀⠀⠈⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣟⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            },

            {
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⣿⠛⢿⣷⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⡖⣾⣷⡀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⣯⠄⠀⠹⣿⣿⣿⣷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣧⡈⠁⠈⣿⡇⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣞⣤⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣦⣤⡿⠄⠀⠀⠀⢰⣿⣷⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡟⣠⢀⣤⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣥⠄⠀⡀⢀⣾⣿⣿⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⣀⣀⣀⣀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣏⡀⢻⣿⣿⣿⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣤⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢟⣿⡿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣾⣿⣿⣿⣿⣿⡿⠿⠛⠛⠉⠉⠁⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣿⣟⣻⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⣀⣴⣿⣷⣾⣿⣿⡿⠟⣋⡡⠴⠒⠉⠉⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⠋⣽⡟⢹⣿⣿⣿⣿⣿⡿⠟⠛⠛⠿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⣠⣾⣿⣿⣿⣿⡿⠛⣡⠔⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⣼⠟⣿⣿⣿⣿⣿⡿⠁⢀⡿⠁⢸⣿⣿⣿⡿⠃⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀",
                "⠀⠀⣴⣿⣿⣿⣿⡿⢋⡰⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣼⣿⣿⣿⣿⡟⠀⠀⢸⠇⠀⢸⣿⣿⣿⣧⣀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣯⠀⠀⠀⠀⠀⠀",
                "⠀⣼⣿⣿⣿⣿⢏⡴⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢹⡿⠛⠋⠛⠲⠒⠦⡀⠀⠀⢸⣿⣿⡿⠋⣽⣷⡦⡀⠀⠀⠀⣼⣿⣿⡿⣿⣷⡄⠀⠀⠀⠀",
                "⢰⣿⣿⣿⣿⣱⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡟⠀⠀⠀⠀⠀⠘⡄⠈⠀⠀⠘⠋⠉⠀⣤⣿⣿⣿⣶⣤⣴⣾⣿⣿⡿⢡⠹⣿⣿⡄⠀⠀⠀",
                "⢸⣿⣿⣿⠿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣷⣄⡀⠀⠀⠀⠀⠰⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣱⠃⠀⠹⣿⣿⡀⠀⠀",
                "⢸⣿⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣾⣧⡠⡀⣠⣶⣦⢄⣀⡀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⡿⢋⡴⠁⠀⠀⠀⢻⣿⣷⠀⠀",
                "⠈⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠤⠖⠒⠒⠛⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣾⣯⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⡔⠉⠀⠀⠀⠀⠀⢸⣿⣿⡇⠀",
                "⠀⠘⣿⣿⣆⠀⠀⠀⠀⠀⠀⣀⡴⠊⠁⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⠿⠿⢛⣿⣿⣿⣿⢁⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢁⠞⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⠀",
                "⠀⠀⠘⢿⣿⡧⠀⠀⠀⣠⣾⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡼⣷⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⣡⠔⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⡇",
                "⠀⠀⠀⠈⠛⠏⠀⣠⣾⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⢀⡠⠒⢩⣷⣿⣿⠿⠟⠛⠿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⡰⠊⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⡇",
                "⠀⠀⠀⠀⠀⢠⣾⣿⣿⣿⣿⣿⣷⣤⣀⣀⣠⠔⠊⠁⠀⠀⢻⡿⠋⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿⡿⢋⡴⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣇",
                "⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⢻⣧⠀⠀⠀⠀⠀⡿⠁⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⡽⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡿⣿⣿",
                "⠀⠀⠀⠀⠀⠸⣿⣿⣿⣿⣿⠿⢋⠴⠊⠙⣿⣄⠀⠀⠀⢠⠁⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⣶⣿",
                "⠀⢠⣴⣿⠀⠀⠹⡿⠿⢛⡥⠚⠁⠀⠀⠀⠹⢿⣿⣶⡒⣻⡀⠀⠀⠀⠀⠀⠀⣰⣰⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⡟",
                "⠀⣿⣿⣿⠀⠀⠀⠈⠉⠁⠀⠀⠀⠀⠀⠀⣠⣼⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⣠⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⡇",
                "⠀⠸⣿⣿⣦⣀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣿⣿⣿⡿⠛⣿⣿⣿⣿⣿⣷⣶⣾⠃⢸⡿⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⣿⣿⣿⣿⣿⡿⠀",
                "⠀⠀⠹⣿⣿⣿⣿⣶⣶⣶⣶⣾⣿⣿⣿⣿⠟⢉⠀⣸⣿⣿⣿⣿⣿⣿⣿⣧⣶⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⠃⠀",
                "⠀⠀⠀⠈⠻⣿⣿⠿⣿⡿⠿⠟⠛⡫⠭⠖⠂⠁⢠⣿⣿⣿⣿⣿⣿⣿⣿⠉⣟⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢀⣀⣤⣶⣿⣿⣿⣿⣿⣿⡿⣻⠃⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠈⠉⠒⠒⠊⠁⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⠀⠹⠟⠁⠀⠀⠀⠀⠀⠀⠀⠠⣄⣠⣬⣽⣿⣿⣿⣿⣿⣿⣿⠿⢋⠔⠁⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⠿⣻⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⢭⣙⠛⠛⠛⠛⠛⠛⢉⡤⠖⠁⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠮⠭⠼⠊⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⠛⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀",
            },
        }

        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        local function pick_color()
            local colors = {"String", "Identifier", "Keyword", "Number"}
            return colors[math.random(#colors)]
        end

        local function getRandomBanner()
            local randomIndex = math.random(1, #A)
            return A[randomIndex]
        end

        math.randomseed(os.time())
        
        dashboard.section.header.val = getRandomBanner()

        dashboard.section.header.opts.hl = pick_color()
        dashboard.section.buttons.opts.hl = pick_color()
        dashboard.section.footer.opts.hl = pick_color()

        dashboard.section.buttons.val = {
            dashboard.button("gc", "   Git commits", "<cmd>:Telescope git_commits<CR>"),
            dashboard.button("ee", "   Open explorer", "<cmd>:Neotree float<CR>"),
            dashboard.button("ff", "   Find File", "<cmd>Telescope find_files<CR>"),
            dashboard.button("fw", "   Find Word", "<cmd>Telescope live_grep<CR>"),
            dashboard.button("wr", "   Restore", "<cmd>SessionRestore<CR>")
        }

        local function get_data()
            local stats = require("lazy").stats()
            local ms = math.floor(stats.startuptime * 100) / 100
            return "🚀 Lazy-loaded " .. stats.loaded .. " plugins in " .. ms .. "ms"
        end

        dashboard.section.footer.val = get_data()
        alpha.setup(dashboard.opts)

        vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
    end
}
