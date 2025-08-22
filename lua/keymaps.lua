-- This file meant to store basic nvim custom keymaps

vim.keymap.set("n", "<Leader>p", '"+p')       -- Paste from the system register
vim.keymap.set("n", "<Leader>P", 'o<Esc>"+P') -- Paste the from system register below on a new line
vim.keymap.set("v", "<Leader>y", '"+y')       -- Copy to the system register
vim.keymap.set("n", "<Leader>Y", '"+yy')      -- Copy the line to the system register

vim.keymap.set("n", "<Leader>d", vim.diagnostic.open_float, { silent = true })
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { silent = true })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { silent = true })
vim.keymap.set("n", "<Leader>ca", vim.lsp.buf.code_action, { silent = true })
