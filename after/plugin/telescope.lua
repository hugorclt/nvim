local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>z', builtin.find_files, {})
vim.keymap.set('n', '<leader>m', builtin.git_files, {})
