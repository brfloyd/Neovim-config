return {
	{
		"AlexvZyl/nordic.nvim",
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			require("nordic").setup({
				bold_keywords = true,
				transparent = {
					bg = false,
					float = false,
				},
			})
			-- load the colorscheme here
			vim.cmd([[colorscheme nordic]])
		end,
	},
}
