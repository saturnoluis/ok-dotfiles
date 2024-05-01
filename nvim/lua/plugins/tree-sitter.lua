return {
	"nvim-treesitter/nvim-treesitter",

	build = ":TSUpdate",
	event = "VeryLazy",
	main = "nvim-treesitter.configs",
	opts = {
		ensure_installed = {
			"bash",
			"c",
			"css",
			"go",
			"html",
			"javascript",
			"jsdoc",
			"json",
			"lua",
			"luadoc",
			"markdown",
			"python",
			"scss",
			"svelte",
			"typescript",
			"vim",
			"vimdoc",
		},
		highlight = {
			enable = true,
		},
		indent = {
			enable = true,
		};
	},
}
