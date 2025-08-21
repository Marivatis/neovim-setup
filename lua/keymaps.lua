-- This file meant to store basic nvim custom keymaps

vim.keymap.set("n", "<Leader>p", "\"+p")       -- Paste from the system register
vim.keymap.set("n", "<Leader>P", "o<Esc>\"+P") -- Paste the from system register below on a new line
vim.keymap.set("v", "<Leader>y", "\"+y")       -- Copy to the system register
vim.keymap.set("n", "<Leader>Y", "\"+yy")      -- Copy the line to the system register
