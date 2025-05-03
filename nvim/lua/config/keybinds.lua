vim.g.mapleader = ","

-- LSP stuff
vim.keymap.set('n', '<leader>f', '<cmd>Files<cr>')
vim.keymap.set('n', '<leader>m', '<cmd>Rg<cr>')
vim.keymap.set('n', '<leader>conf', '<cmd>Files ~/.config<cr>')
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
vim.keymap.set('n', 'ge', vim.diagnostic.open_float, {})
