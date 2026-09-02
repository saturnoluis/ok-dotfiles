-- ===================================================================================
-- Plugin: telescope
-- About:  Fuzzy finder for neovim
-- Source: https://github.com/nvim-telescope/telescope.nvim
-- ===================================================================================

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
    keys = {
        {
            "<leader>ff",
            "<cmd>Telescope find_files<CR>",
            desc = "Find files",
        },
        {
            "<leader>fg",
            "<cmd>Telescope live_grep<CR>",
            desc = "Live grep in files",
        },
        {
            "<leader>fo",
            "<cmd>Telescope oldfiles<CR>",
            desc = "Find recently opened files",
        },
    },
}
