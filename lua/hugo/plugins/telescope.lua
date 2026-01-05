return {
  'nvim-telescope/telescope.nvim',
  event = "VimEnter",
  opts = {
    defaults = {
      layout_strategy = 'flex',
      layout_config = { width = 0.95 },
      path_display = { 'smart' },
      file_ignore_patterns = { ".git/", "node_modules/", "MLX42/", "dist/" },
    },
  },
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { "<leader>f", "<cmd>Telescope find_files<cr>" },
    { "<leader>g", "<cmd>Telescope live_grep<cr>" },
    { "<leader>b", "<cmd>Telescope buffers<cr>" },
  },
}
