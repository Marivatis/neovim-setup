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
vim.opt.number = true             -- Line numbers
vim.opt.relativenumber = true     -- Relative line numbers
vim.opt.expandtab = true          -- Use spaces instead of tabs
vim.opt.shiftwidth = 4            -- Indent size = 4 spaces
vim.opt.tabstop = 4               -- Tab character width = 4
vim.opt.smartindent = true        -- Smart auto-indentation
vim.opt.wrap = false              -- Do not wrap long lines
vim.opt.ignorecase = true         -- Case-insensitive search...
vim.opt.smartcase = true          -- ...but case-sensitive if uppercase is used
vim.opt.termguicolors = true      -- Enable 24-bit RGB colors
vim.opt.clipboard = "unnamedplus" -- sync with system clipboard

-- Lazy pluggins configuration
vim.cmd([[colorscheme everforest]])

-- Custom keymaps
vim.keymap.set("n", "<leader>w", ":w<CR>") -- Space+w = зберегти
vim.keymap.set("n", "<leader>q", ":q<CR>") -- Space+q = вийти
