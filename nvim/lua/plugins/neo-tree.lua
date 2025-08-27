-- ===================================================================================
-- Plugin: neo-tree.nvim
-- About: Browse the file system and other tree like structures.
-- Link: https://github.com/nvim-neo-tree/neo-tree.nvim
-- ===================================================================================

return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	lazy = false,
	opts = {
		window = {
			position = "float",
			mappings = {
				["<tab>"] = "open",
			},
		},
		filesystem = {
			filtered_items = {
				hide_dotfiles = false,
				hide_gitignored = false,
				hide_hidden = false,
			},
		},
	},
	keys = {
		{
			"<leader>p",
			"<cmd>Neotree reveal<CR>",
			desc = "Reveal current file in explorer",
		},
		{
			"<leader>P",
			"<cmd>Neotree toggle<CR>",
			desc = "Toggle file explorer",
		},
		{
			"<leader>b",
			"<cmd>Neotree buffers<CR>",
			desc = "Show buffer list",
		},
	},
}
