return {
    "theprimeagen/harpoon",
    branch="harpoon2",

    config = function()
        local harpoon = require "harpoon"

        harpoon:setup()

        vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
        vim.keymap.set("n", "<leader>hh", function() harpoon:list():prev() end)
        vim.keymap.set("n", "<leader>ll", function() harpoon:list():next() end)
        vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

        vim.keymap.set("n", "<leader>7", function() harpoon:list():select(1) end)
        vim.keymap.set("n", "<leader>8", function() harpoon:list():select(2) end)
        vim.keymap.set("n", "<leader>9", function() harpoon:list():select(3) end)
    end
}
