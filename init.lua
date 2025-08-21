-- Leader key. Used to create custom keymaps
-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Add default nvim settings and custom keymaps
require("settings")
require("keymaps")

-- Add lazy.nvim
require("config.lazy")

-- Add lsp configuration
require("config.lsp.init")
