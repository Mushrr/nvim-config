local lsp = require('lsp-zero').preset({
    name = 'minimal',
    set_lsp_keymaps = true,
    manage_nvim_cmp = true,
    suggest_lsp_servers = false,
})

lsp.ensure_installed({
    'tsserver',
    'eslint',
    'rust_analyzer',
    'pyright'
})
-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()
lsp.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }
    vim.keymap.set('n', '<leader>gd', function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set('n', '<leader>gh', function() vim.lsp.buf.hover() end, opts)
    
    vim.keymap.set('n', '<leader>vd', function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set('n', '[d', function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set('n', ']d', function() vim.diagnostic.goto_prev() end, opts)
end)

lsp.setup()
-- diagnostic
vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    update_in_insert = true,
    underline = true,
    severity_sort = false,
    float = true,
})



