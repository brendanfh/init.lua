return {
    { "rebelot/kanagawa.nvim" },

    { "iagorrr/noctis-high-contrast.nvim" },

    { "CantoroMC/nvim-nightmare" },

    {
        "miikanissi/modus-themes.nvim",
        config = function()
            vim.cmd.colorscheme "kanagawa"
            vim.keymap.set("n", "<leader>cl", function() vim.o.background = "light" end)
            vim.keymap.set("n", "<leader>cd", function() vim.o.background = "dark" end)
        end
    }
}
