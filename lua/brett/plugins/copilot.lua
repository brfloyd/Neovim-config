-- copilot.lua

return {
	"github/copilot.vim",
	config = function()
		-- Optional: Disable default <Tab> mapping and set a custom keybinding
		vim.g.copilot_no_tab_map = false
		vim.api.nvim_set_keymap("i", "<Tab>", 'copilot#Accept("<Tab>")', { silent = true, expr = true, script = true })

		-- Function to toggle Copilot and show status
		function ToggleCopilot()
			local copilot_status = vim.g.copilot_enabled
			if copilot_status == nil or copilot_status == 1 then
				vim.g.copilot_enabled = 0
				vim.cmd('echohl WarningMsg | echo "Copilot Disabled" | echohl None')
			else
				vim.g.copilot_enabled = 1
				vim.cmd('echohl ModeMsg | echo "Copilot Enabled" | echohl None')
			end
		end

		-- Keymap to toggle Copilot on and off
		vim.api.nvim_set_keymap("n", "<leader>c", ":lua ToggleCopilot()<CR>", { noremap = true, silent = true })
	end,
}
