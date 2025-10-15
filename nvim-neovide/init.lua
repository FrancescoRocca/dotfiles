require("config.lazy")

vim.opt.clipboard = 'unnamedplus'
vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.relativenumber = false
vim.opt.number = true
vim.opt.termguicolors = true

--[[
vim.keymap.set("n", "<leader>F", function()
	require("conform").format({ async = true })
end, { desc = "Format file" })
]]

vim.keymap.set("n", "<leader>n", ":BufferLineCycleNext<CR>", { desc = "Go to the next buffer" })
vim.keymap.set("n", "<leader>b", ":BufferLineCyclePrev<CR>", { desc = "Go to the previous buffer" })
vim.keymap.set("n", "<leader>q", ":bd<CR>", { desc = "Close current buffer" })
