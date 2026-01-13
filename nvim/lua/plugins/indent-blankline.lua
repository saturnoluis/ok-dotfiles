-- ===================================================================================
-- Plugin: indent-blankline
-- About:  Indent guides for Neovim using virtual text
-- Source: https://github.com/lukas-reineke/indent-blankline.nvim
-- ===================================================================================

return {
	"lukas-reineke/indent-blankline.nvim",
	event = { "BufReadPost", "BufNewFile" },
	main = "ibl",
	opts = {
		indent = {
			char = "│",
		},
		scope = {
			enabled = true,
			show_start = true,
			show_end = true,
		},
	},
}
