-- nvim-cmp: https://github.com/hrsh7th/nvim-cmp
-- Minimal LSP-only autocompletion for Neovim

return {
	'hrsh7th/nvim-cmp',
	dependencies = {
		'hrsh7th/cmp-buffer',       -- Completion from current buffer (for search and cmdline)
		'hrsh7th/cmp-cmdline',      -- Completion in command-line mode (e.g. ':')
		'hrsh7th/cmp-path',         -- Completion for file paths
		'hrsh7th/cmp-nvim-lsp',     -- Completion from LSP
		'neovim/nvim-lspconfig',    -- Required LSP client setup
	},
	event = 'VeryLazy',
	config = function()
		local cmp = require('cmp')

		cmp.setup({
			mapping = cmp.mapping.preset.insert({
				['<C-b>'] = cmp.mapping.scroll_docs(-4),
				['<C-f>'] = cmp.mapping.scroll_docs(4),
				['<C-Space>'] = cmp.mapping.complete(),
				['<C-e>'] = cmp.mapping.abort(),
				['<Tab>'] = cmp.mapping(function(fallback)
					if cmp.visible() then
						local entry = cmp.get_selected_entry()
						if not entry then
							cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
						end
						cmp.confirm()
					else
						fallback()
					end
				end, { "i", "s" }),
			}),
			sources = cmp.config.sources({
				{ name = 'nvim_lsp' },
			})
		})

		-- Enable completion in `/` and `?` using buffer source
		cmp.setup.cmdline({ '/', '?' }, {
			mapping = cmp.mapping.preset.cmdline(),
			sources = {
				{ name = 'buffer' },
			},
		})

		-- Enable completion in ':' using path and cmdline sources
		cmp.setup.cmdline(':', {
			mapping = cmp.mapping.preset.cmdline(),
			sources = cmp.config.sources({
				{ name = 'path' },
			}, {
					{ name = 'cmdline' },
				}),
		})

		-- Set up multiple LSP servers using a basic for loop
		local lspconfig = require('lspconfig')
		local capabilities = require('cmp_nvim_lsp').default_capabilities()

		local globals = require("globals")
		local servers = globals.lsp_servers

		for i = 1, #servers do
			local server = servers[i]
			lspconfig[server].setup({
				capabilities = capabilities,
			})
		end
	end,
}

