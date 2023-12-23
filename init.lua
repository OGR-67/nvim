--`:help lua-guide`

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require('lazy_config')

require('setting_options')

require('pluggins_settings.format_on_save')
require('pluggins_settings.telescope')
require('pluggins_settings.treesitter')
require('pluggins_settings.lsp')
require('pluggins_settings.which_key')
require('pluggins_settings.nvim_tree')
require('pluggins_settings.nvim_cmp')
require('pluggins_settings.markdown_preview')

require('keymaps')

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
