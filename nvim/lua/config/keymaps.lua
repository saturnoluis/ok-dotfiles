-- ===================================================================================
-- Custom NeoVim Keymaps
--
-- ===================================================================================

-- Leader Key Configuration
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Set Space as Nop in normal mode to prevent accidental commands
vim.keymap.set("n", "<Space>", "<Nop>", { noremap = true, silent = true })

-- Keymap Options
local opts = { noremap = true, silent = true }

-- Core Editor Keybindings (No plugins required)
--------------------------------------------------------------------------------------

-- Navigation
vim.keymap.set("n", "<leader>h", "<Home>",
	{ desc = "Move cursor to start of current line" }, opts)

vim.keymap.set("n", "<leader>l", "<End>",
	{ desc = "Move cursor to end of current line" }, opts)

vim.keymap.set("v", "<leader>h", "<Home>",
	{ desc = "Select to start of current line" }, opts)

vim.keymap.set("v", "<leader>l", "<End>",
	{ desc = "Select to end of current line" }, opts)

-- Buffer Management
vim.keymap.set("n", "<leader>j", ":bprevious<CR>",
	{ desc = "Switch to previous buffer" }, opts)

vim.keymap.set("n", "<leader>k", ":bnext<CR>",
	{ desc = "Switch to next buffer" }, opts)

-- Window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h",
	{ desc = "Move to left window" }, opts)

vim.keymap.set("n", "<C-j>", "<C-w>j",
	{ desc = "Move to bottom window" }, opts)

vim.keymap.set("n", "<C-k>", "<C-w>k",
	{ desc = "Move to top window" }, opts)

vim.keymap.set("n", "<C-l>", "<C-w>l",
	{ desc = "Move to right window" }, opts)

-- Text Manipulation
vim.keymap.set("n", "<leader>g", "vapgw",
	{ desc = "Reformat current paragraph to text width" }, opts)

vim.keymap.set("i", "<C-k>", "<CR><Esc>O",
	{ desc = "Split current line and insert new line above" }, opts)

-- UI Customization
vim.keymap.set("n", "<leader>td", ":set background=dark<CR>",
	{ desc = "Set dark background theme" }, opts)

vim.keymap.set("n", "<leader>tl", ":set background=light<CR>",
	{ desc = "Set light background theme" }, opts)

-- Plugin Keybindings
--------------------------------------------------------------------------------------

-- Line Movement
vim.keymap.set("n", "<A-j>", ":MoveLine(1)<CR>",
	{ desc = "Move current line down" }, opts)

vim.keymap.set("n", "<A-k>", ":MoveLine(-1)<CR>",
	{ desc = "Move current line up" }, opts)

vim.keymap.set("v", "<A-j>", ":MoveBlock(1)<CR>",
	{ desc = "Move selected block down" }, opts)

vim.keymap.set("v", "<A-k>", ":MoveBlock(-1)<CR>",
	{ desc = "Move selected block up" }, opts)

--------------------------------------------------------------------------------------

-- LSP (Language Server Protocol)
vim.keymap.set("n", "<leader>fd", vim.lsp.buf.definition,
	{ desc = "Go to definition" }, opts)

vim.keymap.set("n", "<leader>fi", vim.lsp.buf.implementation,
	{ desc = "Go to implementation" }, opts)

vim.keymap.set("n", "<leader>fr", vim.lsp.buf.references,
	{ desc = "Show references" }, opts)

vim.keymap.set("n", "<leader>fs", "<cmd>Telescope lsp_document_symbols<CR>",
	{ desc = "Search document symbols" }, opts)

vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename,
	{ desc = "Rename symbol" }, opts)

vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action,
	{ desc = "Show code actions" }, opts)

vim.keymap.set("n", "<leader>cd", vim.lsp.buf.hover,
	{ desc = "Show documentation" }, opts)

--------------------------------------------------------------------------------------

-- Telescope (Fuzzy Finder)
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>",
	{ desc = "Find files" }, opts)

vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>",
	{ desc = "Live grep in files" }, opts)

vim.keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>",
	{ desc = "Find recently opened files" }, opts)


