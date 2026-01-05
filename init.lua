require("hugo.settings")
require("hugo.lazy")

-- Automatically enable treesitter highlighting for any buffer that has a parser
vim.api.nvim_create_autocmd("FileType", {
  callback = function(ev)
    local ok = pcall(vim.treesitter.start, ev.buf)
    if not ok then
      -- silently ignore missing/broken parsers
    end
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  callback = function(ev)
    pcall(function()
      vim.wo[ev.buf].foldmethod = "expr"
      vim.wo[ev.buf].foldexpr = "v:lua.vim.treesitter.foldexpr()"
    end)
  end,
})


vim.api.nvim_create_autocmd("FileType", {
  callback = function(ev)
    pcall(function()
      vim.bo[ev.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end)
  end,
})
