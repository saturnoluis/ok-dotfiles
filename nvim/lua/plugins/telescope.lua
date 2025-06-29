-- telescope: https://github.com/nvim-telescope/telescope.nvim
-- A highly extendable fuzzy finder over lists.

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
