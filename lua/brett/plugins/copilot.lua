-- copilot.lua

return {
	"github/copilot.vim",
	config = function()
		-- Avoid <Tab> conflicts with nvim-cmp/LuaSnip.
		vim.g.copilot_no_tab_map = true
		vim.keymap.set("i", "<M-l>", 'copilot#Accept("<CR>")', { silent = true, expr = true, replace_keycodes = false })

		local function toggle_copilot()
			if vim.g.copilot_enabled == nil or vim.g.copilot_enabled == 1 then
				vim.g.copilot_enabled = 0
				vim.cmd('echohl WarningMsg | echo "Copilot Disabled" | echohl None')
			else
				vim.g.copilot_enabled = 1
				vim.cmd('echohl ModeMsg | echo "Copilot Enabled" | echohl None')
			end
		end

		vim.keymap.set("n", "<leader>cp", toggle_copilot, { noremap = true, silent = true, desc = "Toggle Copilot" })
	end,
}
