require("core.keymaps")
require("core.lazy")
require("core.options")

local globals = require("globals")

vim.lsp.enable(globals.lsp_servers)
