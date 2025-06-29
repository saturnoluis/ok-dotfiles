-- nvim-cmp: A completion engine plugin for Neovim written in Lua.
-- GitHub: https://github.com/hrsh7th/nvim-cmp
-- Intro video: https://www.youtube.com/watch?v=rawagL94jko

return {
	'hrsh7th/nvim-cmp',
	dependencies = {
		'hrsh7th/cmp-buffer',      -- Source: open buffers
		'hrsh7th/cmp-cmdline',     -- Source: Vim command line
		'hrsh7th/cmp-git',         -- Source: git-related completion
		'hrsh7th/cmp-nvim-lsp',    -- Source: built-in LSP client
		'hrsh7th/cmp-path',        -- Source: filesystem paths
		'hrsh7th/cmp-vsnip',       -- Source: vsnip snippet completion
		'hrsh7th/vim-vsnip',       -- Snippet engine (required by cmp-vsnip)
	},
	event = 'VeryLazy',          -- Lazy load on demand to improve startup time
	main = 'config.plugins.cmp', -- Optional entry point for Lazy.nvim
	config = function()
		local cmp = require('cmp')

		cmp.setup({
			-- Configure snippet expansion using vsnip
			snippet = {
				expand = function(args)
					vim.fn["vsnip#anonymous"](args.body)
				end,
			},

			-- Key mappings for the completion menu
			mapping = cmp.mapping.preset.insert({
				['<C-b>'] = cmp.mapping.scroll_docs(-4),   -- Scroll docs up
				['<C-n>'] = cmp.mapping.scroll_docs(4),    -- Scroll docs down
				['<C-Space>'] = cmp.mapping.complete(),    -- Manually trigger completion
				['<C-e>'] = cmp.mapping.abort(),           -- Abort the completion menu

				-- Pressing <Tab> will:
				-- - Confirm the selected item if one is manually selected
				-- - Otherwise, select and confirm the first item (top of list)
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

			-- Completion sources for insert mode
			sources = cmp.config.sources({
				{ name = 'nvim_lsp' }, -- From language server
				{ name = 'vsnip' },    -- From snippets
			},
				{
					{ name = 'buffer' },   -- From current buffers
					{ name = 'path' },     -- From filesystem paths
				}),
		})

		-- Filetype-specific source configuration for git commit messages
		cmp.setup.filetype('gitcommit', {
			sources = cmp.config.sources({
				{ name = 'git' },
			},
				{
					{ name = 'buffer' },
				}),
		})

		-- Completion in search mode (`/` and `?`) from buffer contents
		cmp.setup.cmdline({ '/', '?' }, {
			mapping = cmp.mapping.preset.cmdline(),
			sources = {
				{ name = 'buffer' },
			},
		})

		-- Completion in command mode (`:`) from path and command-line history
		cmp.setup.cmdline(':', {
			mapping = cmp.mapping.preset.cmdline(),
			sources = cmp.config.sources({
				{ name = 'path' },
			},
				{
					{ name = 'cmdline' },
				}),
		})
	end,
}
