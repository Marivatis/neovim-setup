-- Leader key. Used to create custom keymaps
-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Add lazy.nvim initializator with path "nvim/config/lazy.lua"
require("config.lazy")

-- Add nvim-lspconfig initializator with path "nvim/config/lsp.lua"
require("config.lsp")

-- Basic nvim configuration
vim.opt.number = true         -- Line numbers
vim.opt.relativenumber = true -- Relative line numbers
vim.opt.expandtab = true      -- Use spaces instead of tabs
vim.opt.shiftwidth = 4        -- Indent size = 4 spaces
vim.opt.tabstop = 4           -- Tab character width = 4
vim.opt.smartindent = true    -- Smart auto-indentation
vim.opt.wrap = false          -- Do not wrap long lines
vim.opt.ignorecase = true     -- Case-insensitive search...
vim.opt.smartcase = true      -- ...but case-sensitive if uppercase is used
vim.opt.termguicolors = true  -- Enable 24-bit RGB colors

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
