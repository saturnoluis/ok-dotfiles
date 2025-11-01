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

-- CSS
-- Server: css-lsp (vscode-css-language-server)
-- https://github.com/neovim/nvim-lspconfig/blob/master/lsp/cssls.lua
vim.lsp.enable("cssls");

-- HTML
-- Server: html-lsp (vscode-html-language-server)
-- https://github.com/neovim/nvim-lspconfig/blob/master/lsp/html.lua
vim.lsp.enable("html");

-- JavaScript
-- Server: eslint-lsp  (vscode-eslint-language-server)
-- https://github.com/neovim/nvim-lspconfig/blob/master/lsp/eslint.lua
vim.lsp.enable("eslint");

-- Lua lang
-- Server: lua-language-server
-- https://github.com/neovim/nvim-lspconfig/blob/master/lsp/lua_ls.lua
vim.lsp.enable("lua_ls");

-- Python
-- Server: python-lsp-server
-- https://github.com/neovim/nvim-lspconfig/blob/master/lsp/pylsp.lua
vim.lsp.enable("pylsp");
