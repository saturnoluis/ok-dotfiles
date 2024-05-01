-- A completion engine plugin for neovim written in Lua.
-- https://github.com/hrsh7th/nvim-cmp
-- https://www.youtube.com/watch?v=rawagL94jko
return {
	'hrsh7th/nvim-cmp',
	dependencies = {
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-cmdline',
		'hrsh7th/cmp-git',
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-path',
		'hrsh7th/cmp-vsnip',
		'hrsh7th/vim-vsnip',
	},
	event = 'VeryLazy',
	main = 'config.plugins.cmp',
	config = function ()
		local cmp = require('cmp')

		cmp.setup({
			snippet = {
				expand = function(args)
					vim.fn["vsnip#anonymous"](args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				['<C-b>'] = cmp.mapping.scroll_docs(-4),
				['<C-n>'] = cmp.mapping.scroll_docs(4),
				['<C-Space>'] = cmp.mapping.complete(),
				['<C-e>'] = cmp.mapping.abort(),
				['<Tab>'] = cmp.mapping.confirm({ select = true }),
			}),
			sources = cmp.config.sources({
				{ name = 'nvim_lsp' },
				{ name = 'vsnip' },
			}, {
				{ name = 'buffer' },
				{ name = "path" },
			}),
		})
		-- Set configuration for specific filetype.
		cmp.setup.filetype('gitcommit', {
			sources = cmp.config.sources(
				{{ name = 'git' }},
				{{ name = 'buffer' }}
			),
		})

		-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
		cmp.setup.cmdline({ '/', '?' }, {
			mapping = cmp.mapping.preset.cmdline(),
			sources = (
				{{ name = 'buffer' }}
			),
		})

		  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
		cmp.setup.cmdline(':', {
			mapping = cmp.mapping.preset.cmdline(),
			sources = cmp.config.sources(
				{{ name = 'path' }},
				{{ name = 'cmdline' }}
			),
		})
	end, -- config function
}
