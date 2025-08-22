-- Basic nvim settings file

-- Clipboard behavior. Set to "unnamed" or "unnamedplus" to use the system clipboard
vim.opt.clipboard = ""

-- Tab and indentation settings
vim.opt.shiftwidth = 3
vim.opt.tabstop = 3

-- Line numbering
vim.opt.number = true
vim.opt.relativenumber = true

-- Indentation behavior
vim.opt.smartindent = true -- Smart auto-indentation
vim.opt.expandtab = true -- Use spaces instead of tabs

-- Search behavior
vim.opt.hlsearch = false -- Do not highlight all matches
vim.opt.ignorecase = true -- Case-insensitive search
vim.opt.smartcase = true -- Case-sensitive if uppercase letters are used

-- Visual settings
vim.opt.cursorline = true -- Highlight the current line
vim.opt.colorcolumn = "120" -- Highlight the 120th column
vim.opt.scrolloff = 5 -- Keep 5 lines visible above/below the cursor
vim.opt.sidescrolloff = 5 -- Keep 5 columns visible left/right of the cursor

-- Undo/Redo history settings
vim.opt.undofile = true -- Save undo history between sessions
vim.opt.backup = false -- Disable unnecessary backup files
vim.opt.writebackup = false -- Disable temporary write-backups
