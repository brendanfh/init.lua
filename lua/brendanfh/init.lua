require "brendanfh.settings"
require "brendanfh.mappings"
require "brendanfh.lazy_setup"

local BrendanfhGroup = vim.api.nvim_create_augroup("Brendanfh", {})

vim.api.nvim_create_autocmd('LspAttach', {
    group = BrendanfhGroup,
    callback = function(e)
        local opts = { buffer = e.buf }
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
        vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
        vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    end
})

-- local function SwitchExFile()
--     local filename = vim.api.nvim_buf_get_name(0)
--     if filename:match "%.ex" then
--         vim.cmd('e ' .. filename:sub(1, -4) .. '.html.heex')
--     elseif filename:match "%.html.heex" then
--         vim.cmd('e ' .. filename:sub(1, -11) .. '.ex')
--     end
-- end
-- 
-- vim.api.nvim_create_user_command("SwitchExFile", SwitchExFile, { nargs = 0 })
-- 
-- vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"} , {
--     pattern = {"*.ex", "*.heex"},
--     callback = function(e)
--         local opts = { buffer = e.buf }
--         vim.keymap.set("n", "<leader>hh", SwitchExFile, opts)
--     end
-- })

