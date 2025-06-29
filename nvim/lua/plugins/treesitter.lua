-- nvim-treesitter: https://github.com/nvim-treesitter/nvim-treesitter
-- Programming language parser and syntax highlighter for nvim

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
			"html",
			"javascript",
			"jsdoc",
			"json",
			"lua",
			"markdown",
			"python",
			"scss",
			"typescript",
			"vim",
		},
		highlight = {
			enable = true,
		},
		indent = {
			enable = true,
		};
	},
}
