-- adwaita: https://github.com/Mofiqul/adwaita.nvim
-- Neovim colorscheme using Gnome Adwaita syntax

return {
    "Mofiqul/adwaita.nvim",
    lazy = false,
    priority = 1000,

    config = function()
        vim.g.adwaita_darker = true
    end
}
