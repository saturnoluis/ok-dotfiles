-- Use system clipboard
vim.opt.clipboard = "unnamedplus"
-- Highlight column after textwidth
vim.opt.colorcolumn = "+1"
-- Highlight the current line
vim.opt.cursorline = false
-- Use tabs instead of spaces
vim.opt.expandtab = false
-- Show special characters
vim.opt.list = true
-- Show line numbers
vim.opt.number = true
-- Show relative line numbers
vim.opt.relativenumber = true
-- Indentation size
vim.opt.shiftwidth = 4
-- Smart auto-indentation
vim.opt.smartindent = true
-- Tab key inserts 4 spaces
vim.opt.softtabstop = 4
-- Tab character is 4 spaces
vim.opt.tabstop = 4
-- Enable true colors
vim.opt.termguicolors = true
-- Set max line width to 80
vim.opt.textwidth = 80
-- Disable line wrapping
vim.opt.wrap = false

vim.cmd.colorscheme "onedark"
