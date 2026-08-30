-- ===================================================================================
-- Plugin: nvim-treesitter
-- About:  Simple and easy way to use the interface for tree-sitter in Neovim
-- Source: https://github.com/nvim-treesitter/nvim-treesitter
-- ===================================================================================

return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
        local parsers = {
            "bash",
            "c",
            "cpp",
            "css",
            "dockerfile",
            "html",
            "javascript",
            "jsdoc",
            "json",
            "lua",
            "markdown",
            "python",
            "scss",
            "svelte",
            "typescript",
            "vim",
            "vue",
            "yaml",
        }

        -- Install parsers
        require("nvim-treesitter").install(parsers)

        -- Enable features for installed filetypes
        vim.api.nvim_create_autocmd("FileType", {
            pattern = parsers,
            callback = function()
                vim.treesitter.start()
            end,
        })
    end,
}
