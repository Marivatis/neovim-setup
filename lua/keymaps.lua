-- This file meant to store basic nvim custom keymaps

vim.keymap.set("n", "<Leader>p", '"+p')
vim.keymap.set("n", "<Leader>pp", 'o<Esc>"+P')
vim.keymap.set("v", "<Leader>p", '"+p')
vim.keymap.set("v", "<Leader>pp", 'o<Esc>"+P')
vim.keymap.set("v", "<Leader>y", '"+y')
vim.keymap.set("n", "<Leader>yy", '"+yy')

vim.keymap.set("n", "<Leader>d", vim.diagnostic.open_float, { silent = true })
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { silent = true })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { silent = true })
vim.keymap.set("n", "<Leader>ca", vim.lsp.buf.code_action, { silent = true })
