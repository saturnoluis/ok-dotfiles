-- ===================================================================================
-- Plugin: which-key.nvim
-- About:  Remember your Neovim keymaps, by showing available keybindings.
-- Source: https://github.com/folke/which-key.nvim
-- ===================================================================================

return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
}
