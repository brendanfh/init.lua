vim.keymap.set("n", "<leader>cl", function() vim.o.background = "light" end)
vim.keymap.set("n", "<leader>cd", function() vim.o.background = "dark" end)

-- vim.cmd "hi Normal guibg=None"

return {
    { "rebelot/kanagawa.nvim"},

    { "Mofiqul/vscode.nvim"},

    { "yorik1984/newpaper.nvim" },

    -- { "iagorrr/noctis-high-contrast.nvim" },

    -- { "CantoroMC/nvim-nightmare" },

    -- { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

    -- { "miikanissi/modus-themes.nvim" },

    { "EdenEast/nightfox.nvim" },

    {
        "RedsXDD/neopywal.nvim",
        name = "neopywal",
        lazy = false,
        priority = 1000,
        opts = {},

        config = function() require "neopywal".setup {} end
    },

    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require "tokyonight" .setup {
                style = "night",
                light_style = "day",
                transparent = true,
                terminal_colors = true
            }
        end
    },
}
