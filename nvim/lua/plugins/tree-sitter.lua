-- ===================================================================================
-- Plugin: nvim-treesitter
-- About:  Simple and easy way to use the interface for tree-sitter in Neovim
-- Source: https://github.com/nvim-treesitter/nvim-treesitter
-- ===================================================================================

return {
	"nvim-treesitter/nvim-treesitter",

	build = ":TSUpdate",
	event = { "BufReadPost", "BufNewFile" },
	lazy = false,
	main = "nvim-treesitter.configs",
	opts = {
		ensure_installed = {
			"bash",
			"c",
			"cpp",
			"css",
			"dockerfile",
			"html",
			"javascript",
			"jsdoc",
			"json",
			"lua",
			"markdown",
			"python",
			"scss",
			"svelte",
			"typescript",
			"vim",
			"vue",
			"yaml",
		},
		auto_install = true,
		sync_install = false,
		highlight = {
			enable = true,
			additional_vim_regex_highlight = false,
		},
		indent = {
			enable = true,
		};
	},
}
