return {
	"neovim/nvim-lspconfig",

	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"folke/neodev.nvim",
	},

	config = function()
		require("mason-lspconfig").setup {
		    ensure_installed = {
				"bashls",
				"css_variables",
				"cssls",
				"denols",
				"emmet_language_server",
				"html",
				"lua_ls",
				"markdown_oxide",
				"pylsp",
				"somesass_ls",
				"svelte",
				"tailwindcss",
				"ts_ls",
			},
		}

		require("lspconfig").bashls.setup({})
		require("lspconfig").css_variables.setup({})
		require("lspconfig").cssls.setup({})
		require("lspconfig").emmet_language_server.setup({})
		require("lspconfig").html.setup({})
		require("lspconfig").lua_ls.setup({})
		require("lspconfig").markdown_oxide.setup({})
		require("lspconfig").pylsp.setup({})
		require("lspconfig").somesass_ls.setup({})
		require("lspconfig").svelte.setup({})
		require("lspconfig").tailwindcss.setup({})
		require("lspconfig").ts_ls.setup({})
	end
}
