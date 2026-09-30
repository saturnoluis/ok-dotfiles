-- ===================================================================================
-- Custom NeoVim Keymaps
--
-- ===================================================================================

-- Leader Key Configuration
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Keymap Options
local opts = { noremap = true, silent = true }

-- Set Space as Nop in normal mode to prevent accidental commands
vim.keymap.set("n", "<Space>", "<Nop>", opts)

-- Navigation
vim.keymap.set("n", "<leader>h", "<Home>",
	{ desc = "Move cursor to start of current line" }, opts)

vim.keymap.set("n", "<leader>l", "<End>",
	{ desc = "Move cursor to end of current line" }, opts)

vim.keymap.set("v", "<leader>h", "<Home>",
	{ desc = "Select to start of current line" }, opts)

vim.keymap.set("v", "<leader>l", "<End>",
	{ desc = "Select to end of current line" }, opts)

-- File Explorer
vim.keymap.set("n", "<leader>E", ":Ex<CR>",
	{ desc = "Open default file explorer" }, opts)

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

-- Copy selection to system clipboard in Visual mode
vim.keymap.set("v", "y", '"+y',
    { desc = "Yank selection to system clipboard" }, opts)

-- Search selected text with Telescope live_grep (auto-run)
vim.keymap.set("v", "<leader>ss", function()
	local saved_reg = vim.fn.getreg('"')
	local saved_regtype = vim.fn.getregtype('"')
	vim.cmd('normal! "vy')
	local selected = vim.fn.getreg('"')
	vim.fn.setreg('"', saved_reg, saved_regtype)
	require("telescope.builtin").live_grep({
		default_text = selected,
		initial_mode = "normal",
	})
end, { desc = "Search selected text" }, opts)
