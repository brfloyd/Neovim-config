-- ~/.config/nvim/lua/plugins/avante.lua
return {
	"yetone/avante.nvim",
	event = "VeryLazy",
	build = "make",
	opts = {
		-- add any specific options here
	},
	dependencies = {
		"nvim-tree/nvim-web-devicons", -- or echanosvki/mini.icons
		"stevearc/dressing.nvim",
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		-- Optional, for rendering markdown content of the chat history
		{
			"MeanderingProgrammer/render-markdown.nvim",
			opts = {
				file_types = { "markdown", "Avante" },
			},
			ft = { "markdown", "Avante" },
		},
	},
}
