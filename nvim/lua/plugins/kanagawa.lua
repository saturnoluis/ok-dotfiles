-- ===================================================================================
-- Plugin: kanagawa.nvim
-- About:  Colorscheme inspired by the famous painting by Katsushika Hokusai
-- Source: https://github.com/rebelot/kanagawa.nvim
-- ===================================================================================

return {
	"rebelot/kanagawa.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("kanagawa").setup({
			undercurl = true,                  -- enable undercurls
			commentStyle = { italic = true },  -- set comment style
			functionStyle = { italic = true }, -- set function style
			keywordStyle = { italic = true },  -- set keyword style
			statementStyle = { bold = true },  -- set statement style
			theme = "dragon",                  -- Load "wave" theme
			background = {
				dark = "dragon",
				light = "lotus"
			},
			colors = {
				palette = {
					-- #0A0A0A matches kitty's kanagawa background color
					sumiInk0 = "#0A0A0A",
					dragonBlack3 = "#0A0A0A",
				},
			},
		})
	end,
}
