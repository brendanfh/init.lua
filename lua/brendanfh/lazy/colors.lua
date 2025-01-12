vim.keymap.set("n", "<leader>cl", function() vim.o.background = "light" end)
vim.keymap.set("n", "<leader>cd", function() vim.o.background = "dark" end)

-- vim.cmd "hi Normal guibg=None"

return {
    { "rebelot/kanagawa.nvim" },

    { "iagorrr/noctis-high-contrast.nvim" },

    { "CantoroMC/nvim-nightmare" },

    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

    { "EdenEast/nightfox.nvim" },

    {
        "miikanissi/modus-themes.nvim",
        config = function()
            vim.cmd.colorscheme "kanagawa"
            -- vim.cmd.colorscheme "nightmare"
            -- vim.cmd.colorscheme "noctishc"
        end
    }
}
