vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>rn", ":IncRename ")

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to split left
map('n', '<C-S-Left>', '<C-w>h', opts)

-- Move to split down
map('n', '<C-S-Down>', '<C-w>j', opts)

-- Move to split up
map('n', '<C-S-Up>', '<C-w>k', opts)

-- Move to split right
map('n', '<C-S-Right>', '<C-w>l', opts)
