-- ===================================================================================
-- Plugin: flash
-- About:  Navigate your code with search labels
-- Source: https://github.com/folke/flash.nvim
-- ===================================================================================

return {
	"folke/flash.nvim",
	event = "VeryLazy",
	keys = {
		{
			"f",
			function() require("flash").jump() end,
			mode = { "n", "x", "o" },
			desc = "Search and navigate the code"
		},
	},
}
