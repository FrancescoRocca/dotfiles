require("config.lazy")

vim.opt.clipboard = 'unnamedplus'
vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.relativenumber = false
vim.opt.number = true
vim.opt.termguicolors = true

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep files" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help tags" })

vim.keymap.set("n", "<leader>F", function()
	require("conform").format({ async = true })
end, { desc = "Format file" })

vim.keymap.set("n", "<leader>n", ":BufferLineCycleNext<CR>", { desc = "Go to the next buffer" })
vim.keymap.set("n", "<leader>b", ":BufferLineCyclePrev<CR>", { desc = "Go to the previous buffer" })
vim.keymap.set("n", "<leader>q", ":bd<CR>", { desc = "Close current buffer" })
