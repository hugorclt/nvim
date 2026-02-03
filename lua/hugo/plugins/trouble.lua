return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    -- Options par défaut sympa
    mode = "quickfix", -- Se focalise sur la liste de build
  },
  keys = {
    { "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics (LSP)" },
    { "<leader>xq", "<cmd>Trouble qflist toggle<cr>", desc = "Quickfix List (Build)" },
    { "]q", function()
      if require("trouble").is_open() then
        require("trouble").next({skip_groups = true, jump = true})
      else
        vim.cmd("cnext")
      end
    end, desc = "Next Error" },
  },
}
