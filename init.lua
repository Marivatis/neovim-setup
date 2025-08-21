-- Leader key. Used to create custom keymaps
-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Add default nvim settings and custom keymaps
require("settings")
require("keymaps")

-- Add lazy.nvim initializator
require("config.lazy")


-- Add nvim-lspconfig initializator with path "nvim/config/lsp.lua"
require("config.lsp")

-- Lazy pluggins configuration
vim.cmd([[colorscheme everforest]])

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
