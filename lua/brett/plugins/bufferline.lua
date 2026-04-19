return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	opts = {
		options = {
			-- Show file buffers as tabs so each opened file gets its own tab item.
			mode = "buffers",
			separator_style = "thick",
		},
	},
}
