return {
    "theprimeagen/harpoon",

    config = function()
        local add_file  = require "harpoon.mark".add_file
        local next_file = require "harpoon.ui".nav_next
        local prev_file = require "harpoon.ui".nav_prev
        local open_ui   = require "harpoon.ui".toggle_quick_menu
        local open_term = require "harpoon.term".gotoTerminal

        vim.keymap.set("n", "<leader>a", add_file, {})
        vim.keymap.set("n", "<leader>hh", prev_file, {})
        vim.keymap.set("n", "<leader>ll", next_file, {})
        vim.keymap.set("n", "<C-e>", open_ui, {})
        vim.keymap.set("n", "<leader>t", function() open_term(1) end, {})

        -- vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
        -- vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
        -- vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
        -- vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)
        -- vim.keymap.set("n", "<leader><C-h>", function() harpoon:list():replace_at(1) end)
        -- vim.keymap.set("n", "<leader><C-t>", function() harpoon:list():replace_at(2) end)
        -- vim.keymap.set("n", "<leader><C-n>", function() harpoon:list():replace_at(3) end)
        -- vim.keymap.set("n", "<leader><C-s>", function() harpoon:list():replace_at(4) end)
    end
}
