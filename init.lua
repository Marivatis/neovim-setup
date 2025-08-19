-- Leader key. Used to create custom keymaps
vim.g.mapleader = " "

-- Basic configuration
vim.opt.number = true          -- Нумерація рядків
vim.opt.relativenumber = true  -- Відносна нумерація
vim.opt.expandtab = true       -- Пробіли замість табів
vim.opt.shiftwidth = 4         -- 4 пробіли при відступі
vim.opt.tabstop = 4            -- ширина таба
vim.opt.smartindent = true     -- авто-відступи
vim.opt.wrap = false           -- не переносити довгі рядки
vim.opt.ignorecase = true      -- пошук без урахування регістру…
vim.opt.smartcase = true       -- …але якщо є великі букви – враховувати
vim.opt.termguicolors = true   -- повна підтримка кольорів

-- Custom keymaps
vim.keymap.set("n", "<leader>w", ":w<CR>")  -- Space+w = зберегти
vim.keymap.set("n", "<leader>q", ":q<CR>")  -- Space+q = вийти

