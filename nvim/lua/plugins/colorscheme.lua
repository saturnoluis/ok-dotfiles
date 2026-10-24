-- ===================================================================================
-- Plugin: moonfly
-- About:  Moonfly colorscheme
-- Source: https://github.com/bluz71/vim-moonfly-colors
-- ===================================================================================

return {
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = false,
    priority = 1000,
    config = function(plugin)
      vim.cmd([[colorscheme moonfly]])
    end
  }
}
