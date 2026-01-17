-- ===================================================================================
-- Plugin: nvim-emmet
-- About:  Integration between Neovim and emmet-language-server.
-- Source: https://github.com/olrtg/nvim-emmet
-- ===================================================================================

return {
	"olrtg/nvim-emmet",
	event = "VeryLazy",
	keys = {
		{
			"<leader>em",
			function() require("nvim-emmet").wrap_with_abbreviation() end,
			mode = { "n", "v" },
			desc = "Use emmet to wrap with HTML tag"
		},
	},
}
