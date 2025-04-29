vim.keymap.set("n", "<leader>cl", function()
    -- vim.cmd.colorscheme "newpaper"
    vim.cmd.colorscheme "xcodelight"
    -- vim.cmd.colorscheme "flexoki-light"
    vim.o.background = "light"
    -- vim.cmd "hi Normal guibg=None"
end)

vim.keymap.set("n", "<leader>cd", function()
    vim.cmd.colorscheme "catppuccin-mocha"
    -- vim.cmd.colorscheme "xcodedarkhc"
    -- vim.cmd.colorscheme "kanagawa-dragon"
    vim.o.background = "dark"
    -- vim.cmd "hi Normal guibg=None"
end)


return {
    {
        "rebelot/kanagawa.nvim",
        lazy = false,
        priority = 1000,
    },

    {
        "kepano/flexoki-neovim", name = "flexoki", lazy = false, priority = 1000,
    },

    -- { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },

    -- { "Mofiqul/vscode.nvim"},

    -- { "yorik1984/newpaper.nvim" },

    -- { "iagorrr/noctis-high-contrast.nvim" },

    -- { "CantoroMC/nvim-nightmare" },

    {
        "catppuccin/nvim", name = "catppuccin", priority = 1000,
        config = function()
            vim.cmd.colorscheme "catppuccin-mocha"
        end
    },

    -- { "miikanissi/modus-themes.nvim" },

    -- { "EdenEast/nightfox.nvim" },

    { "lunacookies/vim-colors-xcode" },

    -- {
    --     "RedsXDD/neopywal.nvim",
    --     name = "neopywal",
    --     lazy = false,
    --     priority = 1000,
    --     opts = {},

    --     config = function() require "neopywal".setup {} end
    -- },

    -- {
    --     "folke/tokyonight.nvim",
    --     lazy = false,
    --     priority = 1000,
    --     config = function()
    --         require "tokyonight" .setup {
    --             style = "night",
    --             light_style = "day",
    --             transparent = true,
    --             terminal_colors = true
    --         }
    --     end
    -- },
}
