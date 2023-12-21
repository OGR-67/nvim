-- [[ Basic Keymaps ]]

-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- File browser
vim.keymap.set("n", "<leader>fb", ":NvimTreeToggle<CR>", { desc = "[NvimTree]: Open [B]rowser" })
vim.cmd([[
  autocmd BufEnter * if (winnr("$") == 1 && exists("b:loaded_nvim_tree") && b:loaded_nvim_tree) | NvimTreeClose | endif
]])

-- Resource buffer
vim.keymap.set("n", "<leader>fr", ":so ~/.config/nvim/init.lua<CR>", { desc = "Re-source buffer" })

-- Format document
-- vim.keymap.set("n", "<leader>ff", ":Format<CR>", { desc = "Format document" })
vim.keymap.set("n", "<leader>ff", "<Plug>(prettier-format)", { desc = "Format document" })

-- Search snippets
vim.keymap.set("n", "<leader>fs", ":Telescope luasnip<CR>", { silent = true, desc = "find a snippet" })

-- Split view
vim.api.nvim_set_keymap('n', '<C-w>+', ':horizontal resize +5<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-w>-', ':horizontal resize -5<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-w>>', ':vertical resize +5<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-w><', ':vertical resize -5<CR>', { noremap = true, silent = true })

-- Scroll, move and search -> center cursor
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")
vim.keymap.set("n", "j", "jzz")
vim.keymap.set("n", "k", "kzz")
vim.keymap.set("n", "l", "lzz")
vim.keymap.set("n", "h", "hzz")
vim.keymap.set("n", "G", "Gzz")
vim.keymap.set("v", "j", "jzz")
vim.keymap.set("v", "k", "kzz")
vim.keymap.set("v", "l", "lzz")
vim.keymap.set("v", "h", "hzz")
vim.keymap.set("v", "G", "Gzz")
vim.keymap.set("c", "<CR>", "<CR>zz")

-- ESC
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("t", "jk", "<C-\\><C-n>")

-- Invisible chars
vim.keymap.set("n", "<leader>is", ":set list<CR>", { desc = "[Invisible chars]: [S]how" })
vim.keymap.set("n", "<leader>ih", ":set nolist<CR>", { desc = "[Invisible chars]: [H]ide" })

-- Terminal
vim.keymap.set("n", "<leader>tn", ":terminal<CR>", { desc = "[Terminal]: New [T]erminal" })
vim.keymap.set("n", "<leader>tv", ":rightbelow vsplit term://bash | vertical resize 60<CR>a",
  { desc = "[Terminal]: New Terminal in [V]ertical split" })
vim.keymap.set("n", "<leader>th", ":rightbelow split term://bash | resize 10<CR>a",
  { desc = "[Terminal]: New Terminal in [H]orizontal split" })

-- Harpoon
vim.api.nvim_set_keymap("n", "<leader>hm", ":lua require('harpoon.mark').add_file()<CR>",
  { noremap = true, silent = true, desc = "Mark file" })
vim.api.nvim_set_keymap("n", "<leader>ht", ':Telescope harpoon marks<CR>',
  { noremap = true, silent = true, desc = "Toggle menu" })
vim.api.nvim_set_keymap('n', '<leader>hf', ":lua require('harpoon.ui').nav_next()<CR>",
  { noremap = true, silent = true, desc = "Next" })
vim.api.nvim_set_keymap('n', '<leader>hd', ":lua require('harpoon.ui').nav_prev()<CR>",
  { noremap = true, silent = true, desc = "Previous" })
vim.api.nvim_set_keymap('n', '<leader>h1', ":lua require('harpoon.term').gotoTerminal(1)<CR>",
  { noremap = true, silent = true, desc = "Go to terminal 1" })
vim.api.nvim_set_keymap('n', '<leader>h2', ":lua require('harpoon.term').gotoTerminal(2)<CR>",
  { noremap = true, silent = true, desc = "Go to terminal 2" })
vim.api.nvim_set_keymap('n', '<leader>h3', ":lua require('harpoon.term').gotoTerminal(3)<CR>",
  { noremap = true, silent = true, desc = "Go to terminal 3" })
