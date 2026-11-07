-- ===================================================================================
-- Plugin: nvim-cmp
-- About:  Completion engine (auto-popup menu, Tab to accept)
-- Source: https://github.com/hrsh7th/nvim-cmp
-- ===================================================================================

return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-omni",
		"hrsh7th/cmp-buffer",
	},
	config = function()
		local cmp = require("cmp")

		-- Filetypes where word completion is disabled.
		-- Add more by filetype name (e.g. svelte) to turn it off there too.
		local disabled_buffer = { markdown = true, text = true }

		cmp.setup({
			mapping = cmp.mapping.preset.insert({
				["<CR>"] = cmp.mapping.confirm({ select = true }),
				["<Tab>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.confirm({ select = true })
					else
						fallback()
					end
				end, { "i", "s" }),
				["<Up>"] = cmp.mapping.select_prev_item(),
				["<Down>"] = cmp.mapping.select_next_item(),
			}),
			sources = cmp.config.sources({
				{ name = "omni" },
				{
					name = "buffer",
					enabled = function()
						return not disabled_buffer[vim.bo.filetype]
					end,
					option = {
						get_bufnrs = function()
							local bufs = {}
							for _, buf in ipairs(vim.api.nvim_list_bufs()) do
								if vim.api.nvim_buf_is_valid(buf)
									and vim.bo[buf].buftype == ""
									and vim.api.nvim_buf_get_name(buf) ~= "" then
									table.insert(bufs, buf)
								end
							end
							return bufs
						end,
					},
				},
			}),
		})
	end,
}
