-- Leader key. Used to create custom keymaps
-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Add nvim default settings
require("default")

-- Add lazy.nvim initializator
require("config.lazy")

-- Add nvim-lspconfig initializator with path "nvim/config/lsp.lua"
require("config.lsp")


-- Lazy pluggins configuration
vim.cmd([[colorscheme everforest]])

-- Custom keymaps
vim.keymap.set("n", "<Leader>p", "\"+p")       -- Paste from the system register
vim.keymap.set("n", "<Leader>P", "o<Esc>\"+P") -- Paste the from system register below on a new line
vim.keymap.set("v", "<Leader>y", "\"+y")       -- Copy to the system register
vim.keymap.set("n", "<Leader>Y", "\"+yy")      -- Copy the line to the system register

-- Plugin keymaps
-- Neotree
vim.keymap.set("n", "<Leader>e", ":Neotree<CR>", { noremap = true, silent = true })                -- Go to neo-tree
vim.keymap.set("n", "<Leader>E", ":Neotree toggle<CR>", { noremap = true, silent = true })         -- Open/Close neo-tree
-- Gitsigns
vim.keymap.set("n", "]c", ":Gitsigns nav_hunk next<CR>", { noremap = true, silent = true })        -- Navigate to next hunk
vim.keymap.set("n", "[c", ":Gitsigns nav_hunk prev<CR>", { noremap = true, silent = true })        -- Navigate to previous hunk
vim.keymap.set("n", "<Leader>hp", ":Gitsigns preview_hunk<CR>", { noremap = true, silent = true }) -- Preview hunk
vim.keymap.set("n", "<Leader>hs", ":Gitsigns stage_hunk<CR>", { noremap = true, silent = true })   -- Stage hunk
vim.keymap.set("n", "<Leader>hr", ":Gitsigns reset_hunk<CR>", { noremap = true, silent = true })   -- Reset hunk
