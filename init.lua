require("brett.core")
require("brett.lazy")

-- Use the system clipboard for yank, delete, change and put operations
vim.o.clipboard = "unnamedplus"

-- Map copy to system clipboard
vim.api.nvim_set_keymap("v", "<C-c>", '"+y', { noremap = true, silent = true })

-- Map paste from system clipboard
vim.api.nvim_set_keymap("n", "<C-v>", '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-v>", '"+p', { noremap = true, silent = true })

-- Sets The Line Numbering Mode So it doesent jump around as  you move.

vim.opt.number = true
vim.opt.relativenumber = false

-- Set no Line numbering in the file tree

require("nvim-tree").setup({
	view = {
		number = false,
		relativenumber = false,
	},
})
