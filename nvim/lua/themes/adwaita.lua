-- Neovim colorscheme using Gnome Adwaita syntax
-- https://github.com/Mofiqul/adwaita.nvim
--
return {
	"Mofiqul/adwaita.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.g.adwaita_darker = true
        vim.g.adwaita_transparent = true
	end,
}
