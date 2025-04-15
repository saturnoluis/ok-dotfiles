-- gruvbox is heavily inspired by badwolf, jellybeans and solarized. Designed as
-- a bright theme with pastel 'retro groove' colors and light/dark mode switching
-- https://github.com/morhetz/gruvbox
return {
	'morhetz/gruvbox',
	priority = 1000,
	config = function()
		vim.g.gruvbox_contrast_dark = "hard"
		vim.g.gruvbox_contrast_light = "hard"
	end,
}
