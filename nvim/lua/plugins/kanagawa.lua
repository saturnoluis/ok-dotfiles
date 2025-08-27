<<<<<<< HEAD
-- kanagawa: https://github.com/rebelot/kanagawa.nvim
-- NeoVim dark colorscheme inspired by the colors of the famous painting by
-- Katsushika Hokusai
=======
-- ===================================================================================
-- Plugin: kanagawa.nvim
-- About:  Colorscheme inspired by the famous painting by Katsushika Hokusai
-- Source: https://github.com/rebelot/kanagawa.nvim
-- ===================================================================================
>>>>>>> a5b3b82 (add kanagawa theme and neo-tree)

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
					sumiInk0 = "#0D0C0C",
					dragonBlack3 = "#0D0C0C",
				},
			},
		})
	end,
}
