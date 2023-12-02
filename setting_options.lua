-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!

-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- WSL2 clipboard
if vim.fn.system('uname -r'):find("microsoft") then
  vim.g.clipboard = {
    name = 'WslClipboard',
    copy = {
      ['+'] = 'clip.exe',
      ['*'] = 'clip.exe',
    },
    paste = {
      ['+'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring():gsub("\\r", ""))',
      ['*'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring():gsub("\\r", ""))',
    },
    cache_enabled = 0,
  }
end

-- Relative numbers
vim.o.relativenumber = true

-- Folding
vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'nvim_treesitter#foldexpr()'
vim.o.foldenable = false -- disable on startup

-- Indentation
require 'nvim-treesitter.configs'.setup({
  indent = {
    enable = true
  }
})
vim.opt_global.expandtab = true
vim.opt_local.shiftwidth = 4
vim.cmd([[
  autocmd FileType javascript setlocal shiftwidth=2
  autocmd FileType javascriptreact setlocal shiftwidth=2
  autocmd FileType html setlocal shiftwidth=2
  autocmd FileType typescript setlocal shiftwidth=2
  autocmd FileType typescriptreact setlocal shiftwidth=2
  " Ajoutez d'autres autocmd pour d'autres types de fichiers au besoin
]])

-- Invisible chars
vim.o.listchars = "tab:→\\ ,space:·,eol:↲"

-- 80 chars per line
vim.opt_local.colorcolumn = "81"
