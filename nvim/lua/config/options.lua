-- ===================================================================================
-- Custom NeoVim options
--
-- Note: You can use `:help` to learn more about each of these options.
-- For example: `:help autoindent`
-- ===================================================================================

-- UI Colorscheme
vim.cmd.colorscheme("melange")

-- Options
vim.opt.autochdir        = false            -- Disable auto directory change
vim.opt.autoindent       = true             -- Enable auto-indenting
vim.opt.autoread         = true             -- Reload files changed outside
vim.opt.autowrite        = false            -- Don't auto-save on buffer switch
vim.opt.backup           = false            -- Disable backup files
vim.opt.clipboard        = "unnamedplus"    -- Use system clipboard
vim.opt.colorcolumn      = "86"             -- Highlight column 86
vim.opt.cursorline       = true             -- Highlight current line
vim.opt.errorbells       = false            -- Disable error sounds
vim.opt.expandtab        = false            -- Use tabs, not spaces
vim.opt.ignorecase       = true             -- Ignore case in search
vim.opt.list             = true             -- Show whitespace characters
vim.opt.number           = true             -- Show line numbers
vim.opt.relativenumber   = true             -- Show relative line numbers
vim.opt.scrolloff        = 10               -- Keep 10 lines around cursor
vim.opt.selection        = "inclusive"      -- Use inclusive selection
vim.opt.shiftwidth       = 4                -- Indent size
vim.opt.showmatch        = true             -- Highlight matching brackets
vim.opt.sidescrolloff    = 8                -- Keep 8 columns around cursor
vim.opt.smartcase        = true             -- Case-sensitive if uppercase used
vim.opt.smartindent      = true             -- Smarter indenting
vim.opt.softtabstop      = 4                -- Tab feels like 4 spaces
vim.opt.spelllang        = { "en", "es" }   -- Spellcheck in English and Spanish
vim.opt.splitbelow       = true             -- New splits appear below
vim.opt.splitright       = true             -- New splits appear to the right
vim.opt.swapfile         = false            -- Disable swap files
vim.opt.tabstop          = 4                -- A tab is 4 spaces wide
vim.opt.termguicolors    = true             -- Enable full color support
vim.opt.textwidth        = 86               -- Wrap lines at 86 characters
vim.opt.undofile         = true             -- Persistent undo
vim.opt.wrap             = false            -- Disable line wrapping
vim.opt.writebackup      = false            -- Don't backup before saving

--------------------------------------------------------------------------------------
-- Note: I know it's not considered good practice to align spacing like this,
-- but I want this to be fun. I think it looks cool, so I don't mind the extra
-- "maintenance cost".
--                 .                                            .
--      *   .                  .              .        .   *          .
--   .         .                     .       .           .      .        .
--         o                             .                   .
--          .              .                  .           .
--           0     .
--                  .          .                 ,                ,    ,
--  .          \          .                         .
--       .      \   ,
--    .          o     .                 .                   .            .
--      .         \                 ,             .                .
--                #\##\#      .                              .        .
--              #  #O##\###                .                        .
--    .        #*#  #\##\###                       .                     ,
--         .   ##*#  #\##\##               .                     .
--       .      ##*#  #o##\#         .                             ,       .
--           .     *#  #\#     .                    .             .          ,
--                       \          .                         .
-- ____^/\___^--____/\____O______________/\/\---/\___________---______________
--    /\^   ^  ^    ^                  ^^ ^  '\ ^          ^       ---
--          --           -            --  -      -         ---  __       ^
--    --  __                      ___--  ^  ^                         --  __
