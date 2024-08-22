return {
    'echasnovski/mini.nvim',
    version = '*',
    lazy = false,

    config = function()
        require('mini.statusline').setup()
        require('mini.starter').setup {
            footer = "",
        }

        local minifiles = require "mini.files"
        minifiles.setup()

        vim.keymap.set("n", "<leader>fb", minifiles.open, {})
    end
}
