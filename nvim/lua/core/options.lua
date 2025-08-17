-- UI Colorscheme
vim.cmd.colorscheme "kanagawa"

-- UI & Visuals
vim.opt.colorcolumn = "+1"        -- Highlight column after textwidth
vim.opt.cursorline = false        -- Highlight the current line
vim.opt.list = true               -- Show special characters
vim.opt.number = true             -- Show line numbers
vim.opt.relativenumber = true     -- Show relative line numbers
vim.opt.termguicolors = true      -- Enable true colors
vim.opt.wrap = false              -- Disable line wrapping

-- Indentation & Tabs
vim.opt.expandtab = false         -- Use tabs instead of spaces
vim.opt.shiftwidth = 4            -- Indentation size
vim.opt.smartindent = true        -- Smart auto-indentation
vim.opt.softtabstop = 4           -- Tab key inserts 4 spaces
vim.opt.tabstop = 4               -- Tab character is 4 spaces

-- Text & Editing
vim.opt.clipboard = "unnamedplus" -- Use system clipboard
vim.opt.swapfile = false          -- Disable swap files
vim.opt.textwidth = 80            -- Set max line width to 80
vim.opt.undofile = true           -- Persistent undo history
