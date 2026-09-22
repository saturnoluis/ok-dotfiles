-- ===================================================================================
-- Plugin: nvim-tree 
-- About:  File explorer
-- Source: https://nvim-tree.com/
-- ===================================================================================

return {
	"nvim-tree/nvim-tree.lua",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	keys = {
        {
            "<leader>e",
            ":NvimTreeToggle<CR>",
            desc = "Explore files",
        },
    },
	config = function()
		require("nvim-tree").setup {}
	end,
}
