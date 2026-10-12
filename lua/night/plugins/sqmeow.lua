return {
    "2giosangmitom/sqmeow.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
    version = "*",
    build = function()
        require("sqmeow").install()
    end,
    opts = {},
    cmd = "Sqmeow",
}
