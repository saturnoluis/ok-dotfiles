-- ===================================================================================
-- LSP configs
--
-- Note: Provided by neovim/nvim-config (in plugins)
-- Check this list to enable new ones, the names should match:
-- https://github.com/neovim/nvim-lspconfig/tree/master/lsp
--
-- The LSP servers should then be install using :Mason
-- The command used by the LSP config matches the server found in Mason.
-- ===================================================================================

-- Lua lang
-- Server: lua-language-server
-- https://github.com/neovim/nvim-lspconfig/blob/master/lsp/lua_ls.lua
vim.lsp.enable("lua_ls");

-- Python
-- Server: python-lsp-server
-- https://github.com/neovim/nvim-lspconfig/blob/master/lsp/pylsp.lua
vim.lsp.enable("pylsp");
