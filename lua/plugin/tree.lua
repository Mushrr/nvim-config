-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

local tree_api = require('nvim-tree.api')



vim.keymap.set('n', '<leader>tt', function() tree_api.tree.open() end)
vim.keymap.set('n', '<leader>tc', function() tree_api.tree.close() end)
