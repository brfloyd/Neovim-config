require("brett.core")
require("brett.lazy")

-- Use the system clipboard for yank, delete, change and put operations
vim.o.clipboard = "unnamedplus"

-- views can only be fully collapsed with the global statusline
vim.opt.laststatus = 3
-- Default splitting will cause your main splits to jump when opening an edgebar.
-- To prevent this, set `splitkeep` to either `screen` or `topline`.
vim.opt.splitkeep = "screen"

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
