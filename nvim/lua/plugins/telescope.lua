-- telescope.nvim is a highly extendable fuzzy finder over lists.
-- https://github.com/nvim-telescope/telescope.nvim
return {
    'nvim-telescope/telescope.nvim',
	dependencies = { 'nvim-lua/plenary.nvim' },
	opts = {
		defaults = {
			layout_strategy = "vertical",
			layout_config = { prompt_position = "top" },
			sorting_strategy = "ascending",
			winblend = 0,
		},
	},
}
