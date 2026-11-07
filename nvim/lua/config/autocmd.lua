-- Force absolute and relative line numbers in netrw (:Ex)
vim.api.nvim_create_autocmd("FileType", {
    pattern = "netrw",
    callback = function()
        vim.opt_local.number = true
        vim.opt_local.relativenumber = true
    end,
})

-- HTML tag completion for JSX/TSX
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "javascriptreact", "typescriptreact" },
    callback = function()
        vim.bo.omnifunc = "emmet#completeTag"
    end,
})
