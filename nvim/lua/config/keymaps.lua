-- Set Space key as the leader key
vim.g.mapleader = " "

-- Default options for keymaps
local opts = { noremap = true, silent = true }

-- Set Space key as Nop
vim.keymap.set("", "<Space>", "<Nop>", opts)

-- Move cursor in NORMAL mode
vim.keymap.set("n", "<leader>h", "<home>",
    { desc = "Move cursor to the start of current line." }, opts
)
vim.keymap.set("n", "<leader>l", "<End>",
    { desc = "Move cursor to the end of current line." }, opts
)

-- Select text in VISUAL mode
vim.keymap.set("v", "<leader>h", "<Home>",
    { desc = "Select to the start of current line." }, opts
)
vim.keymap.set("v", "<leader>l", "<End>",
    { desc = "Select to the end of current line." }, opts
)

-- Split current line in INSERT mode
vim.keymap.set("i", "<C-k>", "<CR><Esc>O",
    { desc = "Split current line and move cursor in between." }, opts
)

-- Change buffers
vim.keymap.set("n", "<leader>j", ":bprevious<CR>",
    { desc = "Show previous buffer." }, opts
)
vim.keymap.set("n", "<leader>k", ":bnext<CR>",
    { desc = "Show next buffer." }, opts
)

-- Move lines of code
vim.keymap.set("n", "<A-j>", ":MoveLine(1)<CR>",
    { desc = "Move line down in normal mode." }, opts
)
vim.keymap.set("n", "<A-k>", ":MoveLine(-1)<CR>",
    { desc = "Move line up in normal mode." }, opts
)
vim.keymap.set("v", "<A-j>", ":MoveBlock(1)<CR>",
    { desc = "Move block down in visual mode." }, opts
)
vim.keymap.set("v", "<A-k>", ":MoveBlock(-1)<CR>",
    { desc = "Move block up in visual mode." }, opts
)

-- LSP
vim.keymap.set("n", "<leader>fd", vim.lsp.buf.definition,
    { desc = "Find symbol definition." }, opts
)
vim.keymap.set("n", "<leader>fi", vim.lsp.buf.implementation,
    { desc = "Find symbol implementation." }, opts
)
vim.keymap.set("n", "<leader>fr", vim.lsp.buf.references,
    { desc = "Find symbol references." }, opts
)
vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename,
	{ desc = "Rename symbol." }, opts
)
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action,
	{ desc = "Show code actions." }, opts
)
vim.keymap.set("n", "<leader>cd", vim.lsp.buf.hover,
	{ desc = "Show code documentation." }, opts
)


-- Neotree
vim.keymap.set("n", "<leader>p", ":Neotree reveal<CR>",
    { desc = "Show current buffer in file explorer" }, opts
)
vim.keymap.set("n", "<leader>P", ":Neotree toggle<CR>",
    { desc = "Toggle the file explorer" }, opts
)
vim.keymap.set("n", "<leader>b", ":Neotree buffers<CR>",
    { desc = "Show all opened buffers" }, opts
)

-- Telescope
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>",
	{ desc = "Find files by name." }, opts
)
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>",
	{ desc = "Find files using grep." }, opts
)
vim.keymap.set("n", "<leader>fo", ":Telescope oldfiles<CR>",
	{ desc = "Find recently opened files." }, opts
)
